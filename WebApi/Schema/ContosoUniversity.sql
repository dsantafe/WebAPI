--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    courseid integer NOT NULL,
    title character varying(50),
    credits integer
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: TABLE course; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.course IS 'TRIAL';


--
-- Name: COLUMN course.courseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.course.courseid IS 'TRIAL';


--
-- Name: COLUMN course.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.course.title IS 'TRIAL';


--
-- Name: COLUMN course.credits; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.course.credits IS 'TRIAL';


--
-- Name: courseinstructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courseinstructor (
    id integer NOT NULL,
    courseid integer NOT NULL,
    instructorid integer NOT NULL,
    trial666 character(1)
);


ALTER TABLE public.courseinstructor OWNER TO postgres;

--
-- Name: TABLE courseinstructor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.courseinstructor IS 'TRIAL';


--
-- Name: COLUMN courseinstructor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.courseinstructor.id IS 'TRIAL';


--
-- Name: COLUMN courseinstructor.courseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.courseinstructor.courseid IS 'TRIAL';


--
-- Name: COLUMN courseinstructor.instructorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.courseinstructor.instructorid IS 'TRIAL';


--
-- Name: COLUMN courseinstructor.trial666; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.courseinstructor.trial666 IS 'TRIAL';


--
-- Name: courseinstructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courseinstructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courseinstructor_id_seq OWNER TO postgres;

--
-- Name: courseinstructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courseinstructor_id_seq OWNED BY public.courseinstructor.id;


--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    departmentid integer NOT NULL,
    name character varying(50),
    budget numeric(18,2),
    startdate timestamp(3) without time zone,
    instructorid integer,
    trial669 character(1)
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: TABLE department; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.department IS 'TRIAL';


--
-- Name: COLUMN department.departmentid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.departmentid IS 'TRIAL';


--
-- Name: COLUMN department.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.name IS 'TRIAL';


--
-- Name: COLUMN department.budget; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.budget IS 'TRIAL';


--
-- Name: COLUMN department.startdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.startdate IS 'TRIAL';


--
-- Name: COLUMN department.instructorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.instructorid IS 'TRIAL';


--
-- Name: COLUMN department.trial669; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.department.trial669 IS 'TRIAL';


--
-- Name: department_departmentid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_departmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_departmentid_seq OWNER TO postgres;

--
-- Name: department_departmentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.department_departmentid_seq OWNED BY public.department.departmentid;


--
-- Name: enrollment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollment (
    enrollmentid integer NOT NULL,
    courseid integer,
    studentid integer,
    grade integer,
    trial672 character(1)
);


ALTER TABLE public.enrollment OWNER TO postgres;

--
-- Name: TABLE enrollment; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.enrollment IS 'TRIAL';


--
-- Name: COLUMN enrollment.enrollmentid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.enrollment.enrollmentid IS 'TRIAL';


--
-- Name: COLUMN enrollment.courseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.enrollment.courseid IS 'TRIAL';


--
-- Name: COLUMN enrollment.studentid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.enrollment.studentid IS 'TRIAL';


--
-- Name: COLUMN enrollment.grade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.enrollment.grade IS 'TRIAL';


--
-- Name: COLUMN enrollment.trial672; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.enrollment.trial672 IS 'TRIAL';


--
-- Name: enrollment_enrollmentid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrollment_enrollmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrollment_enrollmentid_seq OWNER TO postgres;

--
-- Name: enrollment_enrollmentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrollment_enrollmentid_seq OWNED BY public.enrollment.enrollmentid;


--
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    id integer NOT NULL,
    lastname character varying(50),
    firstmidname character varying(50),
    hiredate timestamp(3) without time zone,
    trial672 character(1)
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- Name: TABLE instructor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.instructor IS 'TRIAL';


--
-- Name: COLUMN instructor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.instructor.id IS 'TRIAL';


--
-- Name: COLUMN instructor.lastname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.instructor.lastname IS 'TRIAL';


--
-- Name: COLUMN instructor.firstmidname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.instructor.firstmidname IS 'TRIAL';


--
-- Name: COLUMN instructor.hiredate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.instructor.hiredate IS 'TRIAL';


--
-- Name: COLUMN instructor.trial672; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.instructor.trial672 IS 'TRIAL';


--
-- Name: instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_id_seq OWNED BY public.instructor.id;


--
-- Name: officeassignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.officeassignment (
    instructorid integer NOT NULL,
    location character varying(50),
    trial675 character(1)
);


ALTER TABLE public.officeassignment OWNER TO postgres;

--
-- Name: TABLE officeassignment; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.officeassignment IS 'TRIAL';


--
-- Name: COLUMN officeassignment.instructorid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.officeassignment.instructorid IS 'TRIAL';


--
-- Name: COLUMN officeassignment.location; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.officeassignment.location IS 'TRIAL';


--
-- Name: COLUMN officeassignment.trial675; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.officeassignment.trial675 IS 'TRIAL';


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id integer NOT NULL,
    lastname character varying(50),
    firstmidname character varying(50),
    enrollmentdate timestamp(3) without time zone,
    trial675 character(1)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: TABLE student; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.student IS 'TRIAL';


--
-- Name: COLUMN student.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.student.id IS 'TRIAL';


--
-- Name: COLUMN student.lastname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.student.lastname IS 'TRIAL';


--
-- Name: COLUMN student.firstmidname; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.student.firstmidname IS 'TRIAL';


--
-- Name: COLUMN student.enrollmentdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.student.enrollmentdate IS 'TRIAL';


--
-- Name: COLUMN student.trial675; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.student.trial675 IS 'TRIAL';


