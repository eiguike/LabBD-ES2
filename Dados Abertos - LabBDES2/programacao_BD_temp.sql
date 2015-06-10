-- PROJETO INTEGRADO
-- GRUPO 8 - PROGRAMA + NATUREZA DA DESPESA
-- Entrega Final - Script de Programação do Banco de Dados
-- 
-- Alunos:
-- HENRIQUE EIHARA:      		490016
-- GABRIELA DE JESUS MARTINS:	489689
-- GUSTAVO RODRIGUES:			489999
-- VALDEIR SOARES PEROZIM:		489786
--

---------------------------------------------------------------------------------------------------------------------------------------------------
--Tabela temporária para utilizar a VIEW ConsultaAvancada
CREATE TEMPORARY TABLE
TabConsultaAvancada(
    codMunicipio INTEGER,
    codPrograma INTEGER,
    codNatureza INTEGER,
    anoInic INTEGER,
    gasto NUMERIC
);

--Executar a cada seção de conexão ao BD
INSERT INTO TabConsultaAvancada SELECT d.codigomunicipio, d.codigoprograma, d.codigonatureza, d.dataano, SUM(d.valor) 
    FROM despesa d, programa p, natureza n, municipio m WHERE m.codigo = d.codigomunicipio 
    AND d.codigoprograma = p.codigo AND d.codigonatureza = n.codigo 
    GROUP BY d.codigomunicipio, d.codigoprograma, d.codigonatureza, d.dataano;
---------------------------------------------------------------------------------------------------------------------------------------------------
--VIEWS
CREATE VIEW CodMunicipio(codigo) AS
SELECT codigo, descricao
FROM municipio;

CREATE VIEW NaturezaView AS
SELECT codigo, descricao
FROM natureza;

CREATE VIEW ProgramaView(codigo, descricao) AS
SELECT codigo, descricaointernamunicipio
FROM programa;

CREATE OR REPLACE VIEW ConsultaAvancada(munic, progr, natu, data, gasto) AS
    SELECT * FROM TabConsultaAvancada;

---------------------------------------------------------------------------------------------------------------------------------------------------
--TRIGGER
CREATE TABLE HISTORICO (
	COD SERIAL NOT NULL PRIMARY KEY,
	TIPO_CONSULTA VARCHAR(100),
	TEXTO_CONSULTA VARCHAR(100),
	DATA DATE,
	HORARIO TIME
);

CREATE OR REPLACE FUNCTION HISTORICO_F() RETURNS trigger AS $HISTORICO_F$
DECLARE valAntigo INTEGER;
BEGIN
	SELECT COUNT(COD) INTO valAntigo FROM HISTORICO;
	IF (valAntigo != 0) THEN
		SELECT MAX(COD) INTO valAntigo FROM HISTORICO;
		NEW.COD := valAntigo+1;
	END IF;

	NEW.DATA := current_date;
	NEW.HORARIO := current_time;
	RETURN NEW;

END;
$HISTORICO_F$ LANGUAGE plpgsql;

-- CRIACAO DA TRIGGER EM HISTORICO, ANTES DE REALIZAR UMA INSERCAO
CREATE TRIGGER HISTORICO_F BEFORE INSERT ON HISTORICO
FOR EACH ROW EXECUTE PROCEDURE HISTORICO_F();

----------------------------------------------------------------------------------------------------------------------------------------------------
--OTIMIZAÇÕES
CREATE INDEX indice_codNatureza ON despesa USING hash (codigonatureza); -- INDICE PARA CONSULTA SIMPLES -NATUREZA
CREATE INDEX indice_codPrograma ON despesa USING hash (codigoprograma); -- INDICE PARA CONSULTA SIMPLES -PROGRAMA
CREATE INDEX indice_dataano   ON despesa using btree(dataano);    -- PARA CONSULTA DE TRATAMENTO DE PARÂMETROS NÃO INFORMADOS NAS PROCEDURES
----------------------------------------------------------------------------------------------------------------------------------------------------
--STORE PROCEDURES CONSULTAS SIMPLES

