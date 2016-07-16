CREATE TABLE partido (
    id bigint NOT NULL,
    numero numeric NOT NULL,
    nome character varying NOT NULL,
    sigla character varying NOT NULL
);


ALTER TABLE partido OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17142)
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
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 187
-- Name: partido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE partido_id_seq OWNED BY partido.id;


--
-- TOC entry 2083 (class 2604 OID 17147)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY partido ALTER COLUMN id SET DEFAULT nextval('partido_id_seq'::regclass);


--
-- TOC entry 2203 (class 0 OID 17144)
-- Dependencies: 188
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO partido (id, numero, nome, sigla) VALUES (17395, 44, 'PARTIDO REPUBLICANO PROGRESSISTA', 'PRP');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17396, 77, 'SOLIDARIEDADE', 'SD');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17397, 15, 'PARTIDO DO MOVIMENTO DEMOCRÁTICO BRASILEIRO', 'PMDB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17398, 19, 'PARTIDO TRABALHISTA NACIONAL', 'PTN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17399, 20, 'PARTIDO SOCIAL CRISTÃO', 'PSC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17400, 11, 'PARTIDO PROGRESSISTA', 'PP');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17401, 43, 'PARTIDO VERDE', 'PV');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17402, 25, 'DEMOCRATAS', 'DEM');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17403, 33, 'PARTIDO DA MOBILIZAÇÃO NACIONAL', 'PMN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17404, 13, 'PARTIDO DOS TRABALHADORES', 'PT');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17405, 12, 'PARTIDO DEMOCRÁTICO TRABALHISTA', 'PDT');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17406, 27, 'PARTIDO SOCIAL DEMOCRATA CRISTÃO', 'PSDC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17407, 17, 'PARTIDO SOCIAL LIBERAL', 'PSL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17408, 31, 'PARTIDO HUMANISTA DA SOLIDARIEDADE', 'PHS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17409, 45, 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA', 'PSDB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17410, 40, 'PARTIDO SOCIALISTA BRASILEIRO', 'PSB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17411, 22, 'PARTIDO DA REPÚBLICA', 'PR');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17412, 54, 'PARTIDO PÁTRIA LIVRE', 'PPL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17413, 65, 'PARTIDO COMUNISTA DO BRASIL', 'PC do B');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17414, 23, 'PARTIDO POPULAR SOCIALISTA', 'PPS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17415, 14, 'PARTIDO TRABALHISTA BRASILEIRO', 'PTB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17416, 50, 'PARTIDO SOCIALISMO E LIBERDADE', 'PSOL');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17417, 90, 'PARTIDO REPUBLICANO DA ORDEM SOCIAL', 'PROS');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17418, 10, 'PARTIDO REPUBLICANO BRASILEIRO', 'PRB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17419, 51, 'PARTIDO ECOLÓGICO NACIONAL', 'PEN');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17420, 55, 'PARTIDO SOCIAL DEMOCRÁTICO', 'PSD');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17421, 36, 'PARTIDO TRABALHISTA CRISTÃO', 'PTC');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17422, 70, 'PARTIDO TRABALHISTA DO BRASIL', 'PT do B');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17423, 28, 'PARTIDO RENOVADOR TRABALHISTA BRASILEIRO', 'PRTB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17424, 21, 'PARTIDO COMUNISTA BRASILEIRO', 'PCB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17425, 16, 'PARTIDO SOCIALISTA DOS TRABALHADORES UNIFICADO', 'PSTU');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17426, 29, 'PARTIDO DA CAUSA OPERÁRIA', 'PCO');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17427, 35, 'PARTIDO DA MULHER BRASILEIRA', 'PMB');
INSERT INTO partido (id, numero, nome, sigla) VALUES (17428, 18, 'REDE SUSTENTABILIDADE', 'Rede');


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 187
-- Name: partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('partido_id_seq', 17428, true);


--
-- TOC entry 2085 (class 2606 OID 17152)
-- Name: partido_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY partido
    ADD CONSTRAINT partido_pk PRIMARY KEY (id);


-- Completed on 2016-07-14 13:51:19 BRT

--
-- PostgreSQL database dump complete
--



-- View: public.votacao_view

-- DROP VIEW public.votacao_view;

CREATE OR REPLACE VIEW public.votacao_view AS 
 SELECT row_number() OVER (ORDER BY temp.nome_deputado) AS id,
    temp.nome_deputado,
    temp.nome_partido,
    temp.silga_partido,
    temp.uf,
    temp.voto,
    temp.sexo,
    temp.discurso
   FROM ( SELECT sem_acento(p.nome::text) AS nome_partido,
            p.sigla AS silga_partido,
            sem_acento(v.nome_completo::text) AS nome_deputado,
            v.sigla_uf AS uf,
            v.voto,
            v.sexo,
            sem_acento(v.discurso::text) AS discurso
           FROM partido p,
            votacao v
          WHERE p.sigla::text = v.sigla_partido::text) temp;

ALTER TABLE public.votacao_view
  OWNER TO postgres;


