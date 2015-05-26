-- PROJETO INTEGRADO
-- GRUPO 8 - PROGRAMA + NATUREZA DA DESPESA
-- Fase Intermediária 1 - Consultas da 1º Fase
-- 
-- Alunos:
-- HENRIQUE EIHARA: 490016
-- GABRIELA DE JESUS MARTINS: 489689
-- GUSTAVO RODRIGUES: 489999
-- VALDEIR SOARES PEROZIM: 489786
--


--Total de Gastos por Natureza da Despesa
SELECT  N.codigo, N.descricao, SUM(Desp.valor) AS gasto 
FROM despesa Desp, natureza N, 
	(SELECT M.codigo FROM municipio M WHERE M.descricao ilike 'Campinas')Mun 
WHERE Mun.codigo = Desp.codigomunicipio AND N.codigo = Desp.codigonatureza 
GROUP BY N.codigo, N.descricao 
ORDER BY gasto DESC;

--Total de gastos por programa
SELECT  P.codigo, P.descricaointernamunicipio, SUM(Desp.valor) AS gasto 
FROM despesa Desp, programa P, 
	(SELECT M.codigo FROM municipio M WHERE M.descricao ilike 'Campinas')Mun 
WHERE Mun.codigo = Desp.codigomunicipio AND P.codigo = Desp.codigoprograma 
GROUP BY P.codigo, P.descricaointernamunicipio 
ORDER BY gasto DESC;

--Programa x Natureza Despesa
SELECT P.descricaointernamunicipio, N.descricao, SUM(D.valor) AS gasto
FROM despesa D, programa P, (SELECT codigo, descricao FROM natureza WHERE (descricao ILIKE '%obras%' OR descricao ILIKE '%equipamentos')) N
WHERE D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND EXISTS (SELECT dataano FROM despesa WHERE dataano >= 2010 AND dataano <= 2015)
GROUP BY P.descricaointernamunicipio, N.descricao HAVING SUM(D.valor) > 1000000
ORDER BY P.descricaointernamunicipio