CREATE OR REPLACE FUNCTION CONSULTA_SIMPLES_NATUREZA(VARCHAR(100), VARCHAR (100), VARCHAR(100), VARCHAR (100))
RETURNS TABLE(cod INTEGER, descricao VARCHAR(100), gasto NUMERIC) AS $$

DECLARE 
	natDesc ALIAS FOR $1;
	cidade ALIAS FOR $2;
	tipo_consulta ALIAS FOR $3;
	texto_consulta ALIAS FOR $4;

BEGIN
	IF cidade IS NULL THEN
		cidade := 'Campinas';
	END IF;

	IF natDesc IS NULL THEN --RETORNA A AGREGAÇÃO PARA TODAS AS NATUREZAS
		RETURN QUERY
		SELECT  N.codigo, N.descricao, SUM(Desp.valor) AS gasto FROM despesa Desp, natureza N, (
			SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --usando a view
		WHERE Mun.codigo = Desp.codigomunicipio AND N.codigo = Desp.codigonatureza
		GROUP BY N.codigo, N.descricao ORDER BY gasto DESC;
	ELSE -- RETORNA A AGREGAÇÃO PARA UMA NATUREZA ESPECÍFICA
		RETURN QUERY
		SELECT  N.codigo, N.descricao, SUM(Desp.valor) AS gasto FROM despesa Desp,
			(SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natDesc )N,  --usando view
			(SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --usando a view
		WHERE Mun.codigo = Desp.codigomunicipio AND N.codigo = Desp.codigonatureza
		GROUP BY N.codigo, N.descricao ORDER BY gasto DESC;
	END IF;

	INSERT INTO HISTORICO VALUES(1, tipo_consulta, texto_consulta);
END;
$$ LANGUAGE plpgsql;

--------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION CONSULTA_SIMPLES_PROGRAMA(VARCHAR(100), VARCHAR (100), VARCHAR(100), VARCHAR(100))
RETURNS TABLE(cod INTEGER, descricao VARCHAR(100), gasto NUMERIC) AS $$

DECLARE 
	progDesc ALIAS FOR $1;
	cidade ALIAS FOR $2;
	tipo_consulta ALIAS FOR $3;
	texto_consulta ALIAS FOR $4;

BEGIN
	IF cidade IS NULL THEN
		cidade := 'Campinas';
	END IF;

	IF progDesc IS NULL THEN --RETORNA A AGREGAÇÃO PARA TODAS OS PROGRAMAS
		RETURN QUERY
		SELECT  P.codigo, P.descricaointernamunicipio, SUM(Desp.valor) AS gasto FROM despesa Desp, programa P,
			(SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun  --usando view
		WHERE Mun.codigo = Desp.codigomunicipio AND P.codigo = Desp.codigoprograma
		GROUP BY P.codigo, P.descricaointernamunicipio ORDER BY gasto DESC;
	ELSE -- RETORNA A AGREGAÇÃO PARA UM PROGRAMA ESPECÍFICA
		RETURN QUERY
		SELECT  P.codigo, P.descricao, SUM(Desp.valor) AS gasto FROM despesa Desp,
			(SELECT * FROM ProgramaView Prog WHERE Prog.descricao ILIKE progDesc)P, --usando view
			(SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --usando view
		WHERE Mun.codigo = Desp.codigomunicipio AND P.codigo = Desp.codigoprograma
		GROUP BY P.codigo, P.descricao ORDER BY gasto DESC;
	END IF;
	
	INSERT INTO HISTORICO VALUES(1, tipo_consulta, texto_consulta);
END;
$$ LANGUAGE plpgsql;

-----------------------------------------------------------------------------------------------------------------------------------------------------
--STORE PROCEDURE CONSULTA AVANÇADA

CREATE OR REPLACE FUNCTION CONSULTA_AVANCADA(VARCHAR(100), VARCHAR (100), VARCHAR(100), INTEGER, INTEGER, REAL, REAL, VARCHAR(100), VARCHAR(100))
RETURNS TABLE(descricaoPrograma VARCHAR(100), descricaoNatureza VARCHAR(100), gasto NUMERIC) AS $$

DECLARE 
	natureza1 ALIAS FOR $1;
	natureza2 ALIAS FOR $2;
	cidade ALIAS FOR $3;
	anoInic ALIAS FOR $4;
	anoFinal ALIAS FOR $5;
	limiteInferior ALIAS FOR $6;
	limiteSuperior ALIAS FOR $7;
	tipo_consulta ALIAS FOR $8;
	texto_consulta ALIAS FOR $9;

BEGIN
    IF anoInic IS NULL THEN
        SELECT  dataano INTO anoInic FROM despesa ORDER BY dataano ASC LIMIT 1;
    END IF;

    IF anoFinal IS NULL THEN
        SELECT  dataano INTO anoFinal FROM despesa ORDER BY dataano DESC LIMIT 1;
    END IF;

    IF limiteInferior IS NULL THEN
        limiteInferior := 0;
    END IF;

    IF cidade IS NULL THEN
        cidade := 'Campinas';
    END IF;

    IF natureza2 IS NULL AND limiteSuperior IS NULL THEN
	raise notice 'Entrou no caso 1';
        RETURN QUERY
            SELECT P.descricaointernamunicipio , N.descricao , C.gasto FROM programa P, ConsultaAvancada C,
                (SELECT * FROM natureza Nat WHERE Nat.descricao ILIKE natureza1)N,
		(SELECT M.codigo FROM Municipio M WHERE M.descricao = cidade )Mun
            WHERE Mun.codigo = C.munic AND C.progr = P.codigo AND C.natu = N.codigo AND
                (C.data >= anoInic and C.data <= anoFinal)
            GROUP BY P.descricaointernamunicipio , N.descricao, C.gasto
            HAVING C.gasto > limiteInferior
            ORDER BY P.descricaointernamunicipio ASC;

    ELSIF natureza2 IS NULL AND limiteSuperior IS NOT NULL THEN
	raise notice 'Entrou no caso 2';
        RETURN QUERY
            SELECT P.descricaointernamunicipio , N.descricao , C.gasto FROM programa P, ConsultaAvancada C,
                (SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1) N,
		(SELECT M.codigo FROM Municipio M WHERE M.descricao = cidade)Mun
            WHERE Mun.codigo = C.munic AND C.progr = P.codigo AND C.natu = N.codigo AND
                (C.data >= anoInic and C.data <= anoFinal)
            GROUP BY P.descricaointernamunicipio , N.descricao, C.gasto
            HAVING C.gasto > limiteInferior AND C.gasto < limiteSuperior
            ORDER BY P.descricaointernamunicipio ASC;


    ELSIF natureza2 IS NOT NULL AND limiteSuperior IS NULL THEN
	raise notice 'Entrou no caso 3';
        RETURN QUERY
            SELECT P.descricaointernamunicipio , N.descricao , C.gasto FROM programa P, ConsultaAvancada C, 
                (SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1 UNION --view
                SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza2) N, --view
		(SELECT M.codigo FROM Municipio M WHERE M.descricao = cidade)Mun 
            WHERE Mun.codigo = C.munic AND C.progr = P.codigo AND C.natu = N.codigo AND
                (C.data >= anoInic and C.data <= anoFinal)
            GROUP BY P.descricaointernamunicipio , N.descricao, C.gasto
            HAVING C.gasto > limiteInferior
            ORDER BY P.descricaointernamunicipio ASC;
    ELSE
	raise notice 'Entrou no caso 4';
        RETURN QUERY
            SELECT P.descricaointernamunicipio , N.descricao , C.gasto FROM programa P, ConsultaAvancada C,
                (SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1 UNION --view
                SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza2) N, --view
		(SELECT M.codigo FROM Municipio M WHERE M.descricao = cidade)Mun
            WHERE Mun.codigo = C.munic AND C.progr = P.codigo AND C.natu = N.codigo AND
                (C.data >= anoInic and C.data <= anoFinal)
            GROUP BY P.descricaointernamunicipio , N.descricao, C.gasto
            HAVING C.gasto > limiteInferior AND C.gasto < limiteSuperior
            ORDER BY P.descricaointernamunicipio ASC;
    END IF;

    INSERT INTO HISTORICO VALUES(1,tipo_consulta, texto_consulta);
    
END;
$$ LANGUAGE plpgsql;
