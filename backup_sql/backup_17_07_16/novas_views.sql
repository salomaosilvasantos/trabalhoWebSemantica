CREATE OR REPLACE VIEW public.legenda_view AS 
 SELECT DISTINCT candidato.codigo_legenda,
    candidato.sigla_legenda,
    candidato.composicao_legenda,
    candidato.nome_legenda
   FROM candidato;

CREATE OR REPLACE VIEW public.partido_candidato_view AS 
 SELECT p.id AS partido_id,
    c.id AS candidato_id,
    c.despesa_max_campanha
   FROM candidato c,
    partido p
  WHERE c.numero_partido = p.numero;

create view candidato_bens_view as 
select c.id as candidato_id
from candidato c, bem_candidato b
where c.sequencial = b.sequencial_cand;