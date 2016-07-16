CREATE OR REPLACE VIEW votacao_view AS 

        SELECT row_number() OVER (ORDER BY temp.nome_deputado) AS id, temp.nome_deputado, temp.nome_partido, temp.silga_partido, temp.uf,temp.voto,temp.sexo,temp.discurso

        FROM(SELECT sem_acento(p.nome) as nome_partido,p.sigla as silga_partido, upper(sem_acento(v.nome_completo)) as nome_deputado, v.sigla_uf as uf,v.voto,v.sexo,sem_acento(v.discurso) as discurso
              FROM partido p, votacao v
              WHERE p.sigla=v.sigla_partido) temp;






--partido

   CREATE OR REPLACE VIEW public.partido_view AS 
	 SELECT row_number() OVER (ORDER BY temp.nome) AS id,
          temp.nome,
          temp.sigla
          FROM(
          SELECT distinct sem_acento(p.nome::text) AS nome,
            p.sigla AS sigla
           
           FROM partido p,
            votacao v
          WHERE p.sigla::text = v.sigla_partido::text) temp;

--deputado
       CREATE OR REPLACE VIEW public.deputado_view AS 
	 SELECT row_number() OVER (ORDER BY temp.nome_completo) AS id,
         nome_completo
	 FROM (SELECT nome_deputado as nome_completo from votacao_view) temp



--Deputado->Partido
CREATE OR REPLACE VIEW public.deputado_partido_view AS
	 SELECT row_number() OVER (ORDER BY temp.deputado_id) AS id,
         deputado_id, partido_id
	FROM (SELECT d.id as deputado_id, pv.id as partido_id FROM partido_view pv,votacao_view v, deputado_view d
	      WHERE pv.nome = v.nome_partido and d.nome_completo = v.nome_deputado) temp;

CREATE OR REPLACE VIEW public.candidato_view AS 
 SELECT candidato.id,
    candidato.cpf,
    upper(sem_acento(candidato.nome_completo::text)) AS nome_completo
   FROM candidato;

--extra
select sigla_partido from  votacao where sigla_partido not in (select sigla from partido)

UPDATE votacao
SET sigla_partido = 'PC do B'
WHERE sigla_partido='PCdoB'

UPDATE votacao
SET sigla_partido = 'PT do B'
WHERE sigla_partido='PTdoB'



INSERT INTO public.partido(numero, nome, sigla) VALUES (35, 'PARTIDO DA MULHER BRASILEIRA', 'PMB');
INSERT INTO public.partido(numero, nome, sigla) VALUES (18, 'REDE SUSTENTABILIDADE', 'Rede'); 


UPDATE candidato
set nome_completo = 'BRUNIELE FERREIRA GOMES'
where id=12770

UPDATE candidato
set nome_completo = 'ANTONIO PEDRO DE SIQUEIRA INDIO DA COSTA'
where id=18584

UPDATE candidato
set nome_completo = 'ATILA SIDNEY LINS ALBUQUERQUE'
where id=1832

UPDATE candidato
set nome_completo = 'ELIZEU DIONIZIO SOUZA DA SILVA'
where id=24854

UPDATE candidato
set nome_completo = 'GIVALDO DE SA GOUVEIA'
where id=980

UPDATE candidato
set nome_completo = 'JOSE CARLOS NUNES JUNIOR'
where id=9993

UPDATE candidato
set nome_completo = 'JOVAIR DE OLIVEIRA ARANTES'
where id=9205

UPDATE candidato
set nome_completo = 'JOZIANE ARAUJO NASCIMENTO'
where id=2244


CREATE OR REPLACE VIEW public.candidato_view AS 
 SELECT candidato.id,
    candidato.cpf,
    upper(sem_acento(candidato.nome_completo::text)) AS nome_completo
   FROM candidato;

UPDATE candidato
set nome_completo = 'BRUNIELE FERREIRA GOMES'
where id=12770

UPDATE candidato
set nome_completo = 'ANTONIO PEDRO DE SIQUEIRA INDIO DA COSTA'
where id=18584

UPDATE candidato
set nome_completo = 'ATILA SIDNEY LINS ALBUQUERQUE'
where id=1832

UPDATE candidato
set nome_completo = 'ELIZEU DIONIZIO SOUZA DA SILVA'
where id=24854

UPDATE candidato
set nome_completo = 'GIVALDO DE SA GOUVEIA'
where id=980

UPDATE candidato
set nome_completo = 'JOSE CARLOS NUNES JUNIOR'
where id=9993

UPDATE candidato
set nome_completo = 'JOVAIR DE OLIVEIRA ARANTES'
where id=9205

UPDATE candidato
set nome_completo = 'JOZIANE ARAUJO NASCIMENTO'
where id=2244
SELECT * FROM candidato where nome_completo like '%ADALBERTO CAVALCANTI RODRIGUES%'



SELECT * FROM partido
SELECT * FROM votacao_view

create view candidato_view as
SELECT id, cpf, upper(sem_acento(nome_completo)) as nome_completo FROM candidato


SELECT c.id,c.nome_completo, c.cpf  from candidato_view c, votacao_view v
where c.nome_completo=v.nome_deputado order by by c.cpf



SELECT * FROM candidato_view c, votacao_view v
WHERE c.nome_completo=v.nome_deputado


SELECT c.id,c.nome_completo
from candidato_view c
WHERE Exists(select nome_deputado from votacao_view v where c.nome=)


SELECT EmailAddress, CustomerName FROM Customers a
WHERE Exists ( SELECT emailAddress FROM customers c WHERE a.customerName != c.customerName AND a.EmailAddress = c.EmailAddress)

SELECT c1.id, c1.nome_completo FROM candidato c1
WHERE Exists(select c2.nome_completo FROM candidato c2 where c1.nome_completo=c2.nome_completo and c1.id!=c2.id) order by c1.nome_completo

















SELECT nome_completo from candidato_view where nome_completo not in (SELECT nome_deputado from votacao_view)

SELECT nome_deputado from votacao_view where nome_deputado  in (SELECT nome_completo from candidato_view)










UPDATE candidato
set nome_completo = 'JOVAIR DE OLIVEIRA ARANTES'
where id=9205

UPDATE candidato
set nome_completo = 'JOZIANE ARAUJO NASCIMENTO'
where id=2244



