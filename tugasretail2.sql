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
-- Name: staffs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staffs (
    staff_id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying
);


ALTER TABLE public.staffs OWNER TO postgres;

--
-- Name: staffs_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staffs_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staffs_staff_id_seq OWNER TO postgres;

--
-- Name: staffs_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staffs_staff_id_seq OWNED BY public.staffs.staff_id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores (
    merek_hp character varying,
    harga integer,
    jumlah integer
);


ALTER TABLE public.stores OWNER TO postgres;

--
-- Name: tujuan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tujuan (
    provinsi character varying,
    kabupaten character varying,
    alamat character varying
);


ALTER TABLE public.tujuan OWNER TO postgres;

--
-- Name: staffs staff_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs ALTER COLUMN staff_id SET DEFAULT nextval('public.staffs_staff_id_seq'::regclass);


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staffs (staff_id, first_name, last_name, email) FROM stdin;
1	Ryan	Nurwangsah	ryanz@gmail.com
2	anugrah	ramadan	ramadan@gmail.com
3	wanda	kartika	wanda21@gmail.com
4	yayat	sabir	yayat11@gmail.com
33	nina	putri	ninaput@gmail.com
102	haikal	ikal	ikals@yahoo.co.id
21	nopi	anti	nopiaz@yahoo.co.id
11	efor	rio	rio@gmail.com
114	amel	lia	amel12@gmail.com
9	berlian	ayuhidayah	berlins45@gmail.com
60	putri	sopia	sopia45@yahoo.co.id
99	andi	mutiara	muti98@gmail.com
133	sahrul	gunawan	sahryul@hmail.com
16	muhammad	mulham	ham67@gmail.com
897	frans	sisko	frinz32@gmail.com
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stores (merek_hp, harga, jumlah) FROM stdin;
ROG	15000000	1
VIVO	1500000	3
IPHONE	18000000	2
OPPO	2000000	1
NOKIA	150000	4
REALME	35000000	2
XIOME	78000000	1
BLAKBERY	1000000	1
SONNY	25000000	1
SAMSUNG	6000000	2
ASUS	1300000	2
HUAWEI	2400000	6
LG	5400000	5
XPERIA	10400000	1
NEXUS	4400000	2
\.


--
-- Data for Name: tujuan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tujuan (provinsi, kabupaten, alamat) FROM stdin;
sulawesi barat	mamuju	diponegoro
sulawesi selatan	pare pare	hapati hasan
sulawesi barat	majene	tunda
sulawesi barat	majene	tulu
sulawesi barat	mamasa	ahmad kirang
sulawesi barat	polewali mandar	manding
sulawesi barat	mamuju tengah	cut nyak dien
sulawesi barat	pasangkayu	sultan hasanuddin
sulawesi selatan	wajo	sengkang
sulawesi selatan	soppeng	watansoppeng
sulawesi selatan	gowa	sungguminasa
sulawesi utara	minahasa	tondano
sulawesi utara	kepulauan sangihe	tahuna
sulawesi utara	kepulauan siau tagulandang	ondong siau
sulawesi tenggara	buton	pasarwajo
\.


--
-- Name: staffs_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_staff_id_seq', 1, false);


--
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (staff_id);


--
-- PostgreSQL database dump complete
--

