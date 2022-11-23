--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.mahasiswa (
    nama character varying,
    alamat character varying,
    kelas character varying,
    agama character varying,
    fakultas character varying
);


ALTER TABLE public.mahasiswa OWNER TO "ASUS";

--
-- Name: transkrip; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.transkrip (
    nama character varying,
    nim integer NOT NULL,
    program_studi character varying,
    sks character varying
);


ALTER TABLE public.transkrip OWNER TO "ASUS";

--
-- Name: transkrip_nim_seq; Type: SEQUENCE; Schema: public; Owner: ASUS
--

CREATE SEQUENCE public.transkrip_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transkrip_nim_seq OWNER TO "ASUS";

--
-- Name: transkrip_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ASUS
--

ALTER SEQUENCE public.transkrip_nim_seq OWNED BY public.transkrip.nim;


--
-- Name: transkrip nim; Type: DEFAULT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.transkrip ALTER COLUMN nim SET DEFAULT nextval('public.transkrip_nim_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.mahasiswa (nama, alamat, kelas, agama, fakultas) FROM stdin;
MUH RYAN NURWANGSAH	JLN DIPONEGORO	H	ISLAM	TEKNIK
\.


--
-- Data for Name: transkrip; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.transkrip (nama, nim, program_studi, sks) FROM stdin;
\.


--
-- Name: transkrip_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: ASUS
--

SELECT pg_catalog.setval('public.transkrip_nim_seq', 1, false);


--
-- Name: transkrip transkrip_pkey; Type: CONSTRAINT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.transkrip
    ADD CONSTRAINT transkrip_pkey PRIMARY KEY (nim);


--
-- PostgreSQL database dump complete
--