--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_id_seq OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- Name: courseinstructor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courseinstructor ALTER COLUMN id SET DEFAULT nextval('public.courseinstructor_id_seq'::regclass);


--
-- Name: department departmentid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department ALTER COLUMN departmentid SET DEFAULT nextval('public.department_departmentid_seq'::regclass);


--
-- Name: enrollment enrollmentid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollment ALTER COLUMN enrollmentid SET DEFAULT nextval('public.enrollment_enrollmentid_seq'::regclass);


--
-- Name: instructor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor ALTER COLUMN id SET DEFAULT nextval('public.instructor_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course (courseid, title, credits) FROM stdin;
1045	Calculus	3
1050	Chemistry	3
2021	Composition	3
2042	Literature	4
3141	Trigonometry	4
4022	Microeconomics	3
4041	Macroeconomics	3
1	test	1
\.


--
-- Data for Name: courseinstructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courseinstructor (id, courseid, instructorid, trial666) FROM stdin;
1	1050	4	T
2	1050	3	T
3	4022	5	T
4	4041	5	T
5	1045	2	T
6	3141	3	T
7	2021	1	T
8	2042	1	T
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (departmentid, name, budget, startdate, instructorid, trial669) FROM stdin;
1	English	350000.00	2007-09-01 00:00:00	1	T
2	Mathematics	100000.00	2007-09-01 00:00:00	2	T
3	Engineering	350000.00	2007-09-01 00:00:00	3	T
4	Economics	100000.00	2007-09-01 00:00:00	4	T
\.


--
-- Data for Name: enrollment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollment (enrollmentid, courseid, studentid, grade, trial672) FROM stdin;
1	1050	1	0	T
2	4022	1	2	T
3	4041	1	1	T
4	1045	2	1	T
5	3141	2	4	T
6	2021	2	4	T
7	1050	3	\N	T
8	1050	4	\N	T
9	4022	4	4	T
10	4041	5	2	T
11	1045	6	\N	T
12	3141	7	0	T
\.


--
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor (id, lastname, firstmidname, hiredate, trial672) FROM stdin;
1	Abercrombie	Kim	1995-03-11 00:00:00	T
2	Fakhouri	Fadi	2002-07-06 00:00:00	T
3	Harui	Roger	1998-07-01 00:00:00	T
4	Kapoor	Candace	2001-01-15 00:00:00	T
5	Zheng	Roger	2004-02-12 00:00:00	T
6	Zheng	Roger	2004-02-12 00:00:00	T
\.


--
-- Data for Name: officeassignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.officeassignment (instructorid, location, trial675) FROM stdin;
2	Smith 17	T
3	Gowan 27	T
4	Thompson 304	T
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, lastname, firstmidname, enrollmentdate, trial675) FROM stdin;
1	Alexander	Carson	2005-09-01 00:00:00	T
2	Alonso	Meredith	2002-09-01 00:00:00	T
3	Anand	Arturo	2003-09-01 00:00:00	T
4	Barzdukas	Gytis	2002-09-01 00:00:00	T
5	Li	Yan	2002-09-01 00:00:00	T
6	Justice	Peggy	2001-09-01 00:00:00	T
7	Norman	Laura	2003-09-01 00:00:00	T
8	Olivetto	Nino	2005-09-01 00:00:00	T
\.


--
-- Name: courseinstructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courseinstructor_id_seq', 8, true);


--
-- Name: department_departmentid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_departmentid_seq', 4, true);


--
-- Name: enrollment_enrollmentid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrollment_enrollmentid_seq', 12, true);


--
-- Name: instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_id_seq', 6, true);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 8, true);


--
-- Name: course pk_course; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT pk_course PRIMARY KEY (courseid);


--
-- Name: courseinstructor pk_courseinstructor_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courseinstructor
    ADD CONSTRAINT pk_courseinstructor_1 PRIMARY KEY (id);


--
-- Name: department pk_department; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT pk_department PRIMARY KEY (departmentid);


--
-- Name: enrollment pk_enrollment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT pk_enrollment PRIMARY KEY (enrollmentid);


--
-- Name: instructor pk_instructor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT pk_instructor PRIMARY KEY (id);


--
-- Name: officeassignment pk_officeassignment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.officeassignment
    ADD CONSTRAINT pk_officeassignment PRIMARY KEY (instructorid);


--
-- Name: student pk_student; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT pk_student PRIMARY KEY (id);


--
-- Name: courseinstructor fk_courseinstructor_course; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courseinstructor
    ADD CONSTRAINT fk_courseinstructor_course FOREIGN KEY (courseid) REFERENCES public.course(courseid);


--
-- Name: courseinstructor fk_courseinstructor_instructor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courseinstructor
    ADD CONSTRAINT fk_courseinstructor_instructor FOREIGN KEY (instructorid) REFERENCES public.instructor(id);


--
-- Name: department fk_department_instructor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT fk_department_instructor FOREIGN KEY (instructorid) REFERENCES public.instructor(id);


--
-- Name: enrollment fk_enrollment_course; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT fk_enrollment_course FOREIGN KEY (courseid) REFERENCES public.course(courseid);


--
-- Name: enrollment fk_enrollment_student; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT fk_enrollment_student FOREIGN KEY (studentid) REFERENCES public.student(id);


--
-- Name: officeassignment fk_officeassignment_instructor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.officeassignment
    ADD CONSTRAINT fk_officeassignment_instructor FOREIGN KEY (instructorid) REFERENCES public.instructor(id);


--
-- PostgreSQL database dump complete
--

