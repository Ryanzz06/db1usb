--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.0 (Ubuntu 15.0-1.pgdg22.04+1)

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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.mahasiswa (
    nama character varying,
    alamat character varying,
    kelas character varying,
    agama character varying,
    fakultas character varying
);


ALTER TABLE public.mahasiswa OWNER TO ezerinz;

--
-- Name: transkrip; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.transkrip (
    nama character varying,
    nim integer NOT NULL,
    program_studi character varying,
    sks character varying
);


ALTER TABLE public.transkrip OWNER TO ezerinz;

--
-- Name: transkrip_nim_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public.transkrip_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transkrip_nim_seq OWNER TO ezerinz;

--
-- Name: transkrip_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public.transkrip_nim_seq OWNED BY public.transkrip.nim;


--
-- Name: transkrip nim; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.transkrip ALTER COLUMN nim SET DEFAULT nextval('public.transkrip_nim_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.mahasiswa (nama, alamat, kelas, agama, fakultas) FROM stdin;
MUH RYAN NURWANGSAH	JLN DIPONEGORO	H	ISLAM	TEKNIK
\.


--
-- Data for Name: transkrip; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.transkrip (nama, nim, program_studi, sks) FROM stdin;
MUH RYAN NURWANGSAH	221302	TEKNIK INFORMATIKA	21
\.


--
-- Name: transkrip_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public.transkrip_nim_seq', 1, false);


--
-- Name: transkrip transkrip_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.transkrip
    ADD CONSTRAINT transkrip_pkey PRIMARY KEY (nim);


--
-- PostgreSQL database dump complete
--

