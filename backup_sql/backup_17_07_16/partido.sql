--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2016-07-17 12:01:52 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 16972)
-- Name: partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE partido (
    id bigint NOT NULL,
    numero numeric NOT NULL,
    nome character varying NOT NULL,
    sigla character varying NOT NULL
);


ALTER TABLE partido OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16970)
-- Name: partido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE partido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE partido_id_seq OWNER TO postgres;

--
-- TOC entry 2457 (class 0 OID 0)
-- Dependencies: 202
-- Name: partido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE partido_id_seq OWNED BY partido.id;


--
-- TOC entry 2325 (class 2604 OID 16975)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY partido ALTER COLUMN id SET DEFAULT nextval('partido_id_seq'::regclass);


--
-- TOC entry 2452 (class 0 OID 16972)
-- Dependencies: 203
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO partido (id, numero, nome, sigla) VALUES (33, 44, 'PARTIDO REPUBLICANO PROGRESSISTA', 'PRP');
INSERT INTO partido (id, numero, nome, sigla) VALUES (34, 77, 'SOLIDARIEDADE', 'SD');
INSERT INTO partido (id, numero, nome, sigla) VALUES (35, 15, 'PARTIDO DO MOVIMENTO DEMOCRÁTICO BRASILEIRO', 'PMDB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (36, 44, 'PARTIDO REPUBLICANO PROGRESSISTA', 'PRP');
INSERT INTO partido (id, numero, nome, sigla) VALUES (37, 77, 'SOLIDARIEDADE', 'SD');
INSERT INTO partido (id, numero, nome, sigla) VALUES (38, 15, 'PARTIDO DO MOVIMENTO DEMOCRÁTICO BRASILEIRO', 'PMDB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (39, 19, 'PARTIDO TRABALHISTA NACIONAL', 'PTN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (40, 20, 'PARTIDO SOCIAL CRISTÃO', 'PSC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (41, 11, 'PARTIDO PROGRESSISTA', 'PP');
INSERT INTO partido (id, numero, nome, sigla) VALUES (42, 43, 'PARTIDO VERDE', 'PV');
INSERT INTO partido (id, numero, nome, sigla) VALUES (43, 25, 'DEMOCRATAS', 'DEM');
INSERT INTO partido (id, numero, nome, sigla) VALUES (44, 33, 'PARTIDO DA MOBILIZAÇÃO NACIONAL', 'PMN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (45, 13, 'PARTIDO DOS TRABALHADORES', 'PT');
INSERT INTO partido (id, numero, nome, sigla) VALUES (46, 12, 'PARTIDO DEMOCRÁTICO TRABALHISTA', 'PDT');
INSERT INTO partido (id, numero, nome, sigla) VALUES (47, 27, 'PARTIDO SOCIAL DEMOCRATA CRISTÃO', 'PSDC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (48, 17, 'PARTIDO SOCIAL LIBERAL', 'PSL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (49, 31, 'PARTIDO HUMANISTA DA SOLIDARIEDADE', 'PHS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (50, 45, 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA', 'PSDB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (51, 40, 'PARTIDO SOCIALISTA BRASILEIRO', 'PSB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (52, 22, 'PARTIDO DA REPÚBLICA', 'PR');
INSERT INTO partido (id, numero, nome, sigla) VALUES (53, 54, 'PARTIDO PÁTRIA LIVRE', 'PPL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (54, 65, 'PARTIDO COMUNISTA DO BRASIL', 'PC do B');
INSERT INTO partido (id, numero, nome, sigla) VALUES (55, 23, 'PARTIDO POPULAR SOCIALISTA', 'PPS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (56, 14, 'PARTIDO TRABALHISTA BRASILEIRO', 'PTB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (57, 50, 'PARTIDO SOCIALISMO E LIBERDADE', 'PSOL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (58, 90, 'PARTIDO REPUBLICANO DA ORDEM SOCIAL', 'PROS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (59, 10, 'PARTIDO REPUBLICANO BRASILEIRO', 'PRB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (60, 51, 'PARTIDO ECOLÓGICO NACIONAL', 'PEN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (61, 55, 'PARTIDO SOCIAL DEMOCRÁTICO', 'PSD');
INSERT INTO partido (id, numero, nome, sigla) VALUES (62, 36, 'PARTIDO TRABALHISTA CRISTÃO', 'PTC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (63, 70, 'PARTIDO TRABALHISTA DO BRASIL', 'PT do B');
INSERT INTO partido (id, numero, nome, sigla) VALUES (64, 16, 'PARTIDO SOCIALISTA DOS TRABALHADORES UNIFICADO', 'PSTU');
INSERT INTO partido (id, numero, nome, sigla) VALUES (65, 21, 'PARTIDO COMUNISTA BRASILEIRO', 'PCB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (66, 28, 'PARTIDO RENOVADOR TRABALHISTA BRASILEIRO', 'PRTB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (67, 29, 'PARTIDO DA CAUSA OPERÁRIA', 'PCO');


--
-- TOC entry 2458 (class 0 OID 0)
-- Dependencies: 202
-- Name: partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('partido_id_seq', 67, true);


--
-- TOC entry 2327 (class 2606 OID 16980)
-- Name: partido_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY partido
    ADD CONSTRAINT partido_pk PRIMARY KEY (id);


-- Completed on 2016-07-17 12:01:52 BRT

--
-- PostgreSQL database dump complete
--

