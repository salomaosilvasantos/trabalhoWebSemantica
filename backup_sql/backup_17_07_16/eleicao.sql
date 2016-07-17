--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2016-07-17 12:03:41 BRT

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
-- TOC entry 201 (class 1259 OID 16961)
-- Name: eleicao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE eleicao (
    id bigint NOT NULL,
    ano integer NOT NULL,
    sigla_ue character varying NOT NULL,
    sigla_uf character varying NOT NULL,
    descricao character varying NOT NULL,
    numero_turno integer NOT NULL,
    descricao_ue character varying NOT NULL
);


ALTER TABLE eleicao OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16959)
-- Name: eleicao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE eleicao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE eleicao_id_seq OWNER TO postgres;

--
-- TOC entry 2457 (class 0 OID 0)
-- Dependencies: 200
-- Name: eleicao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE eleicao_id_seq OWNED BY eleicao.id;


--
-- TOC entry 2325 (class 2604 OID 16964)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eleicao ALTER COLUMN id SET DEFAULT nextval('eleicao_id_seq'::regclass);


--
-- TOC entry 2452 (class 0 OID 16961)
-- Dependencies: 201
-- Data for Name: eleicao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (29, 2014, 'AC', 'AC', 'Eleições Gerais 2014', 1, 'ACRE');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (30, 2014, 'AC', 'AC', 'Eleições Gerais 2014', 1, 'ACRE');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (31, 2014, 'AM', 'AM', 'Eleições Gerais 2014', 1, 'AMAZONAS');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (32, 2014, 'AP', 'AP', 'Eleições Gerais 2014', 1, 'AMAPÁ');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (33, 2014, 'BA', 'BA', 'Eleições Gerais 2014', 1, 'BAHIA');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (34, 2014, 'BR', 'BR', 'Eleições Gerais 2014', 1, 'BRASIL');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (35, 2014, 'CE', 'CE', 'Eleições Gerais 2014', 1, 'CEARÁ');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (36, 2014, 'DF', 'DF', 'Eleições Gerais 2014', 1, 'DISTRITO FEDERAL');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (37, 2014, 'ES', 'ES', 'Eleições Gerais 2014', 1, 'ESPÍRITO SANTO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (38, 2014, 'GO', 'GO', 'Eleições Gerais 2014', 1, 'GOIÁS');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (39, 2014, 'MA', 'MA', 'Eleições Gerais 2014', 1, 'MARANHÃO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (40, 2014, 'MG', 'MG', 'Eleições Gerais 2014', 1, 'MINAS GERAIS');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (41, 2014, 'MS', 'MS', 'Eleições Gerais 2014', 1, 'MATO GROSSO DO SUL');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (42, 2014, 'MT', 'MT', 'Eleições Gerais 2014', 1, 'MATO GROSSO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (43, 2014, 'PA', 'PA', 'Eleições Gerais 2014', 1, 'PARÁ');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (44, 2014, 'PB', 'PB', 'Eleições Gerais 2014', 1, 'PARAÍBA');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (45, 2014, 'PE', 'PE', 'Eleições Gerais 2014', 1, 'PERNAMBUCO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (46, 2014, 'PI', 'PI', 'Eleições Gerais 2014', 1, 'PIAUÍ');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (47, 2014, 'PR', 'PR', 'Eleições Gerais 2014', 1, 'PARANÁ');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (48, 2014, 'RJ', 'RJ', 'Eleições Gerais 2014', 1, 'RIO DE JANEIRO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (49, 2014, 'RN', 'RN', 'Eleições Gerais 2014', 1, 'RIO GRANDE DO NORTE');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (50, 2014, 'RO', 'RO', 'Eleições Gerais 2014', 1, 'RONDÔNIA');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (51, 2014, 'RR', 'RR', 'Eleições Gerais 2014', 1, 'RORAIMA');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (52, 2014, 'RS', 'RS', 'Eleições Gerais 2014', 1, 'RIO GRANDE DO SUL');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (53, 2014, 'SC', 'SC', 'Eleições Gerais 2014', 1, 'SANTA CATARINA');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (54, 2014, 'SE', 'SE', 'Eleições Gerais 2014', 1, 'SERGIPE');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (55, 2014, 'SP', 'SP', 'Eleições Gerais 2014', 1, 'SÃO PAULO');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (56, 2014, 'TO', 'TO', 'Eleições Gerais 2014', 1, 'TOCANTINS');
INSERT INTO eleicao (id, ano, sigla_ue, sigla_uf, descricao, numero_turno, descricao_ue) VALUES (57, 2014, 'AL', 'AL', 'Eleições Gerais 2014', 1, 'ALAGOAS');


--
-- TOC entry 2458 (class 0 OID 0)
-- Dependencies: 200
-- Name: eleicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('eleicao_id_seq', 57, true);


--
-- TOC entry 2327 (class 2606 OID 16969)
-- Name: eleicao_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eleicao
    ADD CONSTRAINT eleicao_pk PRIMARY KEY (id);


-- Completed on 2016-07-17 12:03:41 BRT

--
-- PostgreSQL database dump complete
--

