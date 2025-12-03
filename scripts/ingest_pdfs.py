import os
import textwrap
import psycopg2
import pdfplumber

PDF_DIR = "./pdfs"

COURSE_CODE = "CS360"
COURSE_NAME = "Fundamentals of Software Engineering"

DB_CONFIG = {
    "host": "localhost",
    "port": 5432,
    "dbname": "chatbot_cheatsheet_db",
    "user": "shahmen",
    "password": "helloworld",
}

MAX_CHARS_PER_CHUNK = 800

def get_connection():
    return psycopg2.connect(**DB_CONFIG)


def ensure_course(conn, code, name):
    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO courses (code, name)
            VALUES (%s, %s)
            ON CONFLICT (code) DO UPDATE SET name = EXCLUDED.name
            RETURNING id;
            """,
            (code, name),
        )
        course_id = cur.fetchone()[0]
    conn.commit()
    return course_id


def upsert_document(conn, course_id, title, file_path):
    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO documents (course_id, title, file_path)
            VALUES (%s, %s, %s)
            ON CONFLICT (course_id, title)
            DO UPDATE SET file_path = EXCLUDED.file_path
            RETURNING id;
            """,
            (course_id, title, file_path),
        )
        doc_id = cur.fetchone()[0]
    conn.commit()
    return doc_id


def upsert_topic(conn, name):
    name = " ".join(name.split())
    if not name:
        name = "Untitled"

    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO topics (name)
            VALUES (%s)
            ON CONFLICT (name)
            DO UPDATE SET name = EXCLUDED.name
            RETURNING id;
            """,
            (name,),
        )
        topic_id = cur.fetchone()[0]
    conn.commit()
    return topic_id


def ensure_document_topic(conn, document_id, topic_id):
    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO document_topics (document_id, topic_id)
            VALUES (%s, %s)
            ON CONFLICT (document_id, topic_id) DO NOTHING;
            """,
            (document_id, topic_id),
        )
    conn.commit()


def delete_existing_chunks_for_document(conn, document_id):
    with conn.cursor() as cur:
        cur.execute(
            "DELETE FROM content_chunks WHERE document_id = %s;",
            (document_id,),
        )
    conn.commit()


def chunk_text(text, max_chars=MAX_CHARS_PER_CHUNK):
    words = text.split()
    chunks = []
    current_words = []
    current_len = 0

    for w in words:
        add_len = len(w) + (1 if current_words else 0)
        if current_len + add_len > max_chars and current_words:
            chunks.append(" ".join(current_words))
            current_words = [w]
            current_len = len(w)
        else:
            current_words.append(w)
            current_len += add_len

    if current_words:
        chunks.append(" ".join(current_words))
    return chunks


def extract_topic_and_body(page_text):
    """
    Heuristic for slides:
    - Topic: first non-empty line
    - Body: the rest
    """
    if not page_text:
        return None, None

    lines = [line.strip() for line in page_text.splitlines() if line.strip()]
    if not lines:
        return None, None

    topic = lines[0]
    body = "\n".join(lines[1:]) if len(lines) > 1 else topic
    return topic, body


def process_pdf(conn, course_id, pdf_path):
    file_name = os.path.basename(pdf_path)
    title = os.path.splitext(file_name)[0]

    print(f"\nProcessing: {file_name}")

    document_id = upsert_document(conn, course_id, title, pdf_path)

    delete_existing_chunks_for_document(conn, document_id)

    with pdfplumber.open(pdf_path) as pdf:
        for page_number, page in enumerate(pdf.pages, start=1):
            text = page.extract_text()
            if not text or not text.strip():
                continue

            topic_name, body_text = extract_topic_and_body(text)
            if not topic_name:
                continue

            topic_id = upsert_topic(conn, topic_name)
            ensure_document_topic(conn, document_id, topic_id)

            full_text = topic_name + "\n" + (body_text or "")

            chunks = chunk_text(full_text, MAX_CHARS_PER_CHUNK)
            with conn.cursor() as cur:
                for idx, chunk in enumerate(chunks):
                    cur.execute(
                        """
                        INSERT INTO content_chunks
                            (document_id, topic_id, page_number, chunk_index, text)
                        VALUES (%s, %s, %s, %s, %s);
                        """,
                        (document_id, topic_id, page_number, idx, chunk),
                    )
            conn.commit()


def main():
    conn = get_connection()
    try:
        course_id = ensure_course(conn, COURSE_CODE, COURSE_NAME)

        for file_name in os.listdir(PDF_DIR):
            if not file_name.lower().endswith(".pdf"):
                continue
            pdf_path = os.path.join(PDF_DIR, file_name)
            process_pdf(conn, course_id, pdf_path)

        print("\n✅ Done! All tables should now be filled from your PDFs.")
    finally:
        conn.close()


if __name__ == "__main__":
    main()

