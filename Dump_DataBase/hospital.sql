--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: hospital; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE hospital IS 'Polytech DataBase Course';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE diagnosis (
    id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE diagnosis OWNER TO postgres;

--
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE people (
    id integer NOT NULL,
    first_name character varying(40),
    last_name character varying(40),
    pather_name character varying(40),
    diagnosis_id integer,
    ward_id integer
);


ALTER TABLE people OWNER TO postgres;

--
-- Name: sequence_diagnosis; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sequence_diagnosis
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sequence_diagnosis OWNER TO postgres;

--
-- Name: sequence_people; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sequence_people
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sequence_people OWNER TO postgres;

--
-- Name: sequence_wards; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sequence_wards
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sequence_wards OWNER TO postgres;

--
-- Name: wards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wards (
    id integer NOT NULL,
    name character varying(40),
    max_count integer
);


ALTER TABLE wards OWNER TO postgres;

--
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY diagnosis (id, name) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY people (id, first_name, last_name, pather_name, diagnosis_id, ward_id) FROM stdin;
\.


--
-- Data for Name: wards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wards (id, name, max_count) FROM stdin;
\.


--
-- Name: sequence_diagnosis; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sequence_diagnosis', 1, false);


--
-- Name: sequence_people; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sequence_people', 1, false);


--
-- Name: sequence_wards; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sequence_wards', 1, false);


--
-- Name: diagnosis diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: wards wards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wards
    ADD CONSTRAINT wards_pkey PRIMARY KEY (id);


--
-- Name: people people_diagnosis_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_diagnosis_id_fkey FOREIGN KEY (diagnosis_id) REFERENCES diagnosis(id);


--
-- Name: people people_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_ward_id_fkey FOREIGN KEY (ward_id) REFERENCES wards(id);


--
-- PostgreSQL database dump complete
--

