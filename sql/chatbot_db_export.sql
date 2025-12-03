--
-- PostgreSQL database dump
--

\restrict w8R10Ti8UdGevkwWoVRZNXiEnoQQsalOiSAWaLqSW0JJH4n1wzXSJGBCORdtKVx

-- Dumped from database version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: content_chunks; Type: TABLE; Schema: public; Owner: shahmen
--

CREATE TABLE public.content_chunks (
    id integer NOT NULL,
    document_id integer NOT NULL,
    topic_id integer,
    page_number integer,
    chunk_index integer,
    text text NOT NULL
);


ALTER TABLE public.content_chunks OWNER TO shahmen;

--
-- Name: content_chunks_id_seq; Type: SEQUENCE; Schema: public; Owner: shahmen
--

CREATE SEQUENCE public.content_chunks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.content_chunks_id_seq OWNER TO shahmen;

--
-- Name: content_chunks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shahmen
--

ALTER SEQUENCE public.content_chunks_id_seq OWNED BY public.content_chunks.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: shahmen
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    code text NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.courses OWNER TO shahmen;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: shahmen
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_id_seq OWNER TO shahmen;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shahmen
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: document_topics; Type: TABLE; Schema: public; Owner: shahmen
--

CREATE TABLE public.document_topics (
    id integer NOT NULL,
    document_id integer NOT NULL,
    topic_id integer NOT NULL
);


ALTER TABLE public.document_topics OWNER TO shahmen;

--
-- Name: document_topics_id_seq; Type: SEQUENCE; Schema: public; Owner: shahmen
--

CREATE SEQUENCE public.document_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.document_topics_id_seq OWNER TO shahmen;

--
-- Name: document_topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shahmen
--

ALTER SEQUENCE public.document_topics_id_seq OWNED BY public.document_topics.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: shahmen
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    course_id integer NOT NULL,
    title text NOT NULL,
    file_path text NOT NULL
);


ALTER TABLE public.documents OWNER TO shahmen;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: shahmen
--

CREATE SEQUENCE public.documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documents_id_seq OWNER TO shahmen;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shahmen
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: shahmen
--

CREATE TABLE public.topics (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.topics OWNER TO shahmen;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: shahmen
--

CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.topics_id_seq OWNER TO shahmen;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shahmen
--

ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;


--
-- Name: content_chunks id; Type: DEFAULT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.content_chunks ALTER COLUMN id SET DEFAULT nextval('public.content_chunks_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: document_topics id; Type: DEFAULT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.document_topics ALTER COLUMN id SET DEFAULT nextval('public.document_topics_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);


--
-- Data for Name: content_chunks; Type: TABLE DATA; Schema: public; Owner: shahmen
--

COPY public.content_chunks (id, document_id, topic_id, page_number, chunk_index, text) FROM stdin;
1	1	1	1	0	(CS360) Fundamentals of Software Engineering Design documentation and patterns Lecture 2 Dr. Qobiljon Toshnazarov
2	1	2	2	0	Outline ● Documenting your design ○ CRC cards ○ UML class and sequence diagrams ● Design patterns ○ Adapter, Composite, Iterator, Singleton, Factory, Observer, and Visitor
3	1	3	3	0	Controlling SW complexity ● Software systems must be comprehensible by humans ● Which humans? ○ The other members of your team ○ The folks who will maintain and modify your system ○ Management ○ Your clients ○ and … ○ you, a week from now or 6 weeks from now Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
4	1	4	4	0	SW design is more than code ● Design is about how your code relates to Remember Principle #2: the real world Design your ● Design is about the organization of the code data! ● Design is about the relationships between different pieces of the code ● So: you need a different language to talk about your design Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
5	1	5	5	0	Shared vocabulary in a SW project ● You and your teammates need to have a You get to make common understanding of the things in your up the names. But you should program. make them Good Names, of course ○ What are their names? There are ○ What do they represent? standard names for many of these ○ How do they interact? interactions. These are called Design Patterns. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
6	1	6	6	0	Design languages ● We'll study two design languages ○ CRC cards (class-responsibility-collaboration) ○ UML diagrams (unified modeling language) ● These are very different languages for describing designs ○ Different level of formality ○ Different scope Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
7	1	7	7	0	CRC cards CRC cards
8	1	7	8	0	CRC cards Class-responsibility-collaboration (CRC) cards look like this: Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
9	1	7	9	0	CRC cards ● Class ○ The name of a "thing" in your program ○ Could be a class, interface, type, etc. ● Responsibilities ○ the main job of this "thing" in the program should be simple: Remember the “Single Responsibility Principle (SRP)” ● Collaborators ○ The other "things" with which this thing interacts Some books say to list ○ For us this means the things with which this thing is just the things that this coupled (i.e., depends on) thing depends upon. ○ Includes at least: all the things that this thing uses, and all the things that use this thing, at least directly Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
10	1	10	10	0	Agile alliance about CRC cards ● CRC cards (for Class, Responsibilities, Collaborators) are an activity bridging the worlds of role-playing games and object-oriented design. ● With the intent of rapidly sketching several different ideas for the design of some feature of an object-oriented systems, two or more team members write down on index cards the names of the most salient classes involved in the feature. The cards are then fleshed out with lists of the responsibilities of each class and the names of collaborators, i.e. other classes that they depend on to carry out their own responsibilities. ● The next step is to validate – or invalidate as the case may be – each design idea by playing out a plausible scenario of the computation, each developer taking on the role of one or more
11	1	10	10	1	classes. https://www.agilealliance.org/glossary/crc-cards
12	1	11	11	0	CRC cards in practice ● Typically used during early analysis, especially during team discussions. ○ Low-tech ○ 4x6 index cards ○ They aren't pretty. ○ They aren't something you ever want to show your customers or even your own upper management. ● Each card is a concrete symbol for a thing in the program during discussion. ● Kind of like thinking on a whiteboard, but… ● Cards can be stacked, moved, etc. to illustrate proposed relationships. ○ If you come out of a group meeting and your CRC cards aren't smudged, dog-eared, with lots of scratched-out bits, you probably weren't really trying. https://www.cs.odu.edu/~zeil/cs330/live/website/Slides/crc/page/crc.html
13	1	12	12	0	The metaphor: sketching the conspiracy The metaphor: sketching the conspiracy
14	1	13	13	0	CRC cards in this course ● Assignment 5 (part of it) will ask you to use CRC cards and UML diagrams to document a SW. ● You may not be able to identify all the classes that use your class. Don't worry too hard about that. ● We will also ask you to put one more thing on your CRC cards - the state ○ All objects of a given class keep state information that may change over time, influencing object’s behavior or appearance in the SW Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
15	1	14	14	0	CRC card template Download this template via this link: You can print it out and write on by hand, or you can even simply use an online platform that supports drawing CRC cards. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
16	1	15	15	0	CRC card for TemperatureSensor Class name: TemperatureSensor (an interface) // temperatures are measured in Celsius type Temperature = number State: none interface TemperatureSensor { Responsibilities Collaborators // return the current temperature // at the sensor location Defines interface for RefrigeratorThermometer getTemperature () : Temperature thermometers in the system } OvenThermometer CRC cards are supposed to be informal, so TemperatureMonitor don’t get hung up on emulating the exact words or the exact layout used here. etc. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
17	1	16	16	0	TemperatureMonitor class TemperatureMonitor { constructor( Here's a slightly more elaborate // the sensors TemperatureMonitor class private sensors: TemperatureSensor[], // map from sensor to its location It monitors multiple sensors private sensorLocationMap: SensorLocationMap, private maxTemp: Temperature, private minTemp: Temperature, And it knows where each sensor is private alarm: IAlarm, ) { } // sensor in range? private isSensorInRange (sensor:TemperatureSensor) : boolean { Better division into one const temp: Temperature = sensor.getTemperature() method/one job than our earlier return ((temp < this.minTemp) || (temp > this.maxTemp)) version. } . . . Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
18	1	17	17	0	TemperatureMonitor (contd.) . . . // if the any of the sensors is out of range, sound the alarm public checkSensors(sensor: TemperatureSensor): void { this.sensors.forEach(sensor => { if (!(this.isSensorInRange(sensor))) { this.soundAlarm(sensor) } }) } private soundAlarm (sensor) { const location = this.sensorLocationMap.getLocation(sensor) this.alarm.soundAlarm(location) } } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
19	1	18	18	0	CRC card for TemperatureMonitor Class name: TemperatureMonitor State: Some sensors, maxTemp, minTemp, the alarm to sound, map from sensors to locations Responsibilities Collaborators If any of the sensors is out of range, tell the alarm to sound at TemperatureSensor its location SensorLocationMap IAlarm Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
20	1	19	19	0	IAlarm // sound alarm for issue at the given location interface IAlarm { soundAlarm(location:Location): void } Class name: IAlarm (interface) State: none Responsibilities Collaborators Defines interface for classes TemperatureMonitor that will sound an alarm all implementations of IAlarm Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
21	1	20	20	0	SensorLocationMap class SensorLocationMap { private locationMap : Map<TemperatureSensor, Location> = new Map() // get the location, if any. If none, throw error public getLocation (sensor:TemperatureSensor) : Location { if (this.locationMap.has(sensor)) { return this.locationMap.get(sensor) } else { throw new Error (`sensor ${sensor} location unknown`) } } // methods to add and remove sensors from the map... } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
22	1	20	21	0	SensorLocationMap Class name: SensorLocationMap State: Map from sensors to their locations Responsibilities Collaborators Maintain the map from Sensors TemperatureMonitor to their Location Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
23	1	22	22	0	FireAlarm A hypothetical implementation of IAlarm interface Class name: FireAlarm State: socket for communicating with Fire Dept Responsibilities Collaborators When sounded, call the IFireDept FireDept When FireDept responds, turn off alarm
24	1	23	23	0	CRC - mapping the conspiracy Class SensorLocationMap Class Name: TemperatureMonitor Name: State: sensors, maxTemp, minTemp, alarm State: Map from Sensors to their Class TemperatureSensor (interface) Responsibilities Collaborators Location Name: if any of the sensors is out TemperatureSensor Responsibilities Collaborators State: none of range, tell the alarm to Maintain the map TemperatureMonitor Responsibilities Collaborators sound at its location from Sensors to establish interface for RefrigeratorThermo SensorLocationMap their Location thermometers in the meter IAlarm system OvenThermometer etc. TemperatureMonito r Class IAlarm (interface) Class FireAlarm Name: Name: State: none State: socket for communicating with Fire Responsibilities Collaborators Dept Interface for classes
25	1	23	23	1	TemperatureMo Responsibilities Collaborators that will sound an nitor when sounded, IFireDept alarm call the FireDept all when FireDept implementation responds, turn s of IAlarm off alarm Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
26	1	24	24	0	UML class diagram UML class diagram
27	1	25	25	0	Unified modeling language ● UML is a general-purpose visual modeling language developed by an industry consortium in 1997. ● Based on multiple prior visual modeling languages. ● Goal was to have a single standard representation for a large number of SE tasks. ● A large language: 13 different kinds of diagrams. ● Currently, UML is at version 2.5.1 (December 2017). See UML.org and https://www.omg.org/spec/UML/
28	1	26	26	0	UML in the context of this course ● There are numerous tools for translating from It will not be satisfactory to UML to code (or code fragments), and vice simply rely on some versa, BUT… UML-generation tool. ● We are interested in UML as a human-to-human That will only demonstrate language. that you haven't thought hard about the problem ☺ ● So we expect your UML diagrams to "look like" UML diagrams, but we are not interested in every last detail of the notation. ● We just want your diagrams to communicate the important things, with detail as necessary. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
29	1	27	27	0	Most common: UML class diagram ● Class diagram: ○ Which objects do we need? ○ Which are the features of these objects? (attributes, methods) ○ How can these objects be classified? (is-kind-of hierarchy, both via inheritance and interface) ○ What associations are there between the classes? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
30	1	24	28	0	UML class diagram ● UML class diagrams summarize a class’s attributes and operations. ● In industry, UML diagrams help systems designers specify systems in a concise, graphical, programming-language-independent manner, before programmers implement the systems in specific programming languages. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
31	1	24	29	0	UML class diagram ● In the UML, each class is modeled in a class diagram as a rectangle with three compartments: ● The top compartment contains the class name centered horizontally in boldface type. ● The middle compartment contains the class’s attributes, which correspond to the data members (i.e., state information). ● The bottom compartment contains the class’s operations, which correspond to the member functions.
32	1	24	30	0	UML class diagram ● The UML class diagram lists a minus sign (–) access modifier before the attribute name for private attributes (or other private members). ● Following the attribute name are a colon and the attribute type. ● The UML models operations by listing the operation name preceded by an access modifier. ● A plus sign (+) indicates public in the UML. ● The UML indicates the return type of an operation by placing a colon and the return type after the parentheses following the operation name. ● More class diagram details: developer.ibm.com/articles/the-class-diagram
33	1	31	31	0	Class attributes in UML ● The attributes of a class are roughly those In TypeScript, functions are values, members (or "instance variables" or "properties", so for us an attribute depending on what language you are writing in) could have a value whose values are either: that is a function. Your real-world boss ○ Scalars ("simple" attributes) may or may not ○ Arrays or lists of scalars ("multivalued" attributes) agree. ○ Simple structs (e.g. dates or names) ● Class members whose values are full-fledged objects (of this or some other class) are usually represented in UML as relationships.
34	1	32	32	0	Attribute example attribute1 is simple. attribute2 is multivalued (there can be up to five values stored on attribute2) domain is UML terminology for “type” UML has its own vocabulary for describing UML diagrams, with words like "entity" and "attribute" and "domain". A language like this, that describes another language, is sometimes called a metalanguage. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
35	1	33	33	0	Relationships in UML ● UML has notations for 3 kinds of relationship between classes: ● Most general relationship: Association ● Special cases: ○ Generalization ○ Aggregation Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
36	1	34	34	0	Relationship #1: Association ● An association is a simple semantic relationship between two objects that indicates a link or dependency between them. For example: ○ A portfolio is associated with an investor. ○ Every sale is associated with the sales representatives that worked on the sale. ○ Every student is associated with a transcript. ● Associations can be directed, meaning there is a relationship from one object to another, or bi-directional, meaning the relationship works both ways. ● Relationships may be annotated with descriptions. ● An association may be implemented in several possible ways. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
37	1	35	35	0	Properties of association: cardinality ● Cardinality in UML class diagram is also called multiplicity ● The relationship between two entities has an associated cardinality or multiplicity ○ Multiplicity is expressed with specific numbers or ranges ○ e.g.: 1:1..2 or 1:1..N ● Examples: ○ A student is associated with exactly one transcript (1:1) ■ One student, one transcript. ○ Every course is taught by a professor, but a professor must teach at least one course (1:1..*) ■ One course, one professor. One professor, one or more courses. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
38	1	36	36	0	Notation of cardinality in association Any given instructor teaches 1 course. Instructor teaches ► Course Any given course is associated with one instructor. 1 1 Instructor teaches ► Course Any given instructor teaches at least 1 and up to 10 courses. Any given course is associated with one instructor. 1 1..10 Any given instructor teaches 1 or more courses. Instructor teaches Course ► Any given course is associated with one instructor. 1 1..* Note: the solid triangle indicates how a human should interpret the relationship ("Instructor teaches Course"). It does not indicate navigability (from an instructor, can you Instructor teaches fiCnodur stehe list of courses they teach?) If no cardinality is specified, it defaults to 1. ► 1..* Contents adapted from CS4530/5500, Spring 2021:
39	1	36	36	1	Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
40	1	37	37	0	Full association specification Name Label The UML folks tried to Role Name think of everything you Constraint could possibly say on role about an association. Student Participant attends Like much about SE, «key» studentID: text courseNo major: text 0..* {prequisites met} you only need to matrStatus: Boolean = false 0..6 memorize the parts you {ordered} Class need. Key/Qualifier studentID Constraint on relationship Course «key» courseNo: text Multiplicity (* means unbound) title: text register(studentID) : void Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
41	1	38	38	0	Association Associations should reflect something about the real world Partial Translation: We have discovered that a loan can be paid out in multiple disbursements. There does not appear to be any limit to the number of disbursements. In addition, each loan is given to a single student. Apparently, students cannot share loans. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
42	1	39	39	0	What world are we modeling? Sometimes the world we are modeling is not the real world, but the world of entities in our program Discussion Question: Which parts of this chart represent things in the real world, and which parts represent things that only live in our computers? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
43	1	40	40	0	Relationship #2: Generalization ● Generalization is a grouping of entities based on common attributes. ○ describes an is-a-kind-of relationship between entities ○ like inheritance in OOP Person ● More general as you move up ● More specific as you move down Employee Student ● More specific may inherit attributes and operations from the more general ○ may specialize attributes and operations Faculty Graduate Staff Undergraduate
44	1	41	41	0	Generalization in UML Person name: text Student Instructor major: text salary: text These two UML class diagrams are equivalent Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
45	1	42	42	0	Interfaces and "implements" ● In UML, the "implements" relation is generally considered to be a form of generalization. ● An interface is typically notated like a class, but with the stereotype <<interface>>. ○ Alternatively, the name of the interface may be given in italics. ● The "implements" relationship may be notated with a dotted or dashed line, or by an open-headed arrow. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
46	1	43	43	0	Relationship #2: Aggregation ● A car has 3–4 wheels The solid arrow indicates the way we should read "has" (a car "has" wheels, not Discussion Question: What wheels "has" a car). should the navigability of this association be? Should we be able to get from a Car to the Wheels that it has? Should we be able to get from Wheel to Car? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
47	1	44	44	0	Aggregation ● Aggregation is an association that means a “whole/part” or “containment” relationship. ● The distinction between association and aggregation is not always clear. ● Don't stress about this: If in doubt, notate the relationship as a simple association. ● Generally, it's more important to show What relation is portrayed in each of these diagrams? navigability than to worry about the What should its navigability be? diamond-shaped arrowheads. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
48	1	45	45	0	UML sequence diagram UML sequence diagram
49	1	45	46	0	UML sequence diagram ● Shows the flow between elements of a system (the messaging sequence) ○ Classes (instances of classes) ○ Components ○ Subsystems ○ Actors Time is explicitly shown and flows from top to ● bottom (vertically, downwards) Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
50	1	47	47	0	UML sequence diagram example t Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
51	1	48	48	0	Another example Activate Entity Destroy Entity t Deactivate Entity Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
52	1	49	49	0	A more complicated example t https://aws.amazon.com/blogs/architecture/sequence-diagrams-enrich-your-understanding-of-distributed-architectures/
53	1	50	50	0	Design patterns Design patterns
54	1	51	51	0	What is a design pattern? ● Think of it as advice from a master to a novice. ○ A master chef may advise a novice on knife technique. ○ A golf pro may advise a novice about their swing. ○ A piano teacher may advise a student about their posture, or how to interpret a piece. ● Often these pieces of advice are stylized and recorded. ○ e.g.: "keep your elbow straight" (golf) "use the tip of your knife as a fulcrum" (knife technique). ○ Maybe in a book of "technique" ○ Maybe on YouTube ○ etc. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
55	1	52	52	0	What is in such a piece of advice? ● A problem to be solved ○ "The golf ball keeps flying off to the side" ○ "It's taking too long to chop the carrots" ● A technique or method for solving the problem ● The technique always needs to be adapted to the problem at hand ○ Is the golf ball lying on a slope? what kind of slope? ○ Do you have a proper chopping board? What kind of knife are you using? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
56	1	53	53	0	Design patterns in architecture ● "A Pattern Language: Towns, Buildings, Contruction" by Christopher Alexander (1977) ● Introduced this idea to a wide community beyond architects
57	1	54	54	0	“Gang of four” book ● First (and only!) edition 1994 ● Introduced this idea to object-oriented design ● Started the "Software Patterns" movement ● Still #1 on Amazon in Object-Oriented Software Design
58	1	55	55	0	Very good reference: refactoring.guru https://refactoring.guru/design-patterns/
59	1	56	56	0	Design patterns - definition "Each pattern describes a problem which occurs over and over again in our environment, and then describes the core of the solution to that problem, in such a way that you can use this solution a million times over, without ever doing it the same way twice." According to Christopher Alexander (1977) - author of the book “A Pattern Language: Towns, Buildings, Contruction” Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
60	1	57	57	0	Elements of a design pattern ● The pattern name This is the official definition, taken ● The problem (when to apply the pattern) from the GoF book. ● The solution (describes the elements that But, when they get around to make up the pattern) describing patterns, their ● The consequences (the results and descriptions rarely match this trade-offs of applying the pattern) outline ☹ Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
61	1	58	58	0	Design patterns are controversial ● For the last 25 years, software experts have lined up either as pattern fans or pattern skeptics ● Sometimes there are endless debates about whether a given piece of code is or is not an instance of a particular pattern. ● We are just not going to get into that. Chill. ● These patterns are tools in your toolbox. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
62	1	59	59	0	Design patterns are everywhere ● Everytime you read a blog post or web page with some code illustrations, you are using a design pattern: ○ A piece of code to solve a particular problem ○ And which needs to be adapted to your particular situation. ● But some patterns are classics that have names that you should be familiar with. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
63	1	60	60	0	Problem #1 ● Suppose we need to implement a stack class with following interface: // the usual stack operations interface IStack<T> { push(t: T): void Of course, in Typescript pop(): T you'd never do this, size(): number because in Typescript we } almost always use arrays to represent lists. ● But we have a class List that implements IList: interface IList<T> { // add to end of list add(t:T): void // remove last element of the list remove(): T // returns the number of elements in the list size(): number } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
64	1	61	61	0	Solution: Adapter class Stack<T> implements IStack<T> { // top of stack is at end of list constructor (private payload: IList<T>) {} public push(t: T): void { this.payload.add(t); } public pop(): T { return this.payload.remove(); } Important: if you do something like this, be public size(): number { sure to explain how the return this.payload.size() list should be interpreted } as a stack. (Remember Design Principle 2!) } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
65	1	62	62	0	Problem #2: ● You need to represent data that is tree-like ● For instance, representing shapes ● A shape is either: ○ A square ○ A circle ○ Or a compound of two shapes: a front shape and a back shape. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
66	1	63	63	0	Solution: the Composite pattern Giving one class a reference to an object of another class (or interface) is sometimes called Composition. Notice the circular dependency between Shape and Compound. That comes along with hierarchical (tree-like) data. There's no avoiding it. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
97	2	89	7	0	Design at larger scales ● How well will our system work in its context? So, when we say “software architecture” we are talking about high-level design of the software with all its parts included. https://ozguvenmimarlik.com/en/architectural-project/urban-design-implementation/tashkent-new-uzbekistan-university
67	1	64	64	0	Problem #3 ● You need to systematically go through the elements of some collection. ● Solution 1: Implement your collection using a type with native support for iteration. ○ In TypeScript, this typically means an array (a list) or Map ○ These are called internal iterators The function that you const mylist : Shape[] = ... apply to each element of mylist.map(shape => ...) the array is called the mylist.filter(shape => ...) callback. mylist.forEach(shape => ...) Internal iterators like these for (s in mylist) {...} replace almost all loops in TypeScript. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
68	1	65	65	0	Note: TS also allows iterators over Maps! type StudentTableOut = Map<StudentId, StudentDataOut> function countAllBins (studentMasterTable: StudentTableOut) { let histo = [0,0,0] // a histogram with 3 bins for (let student of studentMasterTable.keys()) { let data = studentMasterTable.get(student) for (let question of data.keys()) { let questionData = data.get(question) let bin = questionData.bin histo[bin] += ... } } return histo.map(n => n/(histo[0]+histo[1]+histo[2])) } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
69	1	66	66	0	Solution: the Iterator pattern ● Iterator is a behavioral design pattern that lets you traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.). ● The main idea of the Iterator pattern is to extract the traversal behavior of a collection into a separate object called an iterator. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
70	1	67	67	0	Example structure Use the Iterator pattern when your collection has a complex data structure under the hood, but you want to hide its complexity from clients (either for convenience or security reasons).
71	1	68	68	0	Problem #4 ● We have to make sure there is only one instance of a particular class ● Primary examples where only one instance is allowed: ○ A clock ○ A storage allocator ○ A generator for unique identifiers Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
72	1	69	69	0	Solution: the Singleton pattern We'll do this in stages… Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
73	1	70	70	0	A simple clock export interface IClock { // reset the tick counter to 0 reset(): void // increment the tick counter tick(): void // returns the number of ticks since the last reset. currentTime(): number } class Clock implements IClock { private ticks = 0 public reset():void { this.ticks = 0 } public tick():void { this.ticks++ } public currentTime():number { return this.ticks } } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
74	1	71	71	0	A clock factory class FactoryMadeClock implements IClock { calling private ticks = 0 ClockFactory.getClock() public reset():void { this.ticks = 0 } returns a new clock public tick():void { this.ticks++ } public currentTime():number { return this.ticks } Note that getClock is static, so } you don't need to instantiate ClockFactory. // no need to instantiate ClockFactory // just say ClockFactory.getClock() export default class ClockFactory { public static getClock():IClock {return new FactoryMadeClock()} } This is an instance of the Factory Pattern (yet another pattern whose name you should know). This pattern doesn't add much value here, but it would be helpful if you were building something more complicated, e.g. an Amazon product listing. 71
75	1	72	72	0	A Singleton clock factory class Clock { Like the ClockFactory, but this one ..same as before.. cheats and only makes a clock } once. Then it returns that same clock every time. export default class SingletonClockFactory { private constructor() {} Make the factory's constructor private static _theClock: Iclock private, so that no one can create another one // have we initialized the clock? private static _isInitialized : boolean = false Use a first-time-through switch public static getClock() { if (!this._isInitialized) { this._theClock = new Clock() this._isInitialized = true // it's initialized now } return this._theClock } } Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
76	1	73	73	0	Let's test this... import {assert} from 'chai' import SingletonClockFactory from './SingletonClockFactory' function test1 () { let clock1 = SingletonClockFactory.getClock() let clock2 = SingletonClockFactory.getClock() clock1.tick() assert.equal(clock1.currentTime(),1) clock1.tick() assert.equal(clock1.currentTime(),2) assert.equal(clock2.currentTime(),2, "clock2 should see clock1's ticks") clock2.tick() assert.equal(clock1.currentTime(),3, "clock1 should see clock2's ticks") } describe ('check that clock is a singleton', () => { it('test1', test1) }) Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
77	1	74	74	0	Problem #5 ● You have an object that changes state, and there are many other objects in the system that need to know this. ● But you don't know who they are ○ They may even be created after the object that is being watched. ● Example: we have a master clock, and other objects need to know the current time. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
78	1	75	75	0	Solution: the Observer pattern ● Also called "publish-subscribe" (or pub-sub) ● The object being observed (the "subject") keeps a list of the people who need to be notified when something changes. ● When a new object wants to be notified when the subject changes, it registers with ("subscribes to") with the subject. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
79	1	76	76	0	Interfaces No 'getTime' method! The clock pushes export interface IPublishingClock { information to the observers // reset the tick counter reset(): void The protocol is: // increment the tick counter 1. When the clock ticks, it tick(): void sends an onTick message // subscribe a new observer with the current time to subscribe(obs: ClockObserver) : void each subscriber } (observer) 2. When the clock resets, it export interface ClockObserver { sends an onReset // action to take when clock ticks message to each onTick(time: number): void subscriber. // action to take when the clock resets onReset():void 3. When a new subscriber registers, the clock } Names like 'onTick' are typical for responds by sending it methods in the Observer pattern an onTick message
145	2	134	49	0	Recap slide 41: client-server comm. ● That means the client can ask the server to do things other than retrieve files. Slide 41 says: ● Just there has to be an agreement (a protocol) between client and server about how these tasks are to be described. ● Need a general framework to help us design such protocols. ● We will talk about one such philosophy, called REST.
80	1	77	77	0	The Clock class Clock implements IPublishingClock { // clock functionality private clockTime = 0 public tick () {this.clockTime++; this.publishTickEvent()} public reset() {this.clockTime=0; this.publishResetEvent()} private observers : ClockObserver[] // register responds with the current time, so the observer // will be initialized public subscribe(obs: ClockObserver): void { this.observers.push(obs); obs.onTick(this.clockTime) } private publishTickEvent() { this.observers.forEach(obs => {obs.onTick(this.clockTime)}) } private publishResetEvent() { this.observers.forEach(obs => {obs.onReset()}) } }
81	1	78	78	0	Push vs Pull ● In the simple model (like the one in singleton), a client pulled information from the clock. ● In the observer model, the clock pushes information to its clients Exercise: Draw UML sequence diagrams for the simple clock and for the publishing clock. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
82	1	79	79	0	Problem #6 (last one) ● You have a hierarchical structure, and there are many operations that will need to traverse it. ● You don't know in advance what those operations will be. ● But each operation can be implemented imperatively, perhaps by accumulating the answer in some variable. ● Also, you'd like to keep the internal organization of each node in the structure hidden from the operation. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
83	1	80	80	0	Solution: the Visitor pattern ● Behavioral design pattern for separating behaviors from objects on which they operate. ● First thing that comes to mind is polymorphism with method overloading, but since the exact class (data type) of a node object is unknown in This is called the advance, this does not work. Visitor class. ● Visitor pattern resolves this issue using a technique called Double Dispatch - where the objects themselves (since they know their own classes) pick a proper method on the visitor by Let's call that the “accept”ing a visitor and redirecting to a visiting visitor (with a small v). method to be executed. ● To invoke the operation / behavior, create a new object of the Visitor class.
84	1	81	81	0	Visitor pattern example // operates on a node // the node itself is responsible for invoking the // visitor on its descendants, if any. interface ShapeVisitor { visitCircle(c: Circle): void visitSquare(sq: Square): void The name 'accept' is not visitCompound(c: Compound): void fixed. It is up to you how } to call it, but it's what everybody calls it So if // a Shape is any class that will accept a Shape Visitor you see a method called interface Shape { 'accept' or 'acceptVisitor' // calls back the appropriate method of the visitor. in a codebase, that // also sends the visitor to each child of the shape probably means that accept (v: ShapeVisitor) : void there's a visitor pattern } here. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering
85	1	81	81	1	(Released under the CC BY-SA license)
86	1	82	82	0	Compound + Visitor: In-order traversal When a Compound accepts: class Compound implements Shape { 1. Passes the visitor onto its public accept (v: ShapeVisitor) { back shape. // apply the visitor using in-order traversal 2. Sends itself to the this.back.accept(v); appropriate method of the v.visitCompound(this); visitor for local processing this.front.accept(v) 3. Passes the visitor on to its } front shape. constructor(private front:Shape, private back: Shape){} public getFront() : Shape { return this.front } The front and back properties public getBack() : Shape { return this.back } are private to preserve } encapsulation. We need getters to make their values available to v.visitCompound(). Or you It's up to the node to decide the order in which these operations could make them public if
87	1	82	82	1	you happen. This order is called in-order traversal. Other possible wanted to allow the visitor (or orders are called pre-order, and post-order. anybody else) to change them. 82
88	1	83	83	0	Visitor pattern example (detailed) Shape class hierarchy export class Square implements Shape { constructor(public sideLength: number) {} with a shape visitor: accept(visitor: ShapeVisitor): void { visitor.visitSquare(this); } export interface Shape { } accept(visitor: ShapeVisitor): void; } export class Triangle implements Shape { constructor( export class Circle implements Shape { public base: number, constructor(public radius: number) {} public height: number ) {} accept(visitor: ShapeVisitor): void { visitor.visitCircle(this); accept(visitor: ShapeVisitor): void { } visitor.visitTriangle(this); } } }
89	1	83	84	0	Visitor pattern example (detailed) The shape visitor interface: A concrete visitor behavior/implementation export interface ShapeVisitor { class AreaCalculator implements ShapeVisitor { visitCircle(circle: Circle) totalArea: number = 0; : void; visitCircle(circle: Circle): void { visitSquare(square: Square) this.totalArea += Math.PI * … : void; } visitTriangle(triangle: Triangle visitSquare(square: Square): void { : void; this.totalArea += square.sideLength… } } visitTriangle(triangle: Triangle): void { this.totalArea += 0.5 * triangle.base… } }
90	1	83	85	0	Visitor pattern example (detailed) An example sample main.ts: let shapes: Shape[] = []; shapes.push(new Square(10)); shapes.push(new Circle(3)); shapes.push(new Triangle(4, 6)); let calc = new AreaCalculator(); shapes.forEach(shape => shape.accept(calc)); console.log(`Total Area: ${calc.totalArea}`);
91	2	1	1	0	(CS360) Fundamentals of Software Engineering Software architectures, HTTP and REST Lecture 3 Dr. Qobiljon Toshnazarov
92	2	2	2	0	Outline ● Software architectures ○ Monolithic, layered, pipeline, plugin/microkernel, event-driven, and microservice architectures ● HTTP basics ○ HTTP message components – the client-server communication ○ “HTTP is stateless”? ○ “HTTP is not sessionless?” ● REST protocols ○ Basic REST principles – RESTful interfaces
93	2	88	3	0	Design we saw so far in this class Metaphor: architecture of a building Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
94	2	89	4	0	Design at larger scales ● Metaphor: architecture of a building ● How do the pieces fit together in larger designs? What do we reuse? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
95	2	89	5	0	Design at larger scales ● Metaphor: architecture of a building ● How do the pieces fit together in larger designs? What do we reuse? ● How do we organize into teams? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
96	2	89	6	0	Design at larger scales ● How well will our system work in its context? https://ozguvenmimarlik.com/en/architectural-project/urban-design-implementation/tashkent-new-uzbekistan-university
98	2	93	8	0	Goal: create a high-level model of the system ● Abstract details away into reusable components ○ Abstraction can be critically necessary, especially for medium-to-large size SW ● Allows for analysis of high-level design before implementation ● Enables exploration of design alternatives ● Reduce risks associated with building the software Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
99	2	94	9	0	Properties of “Software Architectures” Table 4-1. Common operational SW architecture characteristics Term Definition How long the system will need to be available (if 24/7, steps need to be in place to allow the system to be up and Availability running quickly in case of any failure). Continuity Disaster recovery capability. Includes stress testing, peak analysis, analysis of the frequency of functions used, capacity required, and Performance response times. Performance acceptance sometimes requires an exercise of its own, taking months to complete. Business continuity requirements (e.g., in case of a disaster, how quickly is the system required to be on-line Recoverability again?). This will affect the backup strategy and requirements for duplicated hardware. Assess if the system needs to
100	2	94	9	1	be fail-safe, or if it is mission critical in a way that affects lives. If it fails, will it cost Reliability/safety the company large sums of money? Ability to handle error and boundary conditions while running if the internet connection goes down or if there’s a Robustness power outage or hardware failure. Scalability Ability for the system to perform and operate as the number of users or requests increases. Table from book “Richards & Ford: Fundamentals of Software Architecture”
101	2	95	10	0	Book: Fundamentals of Software Architecture ● Purchase the ebook on Amazon: [HTML] ● Or download via this link: [PDF]
102	2	96	11	0	More properties (contd.) Table 4-2. Structural SW architecture characteristics Term Definition Configurability Ability for the end users to easily change aspects of the software’s configuration (through usable interfaces). Extensibility How important it is to plug new pieces of functionality in. Installability Ease of system installation on all necessary platforms. Leverageability / reuse Ability to leverage common components across multiple products. Support for multiple languages on entry/query screens in data fields; on reports, multibyte character Localization requirements and units of measure or currencies. Maintainability How easy it is to apply changes and enhance the system? Does the system need to run on more than one platform? (For example, does the frontend need to run
103	2	96	11	1	Portability against Oracle as well as SAP DB? What level of technical support is needed by the application? What level of logging and other facilities are Supportability required to debug errors in the system? Ability to easily/quickly upgrade from a previous version of this application/solution to a newer version on Upgradeability servers and clients. Table from book “Richards & Ford: Fundamentals of Software Architecture”
104	2	97	12	0	Even more properties (contd.) Table 4-3. Cross-cutting SW architecture characteristics Term Definition Accessibility Access to all your users, including those with disabilities like colorblindness or hearing loss. Will the data need to be archived or deleted after a period of time? (For example, customer accounts are to be deleted Archivability after three months or marked as obsolete and archived to a secondary database for future access.) Authentication Security requirements to ensure users are who they say they are. Security requirements to ensure users can access only certain functions within the application (by use case, subsystem, Authorization webpage, business rule, field level, etc.). What legislative constraints is the system operating in (data protection, Sarbanes Oxley, GDPR,
105	2	97	12	1	etc.)? What reservation Legal rights does the company require? Any regulations regarding the way the application is to be built or deployed? Ability to hide transactions from internal company employees (encrypted transactions so even DBAs and network Privacy architects cannot see them). Does the data need to be encrypted in the database? Encrypted for network communication between internal systems? Security What type of authentication needs to be in place for remote user access? What level of technical support is needed by the application? What level of logging and other facilities are required to Supportability debug errors in the system? Level of training required for users to achieve their goals with the application/solution. Usability requirements need to be Usability/achievability
106	2	97	12	2	treated as seriously as any other architectural issue. Table from book “Richards & Ford: Fundamentals of Software Architecture”
107	2	97	13	0	Even more properties (contd.) Table 4-3. Cross-cutting SW architecture characteristics Of course, we don’t have time to go through Term Definition Accessibility Access to all your users, including those with disabilities like colorblindness or hearing loss. and study study these in any detail, or to try Will the data need to be archived or deleted after a period of time? (For example, customer accounts are to be deleted Archivability after three months or marked as obsolete and archived to a secondary database for future access.) to discuss how any particular architecture Authentication Security requirements to ensure users are who they say they are. Security requiremmenitsg toh ents urrea usteers c aon ancce sas onnlyy ce rotainf f utnchtioens mwithi…n the application (by use case,
108	2	97	13	1	subsystem, Authorization webpage, business rule, field level, etc.). What legislative constraints is the system operating in (data protection, Sarbanes Oxley, GDPR, etc.)? What reservation Legal rights does the company require? Any regulations regarding the way the application is to be built or deployed? Ability to hide transactions from internal company employees (encrypted transactions so even DBAs and network Privacy architects cannot see them). You could write a whole book about that… Does the data need to be encrypted in the database? Encrypted for network communication between internal systems? Security What type of authentication needs to be in place for remote user access? What level of technical support is needed by the application? What level of logging and other facilities are
109	2	97	13	2	required to Supportability debug errors in the system? Level of training required for users to achieve their goals with the application/solution. Usability requirements need to be Usability/achievability treated as seriously as any other architectural issue. Table from book “Richards & Ford: Fundamentals of Software Architecture”
110	2	99	14	0	Our goal this week is: ● Just talk about some different top-level organizations. ● And knowing the top-level organization gives you the first clue about: ○ How to understand the system Remember the overall goal of making ○ Where to look for bugs or explain behaviors software systems understandable and ○ How to organize into teams manageable by humans. ○ How to find modification and extension points Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
111	2	100	15	0	Architecture #0: Monolithic ● A single app, with no particular organization ● People also call it “monolith” ○ Also informally as a "spaghetti code" because there is no organization at all in this, just putting bunch of code in one place May still have useful interfaces for some ● degree of encapsulation and modularity. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
112	2	100	16	0	Architecture #0: Monolithic ● OK for single-developer, short-lived projects ● But… ○ What happens if you want to add a new developer? ○ What happens if you need to come back to the code later? Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
113	2	102	17	0	Architecture #1: Layered ● Each layer depends on services from the layer above or below ● Organize teams by layers ○ Different layers require different expertise ● When the layers are run on separate pieces of hardware, they are sometimes called "tiers" Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
114	2	103	18	0	Architecture #1: Layered (contd.) ● Typical organization used in operating systems (OS) ● Layers communicate through procedure calls and callbacks (sometimes called "up-calls") Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
115	2	104	19	0	Architecture #2: Pipeline Good for complex straight-line processes, e.g.: image processing Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
116	2	105	20	0	Also good for visualizing hardware Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
117	2	106	21	0	How do the stages communicate? ● That's the next-level decision ○ Data-push: each stage invokes the next ○ Demand-pull: each stage demands data from its predecessor ○ Queues, buffers… Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
118	2	107	22	0	Architecture #3: Plugins ● Highly extensible, also called “microkernels” architecture ● System consists of a small core components called the "microkernels" ● Includes lots of hooks for adding other services ● Each microkernels performs an essential functions (part of SW) ● Plug-ins can be designed by small, less-experienced teams– even by users! ● Connection methods may vary Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
119	2	108	23	0	Plugin architecture examples ● VSCode (internal org. + extension marketplace) ● Wordpress (defaults + extension marketplace) ● git clients $ ls .git/hooks applypatch-msg.sample pre-applypatch.sample pre-rebase.sample commit-msg.sample pre-commit.sample pre-receive.sample fsmonitor-watchman.sample prepare-commit-msg.sample update.sample post-update.sample pre-push.sample ● etc. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
120	2	109	24	0	Express.js uses a microkernel architecture ● express.js depends on plug-ins: app.get() is a hook that adds a handler to the server. app.get('/transcripts', (req,res) => { console.log('Handling GET/transcripts') The handlers are ordered (the first let data = db.getAll() matching handler is console.log(data) executed), and can be res.status(200).send(data) pipelined, so a handler }) can invoke another handler if desired. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
121	2	110	25	0	Architecture #4: Event-driven ● Metaphor: a bunch of bureaucrats shuffling papers ● Each processing unit has an in-box and one or more out-boxes ● Each unit takes a task from its inbox, processes it, and puts the results in one or more outboxes. ● Stages are typically connected by asynchronous message queues. ● Conditional flow
122	2	111	26	0	Architecture #5: Microservice ● Architecture where the overall task (or SW logic) is divided into different SW components ● Each component is implemented independently ○ Each component is independently replaceable and updatable ○ Parts of SW are highly decoupled! ● Components can be built as libraries, but more usually as web services ○ Services communicate via HTTP, typically REST Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
123	2	112	27	0	Microservice example by AWS “Microservices architectures separate functionalities into cohesive verticals according to specific domains, rather than technological layers.” Figure from AWS whitepaper on “Implementing Microservices on AWS” https://docs.aws.amazon.com/whitepapers/latest/microservices-on-aws/simple-microservices-architecture-on-aws.html
124	2	113	28	0	Another schematic example of microservice NodeJS, MongoDB Service on Google Java, MySQL TMooddos 1 MLoogdin 2s MMaoidle r3 REST service REST service REST service Productivity App Database Database Database Different languages, Frontend REST frameworks, different operating systems “Dumb” SMeoadrc 4h Engine MAnoadly 5tics MSoocdia 6l Crawler App Server REST service REST service REST service Database Database Database Java, Neo4J C#, SQLServer Python, MongoDB Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
125	2	114	29	0	Microservice: pros and cons ● Pros ○ Services may scale differently, so can be implemented on hardware appropriate for each resource - CPU, RAM, Disk, etc. ○ Great for software part too - language, framework, OS, etc. ○ Services are independent, so parts of SW can be developed and deployed independently (by completely separate teams) ● Cons ○ Service discovery? ○ Should services have some organization, or are they all equals? ○ Overall system complexity Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
126	2	111	30	0	Architecture #5: Microservice ● Microservices are ○ Highly scalable ○ Trendy ● For example - microservices at Netflix: ○ 100s of microservices ○ 1000s of daily production changes ○ 10,000s of instances ○ BUT… only 10s of operations engineers https://medium.com/refraction-tech-everything/how-netflix-works-the-hugely-simplified-complex-stuff-that-happens-every-time-you-hit-play-3a40c9be254b
127	2	116	31	0	Monoliths vs. microservices Microservice Higher value is better (productivity) Monolith Martin Fowler’s Microservices Guide - https://martinfowler.com/microservices/
128	2	117	32	0	HTTP basics HTTP basics
129	2	118	33	0	What is HTTP? ● HTTP stands for "HyperText Transfer Protocol" ● Originally developed (1989-1991) by Tim Berners-Lee as a protocol for transmitting web pages. ○ HTML is a hypertext markup language and HTTP is a network protocol for transferring the hypertext across the network. ● Over time HTTP has evolved into a general-purpose character-based protocol for communicating on the Web. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
130	2	119	34	0	HTTP is asymmetric ● It distinguishes between client and server. ● The client initiates a request, and the server replies by sending a response. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
131	2	120	35	0	HTTP is stateless ● Each request / response pair is independent. ● If the client intends the request to be part of a session, then the request must include all of the data needed to allow the server to resume the session at that point. ○ We'll see later how this data can be included in the request. ● We say "HTTP is stateless but not sessionless" Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
132	2	121	36	0	HTTP is an application layer protocol ● HTTP is an application layer protocol sitting on top of TCP/IP layer ● Data are sent over TCP, or over a TLS-encrypted TCP connection ● Used for fetching hypertext documents, images, videos and other data. ● HTTP can also be used to fetch parts of documents to update a webpage on demand. https://developer.mozilla.org/en-us/docs/Web/HTTP/Overview
133	2	122	37	0	HTTP client-server communication ● HTTP request (client → server) ○ Client’s HTTP request includes: start-line, headers, and body. ○ Headers define the kind of data (HTML, JSON, image, video, etc.) the client is sends and/or expects to receive in response to the request. ○ Headers may also include many other kinds of metadata, and the set of possible headers has grown tremendously over the years. ● HTTP response (client ← server) ○ Server’s HTTP response also includes: start-line, headers, and body. ○ Headers indicate whether the request was successful or not, the formats in which the reply data is transmitted, etc. ● More technical description of HTTP messages: https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Messages
134	2	123	38	0	Flow of HTTP messages Step 1: Client opens a TCP connection ● This is the connection over which data will flow ● Client can create a fresh connection or re-use an existing one. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
135	2	123	39	0	Flow of HTTP messages Step 2: Client sends an HTTP request ● Request method (verbs) ● Version ● Path (URL) ● Headers ● Body (optional) ○ Separated from the headers by a blank line Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
136	2	125	40	0	HTTP methods (verbs) ● Client’s each request comes with a method. ● There are just a few of these. Here are the ones that you should know (often called CRUD operations): ○ GET: requests a representation of a resource ○ POST: requests the server create a new resource ○ PUT: requests the server to replace a resource ○ DELETE: requests the server to delete a resource ● These methods often map to the CRUD operations in database ○ Acronym refers to the four main operations for data management: creating, reading, updating, and deletion Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
137	2	123	41	0	Flow of HTTP messages Step 3: Server interprets the request ● “example.com” identifies the host (the server's location) ● the rest of the request is the path here “/listener” ○ this might be a path in the server's file system ○ or it could be anything at all… ○ it's entirely up to the server to interpret the path Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
138	2	123	42	0	Flow of HTTP messages Step 4: Server sends a response ● Status code & message ● Version ● Some headers ● And maybe a response body Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
139	2	123	43	0	Flow of HTTP messages Step 5: Client closes or reuses the connection Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
140	2	129	44	0	REST protocols REST protocols
141	2	130	45	0	Your app relies on other apps for services ● Authentication ○ Login with Google / Apple / Facebook ○ SMS auth with Firebase Auth ● Sending / receiving email ○ SendGrid, MailGun, MailChimp ● Telephony, text messaging, video chat NodeJS, MongoDB Google Service Java, MySQL TMooddo s1 MLoogdin 2s MMoadile 3r REST service REST service REST service ○ Twilio APIs Productivity App Frontend Database Database Database “Dumb” REST App Server ● AI integration SMeoadrc 4h Engine MAnoadl y5tics MSoocdi a6l Crawler REST service REST service REST service ○ OpenAI APIs Database Database Database Java, Neo4J C#, SQLServer Python, MongoDB Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
142	2	131	46	0	What we'd like ● A magic abstraction: remote procedure call (RPC) Caller Machine Callee Machine User Code User Code local call local call work local local return return Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
143	2	132	47	0	Obstacles to magic RPC ● Transmission delays (latency) ● Can the client do something useful in the meantime? ○ Asynchrony ○ "mask latency with multiprocessing" → complexity ● Client / server mismatch ○ Different languages ○ Different data representations ○ Wire-transmission formats ○ More complexity Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
144	2	133	48	0	Solution - just use the web! ● Implement your protocol via HTTP. ● Of course, then you have to define your XML/RPC, SOAP, protocol. REST, etc. ● You'll want to define it in some standard HTTP metalanguage, so client and server can TCP agree on its meaning. Network layer ● But that means the client-human and server-human have to agree on a standard Link layer metalanguage. ● Lots of choices: XML/RPC, SOAP, WSDL, or ... Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
178	3	167	22	0	Extending promises with callbacks ● Assume that p1 is a promise that has .then property in it. ● const p2 = p1.then(callback) creates a new promise object that represents the result of promise p1 followed by the callback (if p1 fulfills) ● This creates a new promise.
146	2	135	50	0	REST: Representational State Transfer ● Defined by Roy Fielding in his 2000 Ph.D. dissertation (UCI) “Throughout the HTTP standardization process, I was called on to defend the design choices of the Web. That is an extremely difficult thing to do... I had comments from well over 500 developers, many of whom were distinguished engineers with decades of experience. That process honed my model down to a core set of principles, properties, and constraints that are now called REST.” ● REST is not just a transport protocol… nor a protocol definition language… REST is a SW design philosophy. ● Interfaces that follow REST principles are called RESTful. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
147	2	136	51	0	REST principles Single server ● Client calls server, server responds. That's it. ● Separation of concerns: client doesn't worry about data, server doesn't worry about UI. ● Server may pass request on to other machines, but that's not visible to the client. Stateless ● No session state in the server. ● Each client request must contain all the information the server needs to process the request. Uniform interface ● Associate URIs with resources. Uniform cacheability ● Requests must classify themselves as cacheable or not. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
148	2	137	52	0	REST principles: single server ● Server is abstracted as a single box ● Client calls the server, server doesn’t call the client ● Enables separation of concerns: ○ Client doesn’t worry about how the server does its business ○ Server doesn't worry about UI Server Client Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
149	2	137	53	0	REST principles: single server ● Enables a flexible SW design. ● Different servers can have Client External different responsibilities. Cache Web Internal Servers Cache ● Client sees just a single server. Client sees Misc none of thisA!pp Services Servers Database servers Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
150	2	139	54	0	REST principles: stateless ● Each client request contains Server 1 all information necessary to 1 service the request. st e u q e R ● The client doesn't have to Request 2 Server 2 write a sequence of requests R Client e q u e s to get their work done. t 3 Server 3 ● So requests can be farmed out to different servers. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
151	2	140	55	0	REST principle: uniform interface ● URIs should hierarchically identify nouns describing resources that exist ● Actions that can be taken with resources are specified by the HTTP methods (verbs) ● So, in summary: nouns for resources, verbs for actions. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
152	2	141	56	0	Uniform interface: the nouns ● Nouns are represented as URIs (uniform resource identifiers) ● In a RESTful system, the server is visualized as a store of resources (nouns), each of which has some data associated with it. ● URIs represent these resources. Examples: ○ /cities/losangeles ○ /transcripts/220000/undergraduate (Student ID 0000 has several transcripts in the system; this is the undergraduate one) ● Bad naming examples that fail REST principles ○ /getCity/losangeles ○ /getCitybyID/50654 ○ /Cities.php?id=50654 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
153	2	142	57	0	Uniform interface: the verbs ● Verbs are represented as HTTP methods ● In REST, there are mainly four things you do with a resource 1. GET: requests the server to respond with a representation of the resource 2. POST: requests the server to create a resource (there are several ways in which the value for the new resource can be transmitted) 3. PUT: requests the server to replace the value of the resource by the given value 4. DELETE: requests the server to delete the resource But there’s more available: PATCH (like PUT, but only partial modifications), HEAD (like GET, but only metadata), and OPTIONS (what method is allowed on URL?) Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
154	2	143	58	0	Request parameters There are (at least) 3 ways to associate parameters with a request: 1. Path parameters ○ Specify portions of the path to the resource. ○ For example, your REST protocol might allow a path like: /transcripts/220000/undergraduate 2. Query parameters ○ These are part of the URI and are typically used as search items. ○ For example, your REST protocol might allow a path like: /transcripts/undergraduate?lastname=Burxonov&firstname=Sardor 3. Request body – fully customizeable Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
155	2	144	59	0	Example interface: a todo app ● Resource: /todos ○ GET /todos - get list all of my todo items ○ POST /todos - create a new todo item (data in body) a path parameter ● Resource: /todos/:todoItemID ○ GET /todos/:todoItemID - fetch a single todo item by id ○ PUT /todos/:todoItemID - update a single todo item (data in body) ○ DELETE /todos/:todoItemID - delete a single todo item Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
156	2	145	60	0	REST principle: uniform cacheability ● Requests and responses Server 1 are clearly classified as 3rd party 1 cache st cacheable or not. u e q e R ● Enables use of generic Request 2 Server 2 caches that don’t know Client anything about the R e q u e structure of what they s t 3 cache - just what can be Server 3 cached. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
157	3	1	1	0	(CS360) Fundamentals of Software Engineering Async functions Lecture 4 Dr. Qobiljon Toshnazarov
158	3	2	2	0	Outline Asynchronous programming: ● Event handler model ● Promise (.then and .catch properties) ● Async / await
159	3	148	3	0	Sync vs. async programming ● Synchronous programming ■ Tasks are executed sequentially ■ Blocking execution (operations wait for the previous one to complete) ■ Makes processes are simple and predictable With sync. programming, program may handle 4 tasks in ■ But can be slow for time-consuming (large) operations 45 seconds overall. ● Asynchronous programming ■ Tasks are executed concurrently (i.e., in parallel) ■ Non-blocking execution (+better resource utilization) ■ Can be relatively complex due to use of callbacks, promises, or async/await syntax, etc. With async. programming, ■ Efficient method for performing time-consuming operations program may handle 4 tasks in 20 seconds overall.
160	3	149	4	0	Event handler model Event handler model
161	3	150	5	0	JavaScript runtime environment Two pieces of software (in browsers, Node.js, etc.) work together to run your JS code: JavaScript engine ● Code compilation / parsing ● Code execution Host environment ● Provides various APIs specific to a host ● For instance, file system, networking, process management, HTML DOM, etc. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
162	3	150	6	0	JavaScript runtime environment ● JS engine asks the host environment to do some work / operation ● JS engine provides an asynchronous callback (function) to be called after host environment is done with the work ● The function is called “asynchronous” because JS engine does not have to stop and wait until the work is done ● Callback simply waits to be triggered by the host environment later on, meanwhile JS engine continues doing its own work
163	3	152	7	0	JavaScript event handlers ● An event handler is a function that is waits to be executed when some event happens. ● In Javascript, all the event handlers work in the same address space. ● That means that handlers can communicate through a shared state. ● It also means that switching from one handler to another can be fast. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
164	3	152	8	0	JavaScript event handlers The running event The pool of waiting event handlers handler One of the event handlers is running; the others are waiting Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
165	3	154	9	0	JavaScript event handler ● At any time, one event handler is running and the others are waiting. ● Here's an event handler. The color of the head tells us whether it's ready for execution: green if it's ready, red if not. ● This one is not ready: it's still waiting for its event to happen. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
166	3	154	10	0	JavaScript event handler ● There are roughly 3 kinds of events that an event handler may be waiting for: ○ Some timer has reached a specific value. ○ Some input/output event occurs. ○ Some other event handler or event handlers complete. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
167	3	156	11	0	Example: timer event handler setTimeout(() => { console.log(new Date().toLocaleTimeString()); }, 1000); setTimeout(() => { console.log(new Date().toLocaleTimeString()); }, 2000); setTimeout(() => { console.log(new Date().toLocaleTimeString()); }, 3000);
168	3	157	12	0	Event handler semantics ● JavaScript has "run-to-completion" semantics (when an event handler runs, it always runs to completion) ● It is never interrupted. ● This means that a handler doesn't have to worry about some other handler overwriting its memory. ● But this also means that some high-priority task (like responding to a keystroke) can't interrupt a lower-priority task. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
169	3	158	13	0	Example: alert() blocks event loop setTimeout(() => { console.log(new Date().toLocaleTimeString()); alert("Blocking"); }, 1000); setTimeout(() => { console.log(new Date().toLocaleTimeString()); }, 2000); setTimeout(() => { console.log(new Date().toLocaleTimeString()); }, 3000);
170	3	157	14	0	Event handler semantics ● So, you want to organize your computation into many handlers, each of which runs to completion quickly. ● This is sometimes called "cooperative multiprocessing". ● The JavaScript programming model is designed to facilitate this, which revolves around concept of “Promises”. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
171	3	160	15	0	Promise Promise
172	3	160	16	0	Promise ● A promise is an object representing the eventual completion or failure of a handler. ● A promise is always in one of three states: 1. Fulfilled – (or resolved) meaning that the handler completed successfully 2. Rejected – meaning that the handler failed 3. Pending – promise is not completed yet (neither fulfilled nor rejected) ● In JS’s perspective: promise is either fulfilled or rejected. And once a promise is fulfilled or rejected, it stays that way. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
173	3	162	17	0	Event handlers as callable objects ● A promise may have a .then property, which is a handler to be invoked when the promise is fulfilled ● A promise may also have a .catch property, which is a handler to be invoked when the promise is rejected Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
174	3	163	18	0	Promises ● Mostly likely, you will NOT be building promises from scratch - you will probably use a library or a snippet. ● Asynchronous operations (like input/output operations) are typically exported as functions that return promises. ● So, now we concentrate on the use of promises by utilizing the .then and .catch properties. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
175	3	164	19	0	Examples for promise For our examples, we'll create promises using a function with the following interface: function makePromise1( promiseName: string, shouldSucceed: boolean, value?: number ) : Promise<number> // function returns a promise that fulfills with the given value // in case shouldSucceed parameter is true, otherwise rejected. // 'value' is optional - fulfills with the given value. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
176	3	165	20	0	One possible implementation… function makePromise1( promiseName: string, shouldSucceed: boolean, value?: number ): Promise<number> { console.log(`creating new promise ${promiseName}`) return new Promise((resolve, reject) => { console.log(`promise ${promiseName} now running; flag = ${shouldSucceed}`) setTimeout((): void => { if (shouldSucceed) { console.log(`promise ${promiseName} now fulfilling with ${value}`) resolve(value) } else { console.log(`promise ${promiseName} now rejecting`) reject(`promise ${promiseName} failed`) } }, 1000) }) }
177	3	166	21	0	makePromise1() in action import makePromise1 from './promiseMaker' console.log("main handler starting") main handler starting creating new promise promise100 main handler finished // create a new promise, promise promise100 now running; flag = true // labeled "promise100", promise promise100 now fulfilling with 10 // and throw it in the event pool let p1 = makePromise1("promise100", true, 10) // finish the main handler console.log('main handler finished') // and go on to run any handlers left in the pool
179	3	167	23	0	Extending promises with callbacks ● const p2 = p1.then(callback) ● p2 is ready when p1 is completed (either fulfilled or rejected) ● When p2 is pulled from the event queue, the state of p1 promise is looked up: ○ In case p1 was fulfilled, its value is passed to the callback, and p2 completes normally. Note that p1 does not run again here.
180	3	167	24	0	Extending promises with callbacks ● In case p1 was rejected, then p2 exits with an unhandled error.
181	3	170	25	0	Linking the event handlers p3 is a new promise that includes import makePromise1 from './promiseMaker' both p1 and the new callback. console.log("main handler starting") main handler starting creating new promise p1 const p1 = makePromise1("p1", true, 10) creating new promise p2 const p2 = makePromise1("p2", true, 20) main handler finishing const p3 = p1.then(n => { p4 is a new promise that includes console.log(`p1 passed ${n} to its callbackp`r)omise b o p th 1 p n 3 o w a n r d u t n h n e i n n e g w ; c f a l ll a b g a c = k true }) promise p1 now fulfilling with 10 p1 passed 10 to its callback const p4 = p3.then(() => { p3 passed no value to its callback console.log(`p3 passed no value to its callback`) promise p2 now running; flag = true }) promise p2 now fulfilling with 20
182	3	170	25	1	console.log("main handler finishing\\n")
183	3	171	26	0	.then callbacks ignore rejected promises import makePromise1 from './promiseMaker' console.log("main handler starting") // p1 will be rejected const p1 = makePromise1("p1", false, 10) const p2 = makePromise1("p2", true, 20) // p3 completes without running the callback (throws an error instead) const p3 = p1.then(n => { console.log(`p1 passed ${n} to its callback`) }) // and p4 similarly completes without running its // callback, so it completes with an unhandled exception const p4 = p3.then(() => { console.log(`p3 passed no value to its callback`) }) console.log("main handler finishing\\n")
184	3	172	27	0	Use a .catch callback to catch rejected promises main handler starting import makePromise1 from './promiseMaker' creating new promise p1 console.log("main handler starting") creating new promise p2 main handler finishing // p1 will be rejected const p1 = makePromise1("p1", false, 10) promise p1 now running; flag = false const p2 = makePromise1("p2", true, 20) promise p1 now rejecting p3 was rejected; the rejection message // p3 throws an error was "promise p1 was rejected" const p3 = p1.then(n => { promise p2 now running; flag = true console.log(`p1 passed ${n} to its callback`) }) promise p2 now fulfilling with 20 // but p4 catches it const p4 = p3.catch((e) => { console.log(`p3 was rejected; the rejection message was "${e}"`) }) console.log("main handler finishing\\n")
185	3	173	28	0	You can even link more than one callback to a promise main handler starting creating new promise p1 import makePromise1 from './promiseMaker' creating new promise p2 main handler finishing console.log("main handler starting") promise p1 now running; flag = true const p1 = makePromise1("p1", true, 10) const p2 = makePromise1("p2", true, 20) promise p1 now fulfilling with 10 callback A says: p1 passed 10 to me const p3 = p1.then(n => { callback B says: p1 passed 10 to me, too console.log(`callback A says: p1 passed ${n} to me`) promise p2 now running; flag = true }) promise p2 now fulfilling with 20 const p4 = p1.then(n => { console.log(`callback B says: p1 passed ${n} to me, too`) }) console.log("main handler finishing\\n")
186	3	174	29	0	Synchronizing event handlers import makePromise1 from './promiseMaker' main handler starting console.log("main handler starting") creating new promise p1 creating new promise p2 const p1 = makePromise1("p1", true, 10) const p2 = makePromise1("p2", true, 20) main handler finishing const p3 = p1.then(n => { promise p1 now running; flag = true console.log(`callback A says: p1 passed ${n} to me`); return n+1 promise p1 now fulfilling with 10 }) callback A says: p1 passed 10 to me callback B says: p1 passed 10 to me, too const p4 = p1.then(n => { p3 returned 11 console.log(`callback B says: p1 passed ${n} to me, too`); return n+100 p4 returned 110 }) promise p2 now running; flag = true promise p2 now fulfilling with 20 const p5 = Promise.all([p4,p3]) .then(values => { console.log(`p3 returned
187	3	174	29	1	${values[1]}`); console.log(`p4 returned ${values[0]}`) }) console.log("main handler finishing\\n")
188	3	175	30	0	Async / await Async / await
189	3	176	31	0	Promise with async f1 and f2 async functions that f3 and f4 async functions that also promise and resolve to a result: promise but fail to resolve // promises a string result // promises... but throws error function f1() { function f3() { return Promise.resolve("f1") return Promise.reject("f3 error") } } // or equivalently // or equivalently async function f2() { async function f4() { return "f2" throw "f4 error" } }
190	3	177	32	0	Invoke async with await or .then & .catch One way to invoke: just call async Another way using the await functions and get Promise objects keyword before function invocation console.log(await f1()) // OUT: "f1" console.log(await f2()) // "f2" const p1 = f1() // Promise object try { const p2 = f2() // Promise object await f3() const p3 = f3() // Promise object } catch (e) { const p4 = f4() // Promise object console.log(e) // "f3 error" } p1.then(console.log) // OUT: "f1" try { p2.then(console.log) // "f2" await f4() p3.catch(console.log) // "f3 error" } catch (e) { p4.catch(console.log) // "f4 error" console.log(e) // "f4 error" }
191	3	178	33	0	Same thing with .then & .catch p1.then(console.log, console.log) // "f1", not called p2.then(console.log, console.log) // "f2", not called p3.then(console.log, console.log) // not called, "f3 error" p4.then(console.log, console.log) // not called, "f4 error" p1.then(console.log).catch(console.log) // "f1", not called p2.then(console.log).catch(console.log) // "f2", not called p3.then(console.log).catch(console.log) // not called, "f3 error" p4.then(console.log).catch(console.log) // not called, "f4 error"
192	3	179	34	0	Things to know about async/await ● An async function always returns a promise. ● Because a promise object is created, it is automatically thrown in the pool of event handlers to be run when ready. ● The async keyword tells the compiler to do the translation into .catch and .then (this is specific to JS!) ● Therefore, await makes no sense except in the body of an async function. ● The try/catch clause is optional.
193	3	180	35	0	Long story to reach a simple conclusion ● A useful but complex pattern of behaviors is encapsulated in a single language construct. ● In the old days, this might have been a "design pattern" ● Illustrates the power of programming-language technology.
194	4	1	1	0	(CS360) Fundamentals of Software Engineering Overview and design principles Lecture 1 Dr. Qobiljon Toshnazarov
195	4	2	2	0	Outline ● Administrivia ■ About instructor ■ Course logistics ■ Syllabus overview ● Introduction ■ General program design principles ■ Coding standards ■ Object oriented principles
196	4	183	3	0	Course instructor ● Instructor ■ Name: Qobiljon Toshnazarov ■ Email: q.toshnazarov@newuu.uz ■ OH: Mondays 14:00–18:00, UCA 218 ● Academic background ■ (2024) PhD in Energy Engineering, KENTECH ■ (2020) MS in ECE, Inha University ■ (2018) BS in CSE, Inha University in Tashkent
197	4	183	4	0	Course instructor ● Professional experience (part of it) ■ (2024 ~ present) Senior lecturer at New Uzbekistan University ■ (2022 ~ present) Software engineer at Toptal ■ (2018 ~ 2024) Researcher at Intelligent Mobile Computing Lab ● Courses taught ■ Fundamentals of Software Engineering @ New Uzbekistan University ■ Object Oriented Programming @ New Uzbekistan University ■ Artificial Intelligence @ New Uzbekistan University ■ Application Programming with Java @ Inha University ■ Computer Networks @ Inha University ■ Wireless Communications @ Inha University ■ Data Structures @ KENTECH ■ Data Science @ KENTECH
198	4	183	5	0	Course instructor Course instructor
199	4	186	6	0	Course logistics ● Communication ■ Communication method: email ● Course materials ■ Lecture slides ■ Laboratory manual ■ Assignments ■ Textbook (e-versions) ■ Google doc updated weekly: tiny.cc/cs360 ■ Also uploaded on HeRo LMS platform Course materials: tiny.cc/cs360 ● Weekly assignments ■ Assignments are submitted via HeRo LMS platform
200	4	187	7	0	Schedules of exams & HW WEEK TOPIC 1 - We are here! 2 - 3 Assignment 1 4 Assignment 2 5 Assignment 3 6 Assignment 4 7 Assignment 5 8 Midterm exams 9 - 10 Assignment 6 11 Assignment 7 12 Assignment 8 13 Assignment 9 14 Assignment 10 15 - 16 Final exams
201	4	188	8	0	Topics in syllabus (overview) WEEK TOPIC 1 Overview and design principles We are here! 2 Design documentation and patterns 3 Software architecture, HTTP and REST 4 Async functions 5 Testing 6 User interfaces 7 - 8 - 9 Maintenance 10 Code improvement 11 Distributed systems & security 12 Continuous development (CD) 13 Engineering equitable software 14 Estimation and productivity 15 - 16 -
202	4	189	9	0	Late policy for assignments Your work is late if it is not turned in by the deadline. ● 10% will be deducted for late HW assignments turned in within 24 hours after the due date ● HW assignments submitted more than 24 hours late will receive a zero ● If you're worried about being busy around the time of a HW submission, please plan ahead and get started early
203	4	190	10	0	Grading policy ➢ Assignments: 30% ➢ Midterm exam: 30% ➢ Final exam: 40%
204	4	191	11	0	SE overview and design principles SE overview and design principles
205	4	192	12	0	What is software engineering? ● Software engineering (SE) encompasses the tools and processes that we use to design, construct and maintain programs over time.
206	4	193	13	0	Good code is necessary but not sufficient ● Developing software is a systems enterprise ○ There are many stakeholders ○ How to determine the requirements? ○ How to design code for: ■ Reusability ■ Readability ■ Scalability and other factors? ○ How to organize the development process? ○ How to make sure you've built the thing right? ○ How to make sure you've built the right thing?
207	4	194	14	0	SE includes tools and processes ● The answers to those questions will depend on things like: ○ Size of the team ○ Size of the product ○ Longevity of the product ● There's no one "right" way; there are always tradeoffs. ● But there are best practices, which we will expect you to follow.
208	4	195	15	0	Learning objectives for this course: ● By the end of this course you will ○ Be able to define and describe the phases of the software engineering lifecycle. ○ Be able to explain the role of key processes and technologies in modern software development. ○ Be able to productively apply instances of major tools used in elementary SE tasks. ○ Design and implement a portfolio-worthy software engineering project in a small team environment that can be showcased to recruiters.
209	4	196	16	0	Technology In our tutorials we use: ● TypeScript + Python as implementation languages ● React / VueJS for web pages (or some other tool with SSR is fine as well) ● Some library for design elements (Plugins of TailwindCSS, Frameworks like Chakra UI, etc.) ● WebStorm, PyCharm, Visual Studio Code ● + Git, etc...
210	4	197	17	0	Academic integrity ● Students must work individually on all homework assignments. ● We encourage you to have high-level discussions with other students in the class about the assignments, however, we require that when you turn in an assignment, it is only your work. That is, copying any part of another student's assignment is strictly prohibited. ● Keep in mind: if you’re stealing someone else's work, you’re failing the class. ● You are also responsible for protecting your work from being copied. If someone uses your work, with or without your permission, you fail the class.
211	4	197	18	0	Academic integrity ● You are free to reuse small snippets of example code found on the Internet (e.g. via stack overflow) provided that it is attributed. ● Same goes with ChatGPT as well. If you use code provided by ChatGPT, you must do so by attributing it. ● If you are concerned that by reusing and attributing that copied code it may appear that you didn't complete the assignment yourself, then please raise a discussion with the instructor. ● If you are in doubt whether using others' work is allowed, you should assume that it is NOT allowed unless the instructors confirm otherwise.
212	4	199	19	0	General Program Design Principles General Program Design Principles
213	4	200	20	0	The Challenge: Controlling Complexity •Software systems must be comprehensible by humans •Why? Software needs to be maintainable • continuously adapted to a changing environment • Maintenance takes 50–80% of the cost •Why? Software needs to be reusable • Economics: cheaper to reuse than rewrite! Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
214	4	201	21	0	The challenge: controlling code complexity •Software systems must be comprehensible by humans • How? Make programs readable. • How? Make programs flexible. • How? Make programs modular. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
215	4	202	22	0	The biggest obstacle: coupling • Two pieces of code are coupled if a change in one There's a fancy demands a change in the other. word for this: • A coupling represents an agreement between the connascence (meaning "born two pieces of code. together") • They may agree on: • names • order (e.g. of arguments) • meaning (e.g. meaning of data) More coupling • algorithms means less • The more two pieces of code are coupled, the readability, less harder they are to understand and modify: you modifiability have to understand both to understand either of them. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
216	4	203	23	0	Five general-purpose principles Good idea: make a sticky note with this list and keep it on Five general principles your laptop screen. 1. Use good names 2. Design your data 3. One method/one job (single responsibility) 4. Don't repeat yourself 5. Don't hardcode things that are likely to change Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
217	4	204	24	0	Principle 1. Use good names • The name of a thing is a first clue to the reader about what the thing means. • Often, it's the only clue ☹ • Use good names for • Constants • Variables • Functions/methods • Data types Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
218	4	205	25	0	Good names for constants • Replace magic numbers with good names Where did that 1.06 come let salesPrice = netPrice * 1.06 from? Oh, it's the sales tax? Are there many occurrences of that 1.06 in your code? const salesTaxRate = 1.06 (Probably!) Will the sales let salesPrice = netPrice * salesTaxRate tax rate ever change? (Probably!) Let's fix it! Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
219	4	206	26	0	But use good names! int a[100]; for (int i = 0; i <= 99; i++) a[i] = 0; Even if you search for 100, you'll miss the 99! int SIZE = 100; int a[SIZE]; for (int i = 0; i <= SIZE-1; i++) a[i] = 0; But use GOOD int ONE_HUNDRED = 100; No.....! names! int a[ONE_HUNDRED]; … Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
220	4	207	27	0	Good names for variables and types What do these Better names var t : number variables mean? would give the var l : number reader a clue. Does 'temp' mean 'temporary', var temp : number or 'temperature', or something var loc : number else? Good names for the data var temp : Temperature types solves var loc : SensorLocation the problem. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
221	4	208	28	0	Good names for functions and methods What are you checking it function checkLine () : boolean for? Length? Illegal Syntax? or what? function isLineTooLong () : boolean Ahh, now we know! Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
222	4	208	29	0	Good names for functions and methods • Use noun-like names for functions or methods that return values, e.g. Your workplace should let c = new Circle(initRadius) have coding standards let a = c.diameter() for things like this. • not: let a = c.calculateDiameter() • Reserve verb-like names for functions or methods that perform actions, like table1.addItem(student1,grade1) Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
223	4	210	30	0	Principle 2. Design your data •You need to do three things: 1. Decide what part of the information in the "real world" needs to be represented as data 2. Decide how that information needs to be represented as data 3. Document how to interpret the data in your computer as information about the real world Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
224	4	211	31	0	Example: • Assume I am wearing a red shirt, and I've decided I need to represent that fact in my program. • How should I represent that in my program? • I need to represent the color red. Possibilities: • "red" (English text) • "RED" (English text) • "Lāla" (Hindi, according to Google) • #ff0000 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
225	4	211	32	0	Example: • And of course we also need to represent my shirt. • In that representation, we have to represent its color. • Here's one of many possibilities: type Shirt { color : Color // the color of the shirt } let myShirt = {color: 0xff000} // my shirt Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
226	4	213	33	0	The big picture type Shirt { representation color : Color // the color My shirt is // of the shirt } red interpretation // my shirt let myShirt = {color: 0xff000} • How do we know that these are connected? • Answer: we have to write down the interpretation • In our Typescript infrastructure, we do that with the comments. Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
227	4	214	34	0	Principle 3: One method/one job • Each class, and each method of that class, should have one job, and only one job The fancy name for this is "The • If your method has more than one job, split it into Single 2 methods. Why? Responsibility • You might want one part but not the other Principle". You • It's easier to test a method that has only one job can use this if you • You call both of them if you need to. want to impress • or write a single method that calls them both your coop interviewer. • Same thing for classes. 34 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
228	4	215	35	0	Principle 4: Don't repeat yourself • If you have some quantity that you use more We saw this before than once, give it a name and use the name. with the sales tax • That way you only need to change it in one place! and array bound examples. • And of course you should use a good name • If you have some task that you do in many places, make it into a procedure. This is called "Single Point of • If the tasks are slightly different, turn the Control" differences into parameters. 35 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
229	4	216	36	0	A real example function testequal <T> (testname: string, actual: T, correct: T){ it(testname, function (){ assert.deepEqual(actual, correct) Think of how }) much typing this } saves! describe('tests for count_local_morks', function () { testequal('empty crew', count_local_morks(ship1), 0) testequal('just Mork', count_local_morks(ship2), 1) Plus, if I ever need testequal('just Mindy', count_local_morks(ship3), 0) to change what testequal('two Morks', count_local_morks(ship4), 2) testequal does, I testequal( 'drone has no Morks', can do it all in one count_local_morks(drone1), place. 0 ) }) 36 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
230	4	217	37	0	Principle 5: Don't hardcode things that are likely to change • "No magic numbers" and "Don't Repeat Yourself" are already examples of this. • General strategy: If there something that might change, give it a name • if it's not already a "thing", refactor to make it a "thing" • many strategies for this; let's look at one of them 37 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
231	4	218	38	0	Example • Imagine we are computing income tax in a state where there are four rates: • One on incomes less than $10,000 • One on incomes between $10,000 and $20,000 • One on incomes between $20,000 and $50,000 • One on incomes greater than $50,000 • You might write something like in the following slide 38 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
232	4	219	39	0	You might write something like function grossTax(income: number): number { This also violates if ((0 <= income) && (income <= 10000)) { return 0 } one function/one else if ((10000 < income) && (income <= 20000)) { return 0.10 * (income - 10000) } job: else if ((20000 < income) && (income <= 50000)) it finds the right { return 1000 + 0.20 * (income - 20000) } bracket AND else { return 7000 + 0.25 * (income - 50000) } } calculates the appropriate tax • What might change? • The boundaries of the tax brackets might change Not so terrible.. • The number of brackets might change Ouch! Do you really want to dive into that conditional? 39 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
233	4	220	40	0	So let's represent our data differently // defines the tax bracket for income lower < income <= upper. // if upper is null, then lower < income (no upper bound) type TaxBracket = { lower: number, upper: number | null, base : number rate : number The brackets are } now a "thing". let brackets : TaxBracket[] = [ All the data is in {lower:0, upper:10000, base:0, rate:0}, one place, so we {lower:10000, upper:20000, base:0, rate:0.10}, have a Single {lower:20000, upper:50000, base:1000, rate:0.20}, {lower:50000, upper: null, base:7000, rate:0.25} Point of Control ] 40 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering
234	4	221	41	0	And now it's easy to rewrite our function // defines the incomes covered by a bracket function isInBracket(income:number, bracket:TaxBracket) : boolean { if (bracket.upper == null) { return (bracket.lower <= income) } else { return ((bracket.lower <= income) && (income < bracket.upper))} } function taxByBracket(income:number,bracket:TaxBracket) : number { return bracket.base + bracket.rate * (income - bracket.lower) } function grossTax2 (income:number, brackets: TaxBracket[] ) : number { return taxByBracket(income,income2bracket(income,brackets)) } And we are back to one function/one job. 41 Contents adapted from CS4530/5500, Spring 2021: Fundamentals/Foundations of Software Engineering (Released under the CC BY-SA license)
235	4	222	42	0	Coding standards Coding standards
236	4	222	43	0	Coding standards ● Reduce warnings ■ If possible reduce them to zero ● Include project requirements in the codebase ■ e.g., package.json, requirements.txt, makefile, etc.
237	4	222	44	0	Coding standards ● Use of version control system (VCS) is mandatory ■ For instance, you can use Git as your project’s VCS ■ “The palest of ink is better than the best memory” ■ Note: the code in the version control system should always compile, so, do not break the build!
238	4	222	45	0	Coding standards ● Re-read code! ■ Read code from good programmers to learn and benefit. ■ More eyes will help make better quality. ■ It’s best to do code reviews in writing, a simple email can suffice.
239	4	226	46	0	Correctness ● Correct is better than fast. ● Simple is better than complex. ● Prefer clarity over cuteness. ● Write code for people first, then machines.
240	4	227	47	0	Optimization ● Avoid premature optimization ■ i.e., trying to make the program run faster before ensuring the codebase works correctly. ■ “Premature optimization is the root of all evil”. ■ Do not optimize prematurely! ● Remember: “It is far easier to make a correct program fast than to make a fast program correct”.
241	4	228	48	0	Coding style ● Use “const” proactively, i.e., immutability ■ (for languages that support this) ● Handle variables properly ■ Avoid magic numbers / strings / etc, i.e., hardcoded numeric/character/etc. literals in the code. ■ Declare variables as locally as possible. ■ Always initialize variables (at least to null)
242	4	228	49	0	Coding style ● Minimize global and shared data ■ Do not use “static” keyword in your code until explicitly asked (or required) ■ Thread-local - avoid sharing resources between threads whenever possible. ● Do not expose internal information from an entity that provides an abstraction ■ a.k.a., information hiding
243	4	230	50	0	SW engineering goals Your software should be: ● Expandable ● Maintainable ● Understandable ● Stable ● And preferably implemented, tested, and reviewed by more than one person…
244	4	231	51	0	Object oriented principles S ingle responsibility Open-closed L iskov substitution I nterface segregation Dependency inversion
245	4	232	52	0	SOLID principles ● Set of guidelines or best practices for object-oriented programming that help to create software that is maintainable, flexible, and scalable. ● Term “SOLID” is an acronym for five different principles focusing on a different aspect of SW development: ○ Single responsibility principle (SRP) ○ Open-closed principle (OCP) ○ Liskov substitution principle (LSP) ○ Interface segregation principle (ISP) ○ Dependency inversion principle (DIP)
246	4	233	53	0	Single responsibility principle ● One class should have only one responsibility. ○ Implementation: divide the responsibilities of a class into smaller, more focused classes. ● It means that one class should have only one reason to change. ● Leads to low coupling between classes and makes the code more maintainable and scalable.
247	4	234	54	0	Example: single responsibility Responsibility: maintaining customer details class CustomerDetails { private: class Customer { string name; private: int id; string name; public: int id; void setName(string name); vector<Item> items; string getName(); float totalAmount; void setId(int id); public: int getId(); void setName(string name); }; string getName(); void setId(int id); Responsibility: calculating the final bill int getId(); class BillingCalculator { void addItem(Item item); private: void removeItem(Item item); vector<Item> items; float calculateTotalAmount(); public: string generateInvoice(); void addItem(Item item); }; void removeItem(Item item); float calculateTotalAmount(); }; Interface of a Customer class. Responsibility: generating an invoice class InvoiceGenerator { Has several
248	4	234	54	1	responsibilities, such as: public: string generateInvoice( (1) maintaining customer details, CustomerDetails customerDetails, (2) calculating the final bill, and BillingCalculator billingCalculator ); (3) generating an invoice. };
249	4	235	55	0	Open-closed principle ● The open/closed principle states that a class must be both open and closed. ■ Open: means it has the ability to be extended. ■ Closed: means it cannot be modified other than by extension. ● i.e. we would like to be able to modify the behaviour without touching its source code
250	4	235	56	0	Open-closed principle ● Once a class has been approved for use after having gone through code reviews, unit tests, and other qualifying procedures, you don't want to change the class very much, just extend it. ● Changing base class can complicate all derived classes.
251	4	237	57	0	Example: open-closed class Shape { public: Create a new class Triangle that inherits from the virtual double area() = 0; }; Shape class and implements the area() method. In class Rectangle : public Shape { this way, we are adding new functionality without private: double width; modifying the existing code. double height; public: Rectangle(double width, double height); double area() override; class Triangle : public Shape { }; private: double base; class Circle : public Shape { double height; private: public: double radius; Triangle(double base, double height); public: double area() override; Circle(double radius); }; double area() override; }; Existing Shape class hierarchy. With OCP, one that wants to modify this hierarchy must only do so by extending the existing classes.
252	4	238	58	0	Liskov substitution principle ● If S is a subtype of T then objects of type T may be replaced with objects of type S ● Student is a subtype of Person, so anywhere I can have a Person, I can have a Student instead.
253	4	238	59	0	Liskov substitution principle Liskov substitution principle
254	4	240	60	0	Example: Liskov substitution Suppose you have following function that invokes base class Bird { public: Bird class’s fly() method: virtual void fly() = 0; }; void makeBirdFly(Bird& bird) { bird.fly(); class Eagle : public Bird { public: } void fly() override; }; class Penguin : public Bird { public: void fly() override; // throws exception With LSP, you should be able to replace objects of }; Bird with objects of any derived type (of Bird). class Ostrich : public Bird { public: Eagle eagle; void fly() override; // throws exception Penguin penguin; }; Ostrich ostrich; makeBirdFly(eagle); // okay, eagle can fly Bird class hierarchy. makeBirdFly(penguin); // error, penguin can't fly makeBirdFly(ostrich); // error, ostrich can't fly With LSP, all objects of base type may be replaced with
255	4	240	60	1	objects of derived types.
256	4	240	61	0	Example: Liskov substitution class Bird { public: virtual bool canFly() = 0; To solve the issue in previous slide, we }; class FlyingBird { can set up the hierarchy more public: bool canFly() override { appropriately. return true; } virtual void fly() = 0; }; class Crow : public FlyingBird { public: We can have a intermediate superclass void fly() override { cout << "Crow is flying" << endl; } called FlyingBird that represents the }; birds that can fly. class Penguin : public Bird { public: void canFly() override { return false; } };
257	4	242	62	0	Interface segregation principle ● Client should not be forced to depend on interfaces that it does not use. ○ Implementation is somewhat similar to SRP for classes, but it is for interfaces. ○ Implementation: break down larger interfaces into smaller, more specific interfaces. ● In other words, a class should not have to implement methods that it does not need.
258	4	243	63	0	Example: interface segregation class Printer { Client can use following class to print PDFs. public: class PDFPrintable : public Printable { virtual void printPDF() = 0; public: virtual void printHTML() = 0; void print() override; virtual void printPlainText() = 0; }; }; Printer interface, an abstract class. Client can use following class to print HTML. class HTMLPrintable : public Printable { Problem: client has to implement all public: methods to use even just one. void print() override; }; Client can use following class to print text. class Printable { class PlainTextPrintable : public Printable { public: public: virtual void print() = 0; void print() override; }; };
259	4	244	64	0	Dependency inversion principle ● High-level modules, which provide complex logic, should be easily reusable and unaffected by changes in low-level modules, which provide utility features. ● To achieve that, you need to introduce an abstraction that decouples the high-level and low-level modules from each other.
260	4	244	65	0	Dependency inversion principle ● High-level modules should not depend on low-level modules. ● Instead, both should depends on abstractions. ● Depend upon abstractions, and not upon concrete classes.
261	4	246	66	0	Example: dependency inversion Problem: A high-level Database class depends on a What if you want to switch to a low-level MySQLConnector class. So, high-level different database e.g., MongoDB? logic depends on a very specific database type. We would have to re-write the class Database { High-level class. public: high-level code due to changes in void addUser( low-level code! const string& name, const string& email ) { Depends on a MySQLConnector connector; class MySQLConnector { low-level class!! connector.connect(); public: Low-level class. string query = "INSERT INTO users (name, email)" void connect(); + "VALUES ('" + name + "', '" void query(const string& query); + email + "')"; }; connector.query(query); } };
262	4	246	67	0	Example: dependency inversion Solution: the high-level Database class depends on an Now, the low-level concrete classes abstraction IDatabaseConnector, instead of can be be easily switched, without concrete classes. affecting the high-level code. class Database { High-level class. class IDatabaseConnector {Abstraction. public: public: Database( Depends on an virtual void connect() = 0; IDatabaseConnector& connector abstraction. virtual void query( ) :connector_(connector) {} const string& query ) = 0; void addUser( }; const string& name, const string& email Low-level classes: ) { class MySQLConnector connector.connect(); : public IDatabaseConnector string query = "INSERT INTO users (name, email)" + "VALUES ('" + name + "', '" class MongoConnector + email + "')"; : public IDatabaseConnector
263	4	246	67	1	connector.query(query); } class PostgresConnector }; : public IDatabaseConnector
264	4	248	68	0	Unit testing ● Unit testing is a procedure used to validate that individual units of source code are working properly. ● Unit = smallest testable part of an application ○ For instance, in TypeScript smallest units are functions and classes ● Goal: isolate each part of the program and show that individual parts are correct.
265	4	249	69	0	Wrap up Wrap up
266	4	250	70	0	Multitasking and learning ● Distraction & divided attention: texting while driving? ● Multitaskers are inferior in cognitive control: filtering irrelevant info and task switching (Ophir et al., 2009) ● Lower scores (w/ laptop use) of the user and nearby users (secondhand smoking) (Cepeda et al. 2013)
267	4	251	71	0	Notes on the use of LLMs for learning ● While you may use LLMs for learning purposes (e.g., understanding terminologies, concepts) FYI: Limitations of using LLMs as coding assistants for ● Verify everything, and avoid blind use Computer Science students (Pirzado et al., 2024) of LLMs to complete tasks!!!
268	4	252	72	0	Thoughts on teaching It’s more important that everyone understand a topic than I finish a lecture on time. Blah blah, blah blah blah! ? ? ? ? Don’t be shy!!! If something confuses you… ? it probably confuses 5 other people too. So always ask questions if you’re confused! Always save more advanced questions for office hours or break. I reserve the right to wait until office hours to answer advanced questions.
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: shahmen
--

COPY public.courses (id, code, name) FROM stdin;
1	CS360	Fundamentals of Software Engineering
\.


--
-- Data for Name: document_topics; Type: TABLE DATA; Schema: public; Owner: shahmen
--

COPY public.document_topics (id, document_id, topic_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
86	2	1
87	2	2
88	2	88
89	2	89
93	2	93
94	2	94
95	2	95
96	2	96
97	2	97
99	2	99
100	2	100
102	2	102
103	2	103
104	2	104
105	2	105
106	2	106
107	2	107
108	2	108
109	2	109
110	2	110
111	2	111
112	2	112
113	2	113
114	2	114
116	2	116
117	2	117
118	2	118
119	2	119
120	2	120
121	2	121
122	2	122
123	2	123
125	2	125
129	2	129
130	2	130
131	2	131
132	2	132
133	2	133
134	2	134
135	2	135
136	2	136
137	2	137
139	2	139
140	2	140
141	2	141
142	2	142
143	2	143
144	2	144
145	2	145
146	3	1
147	3	2
148	3	148
149	3	149
150	3	150
152	3	152
154	3	154
156	3	156
157	3	157
158	3	158
160	3	160
162	3	162
163	3	163
164	3	164
165	3	165
166	3	166
167	3	167
170	3	170
171	3	171
172	3	172
173	3	173
174	3	174
175	3	175
176	3	176
177	3	177
178	3	178
179	3	179
180	3	180
181	4	1
182	4	2
183	4	183
186	4	186
187	4	187
188	4	188
189	4	189
190	4	190
191	4	191
192	4	192
193	4	193
194	4	194
195	4	195
196	4	196
197	4	197
199	4	199
200	4	200
201	4	201
202	4	202
203	4	203
204	4	204
205	4	205
206	4	206
207	4	207
208	4	208
210	4	210
211	4	211
213	4	213
214	4	214
215	4	215
216	4	216
217	4	217
218	4	218
219	4	219
220	4	220
221	4	221
222	4	222
226	4	226
227	4	227
228	4	228
230	4	230
231	4	231
232	4	232
233	4	233
234	4	234
235	4	235
237	4	237
238	4	238
240	4	240
242	4	242
243	4	243
244	4	244
246	4	246
248	4	248
249	4	249
250	4	250
251	4	251
252	4	252
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: shahmen
--

COPY public.documents (id, course_id, title, file_path) FROM stdin;
1	1	Lecture 2 - Design documentation and patterns - Google Slides	./pdfs/Lecture 2 - Design documentation and patterns - Google Slides.pdf
2	1	Lecture 3 - Software architecture, HTTP and REST - Google Slides	./pdfs/Lecture 3 - Software architecture, HTTP and REST - Google Slides.pdf
3	1	Lecture 4 - Async functions - Google Slides	./pdfs/Lecture 4 - Async functions - Google Slides.pdf
4	1	Lecture 1 - Overview and design principles - Google Slides	./pdfs/Lecture 1 - Overview and design principles - Google Slides.pdf
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: shahmen
--

COPY public.topics (id, name) FROM stdin;
3	Controlling SW complexity
4	SW design is more than code
5	Shared vocabulary in a SW project
6	Design languages
122	HTTP client-server communication
7	CRC cards
10	Agile alliance about CRC cards
11	CRC cards in practice
12	The metaphor: sketching the conspiracy
13	CRC cards in this course
14	CRC card template
15	CRC card for TemperatureSensor
16	TemperatureMonitor
17	TemperatureMonitor (contd.)
18	CRC card for TemperatureMonitor
19	IAlarm
20	SensorLocationMap
22	FireAlarm
23	CRC - mapping the conspiracy
25	Unified modeling language
26	UML in the context of this course
27	Most common: UML class diagram
137	REST principles: single server
24	UML class diagram
31	Class attributes in UML
32	Attribute example
33	Relationships in UML
34	Relationship #1: Association
35	Properties of association: cardinality
36	Notation of cardinality in association
37	Full association specification
38	Association
39	What world are we modeling?
40	Relationship #2: Generalization
41	Generalization in UML
42	Interfaces and "implements"
43	Relationship #2: Aggregation
44	Aggregation
45	UML sequence diagram
47	UML sequence diagram example
48	Another example
49	A more complicated example
50	Design patterns
51	What is a design pattern?
52	What is in such a piece of advice?
53	Design patterns in architecture
54	“Gang of four” book
55	Very good reference: refactoring.guru
56	Design patterns - definition
57	Elements of a design pattern
58	Design patterns are controversial
59	Design patterns are everywhere
60	Problem #1
61	Solution: Adapter
62	Problem #2:
63	Solution: the Composite pattern
64	Problem #3
65	Note: TS also allows iterators over Maps!
66	Solution: the Iterator pattern
67	Example structure
68	Problem #4
69	Solution: the Singleton pattern
70	A simple clock
71	A clock factory
72	A Singleton clock factory
73	Let's test this...
74	Problem #5
75	Solution: the Observer pattern
76	Interfaces
77	The Clock
78	Push vs Pull
79	Problem #6 (last one)
80	Solution: the Visitor pattern
81	Visitor pattern example
82	Compound + Visitor: In-order traversal
125	HTTP methods (verbs)
83	Visitor pattern example (detailed)
148	Sync vs. async programming
88	Design we saw so far in this class
139	REST principles: stateless
140	REST principle: uniform interface
89	Design at larger scales
93	Goal: create a high-level model of the system
94	Properties of “Software Architectures”
95	Book: Fundamentals of Software Architecture
96	More properties (contd.)
97	Even more properties (contd.)
99	Our goal this week is:
100	Architecture #0: Monolithic
102	Architecture #1: Layered
103	Architecture #1: Layered (contd.)
104	Architecture #2: Pipeline
105	Also good for visualizing hardware
106	How do the stages communicate?
107	Architecture #3: Plugins
108	Plugin architecture examples
109	Express.js uses a microkernel architecture
110	Architecture #4: Event-driven
112	Microservice example by AWS
113	Another schematic example of microservice
114	Microservice: pros and cons
111	Architecture #5: Microservice
116	Monoliths vs. microservices
117	HTTP basics
118	What is HTTP?
119	HTTP is asymmetric
120	HTTP is stateless
121	HTTP is an application layer protocol
123	Flow of HTTP messages
129	REST protocols
130	Your app relies on other apps for services
131	What we'd like
132	Obstacles to magic RPC
133	Solution - just use the web!
134	Recap slide 41: client-server comm.
135	REST: Representational State Transfer
136	REST principles
141	Uniform interface: the nouns
142	Uniform interface: the verbs
143	Request parameters
144	Example interface: a todo app
145	REST principle: uniform cacheability
2	Outline
149	Event handler model
150	JavaScript runtime environment
152	JavaScript event handlers
154	JavaScript event handler
156	Example: timer event handler
158	Example: alert() blocks event loop
1	(CS360) Fundamentals of Software Engineering
157	Event handler semantics
160	Promise
162	Event handlers as callable objects
163	Promises
164	Examples for promise
165	One possible implementation…
166	makePromise1() in action
167	Extending promises with callbacks
170	Linking the event handlers
171	.then callbacks ignore rejected promises
172	Use a .catch callback to catch rejected promises
173	You can even link more than one callback to
174	Synchronizing event handlers
175	Async / await
176	Promise with async
177	Invoke async with await or .then & .catch
178	Same thing with .then & .catch
179	Things to know about async/await
180	Long story to reach a simple conclusion
183	Course instructor
186	Course logistics
187	Schedules of exams & HW
188	Topics in syllabus (overview)
189	Late policy for assignments
190	Grading policy
191	SE overview and design principles
192	What is software engineering?
193	Good code is necessary but not sufficient
194	SE includes tools and processes
195	Learning objectives for this course:
196	Technology
197	Academic integrity
199	General Program Design Principles
200	The Challenge: Controlling Complexity
201	The challenge: controlling code complexity
202	The biggest obstacle: coupling
203	Five general-purpose principles
204	Principle 1. Use good names
205	Good names for constants
206	But use good names!
207	Good names for variables and types
208	Good names for functions and methods
210	Principle 2. Design your data
211	Example:
213	The big picture
214	Principle 3: One method/one job
215	Principle 4: Don't repeat yourself
216	A real example
217	Principle 5:
218	Example
219	You might write something like
220	So let's represent our data differently
221	And now it's easy to rewrite our function
222	Coding standards
226	Correctness
227	Optimization
228	Coding style
230	SW engineering goals
231	Object oriented principles
232	SOLID principles
233	Single responsibility principle
234	Example: single responsibility
235	Open-closed principle
237	Example: open-closed
238	Liskov substitution principle
240	Example: Liskov substitution
242	Interface segregation principle
243	Example: interface segregation
244	Dependency inversion principle
246	Example: dependency inversion
248	Unit testing
249	Wrap up
250	Multitasking and learning
251	Notes on the use of LLMs for learning
252	Thoughts on teaching
\.


--
-- Name: content_chunks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shahmen
--

SELECT pg_catalog.setval('public.content_chunks_id_seq', 268, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shahmen
--

SELECT pg_catalog.setval('public.courses_id_seq', 1, true);


--
-- Name: document_topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shahmen
--

SELECT pg_catalog.setval('public.document_topics_id_seq', 252, true);


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shahmen
--

SELECT pg_catalog.setval('public.documents_id_seq', 4, true);


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shahmen
--

SELECT pg_catalog.setval('public.topics_id_seq', 252, true);


--
-- Name: content_chunks content_chunks_pkey; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.content_chunks
    ADD CONSTRAINT content_chunks_pkey PRIMARY KEY (id);


--
-- Name: courses courses_code_key; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_code_key UNIQUE (code);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: document_topics document_topics_document_id_topic_id_key; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.document_topics
    ADD CONSTRAINT document_topics_document_id_topic_id_key UNIQUE (document_id, topic_id);


--
-- Name: document_topics document_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.document_topics
    ADD CONSTRAINT document_topics_pkey PRIMARY KEY (id);


--
-- Name: documents documents_course_id_title_key; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_course_id_title_key UNIQUE (course_id, title);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: topics topics_name_key; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_name_key UNIQUE (name);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: content_chunks content_chunks_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.content_chunks
    ADD CONSTRAINT content_chunks_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: content_chunks content_chunks_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.content_chunks
    ADD CONSTRAINT content_chunks_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);


--
-- Name: document_topics document_topics_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.document_topics
    ADD CONSTRAINT document_topics_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: document_topics document_topics_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.document_topics
    ADD CONSTRAINT document_topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON DELETE CASCADE;


--
-- Name: documents documents_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shahmen
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict w8R10Ti8UdGevkwWoVRZNXiEnoQQsalOiSAWaLqSW0JJH4n1wzXSJGBCORdtKVx

