		-- PROJETO INTEGRADO
	-- GRUPO 8 - PROGRAMA + NATUREZA DA DESPESA
	-- Fase Intermediária 2 - Script de Programação do Banco de Dados
	-- 
	-- Alunos:
	-- HENRIQUE EIHARA: 490016
	-- GABRIELA DE JESUS MARTINS: 489689
	-- GUSTAVO RODRIGUES: 489999
	-- VALDEIR SOARES PEROZIM: 489786
	--

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
	---------------------------------------------------------------------------------------------------------------------------------------------------
		--TRIGGER
		CREATE TABLE HISTORICO (
			COD SERIAL NOT NULL PRIMARY KEY,
			TIPO_CONSULTA VARCHAR(100),
			DATA DATE,
			HORARIO TIME
		);

		CREATE OR REPLACE FUNCTION HISTORICO_F() RETURNS trigger AS $HISTORICO_F$
		DECLARE valAntigo INTEGER;
			BEGIN
				SELECT COUNT(COD) INTO valAntigo FROM HISTORICO;
				IF(valAntigo != 0) THEN
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
	----------------------------------------------------------------------------------------------------------------------------------------------------
	--STORE PROCEDURES CONSULTAS SIMPLES

	CREATE OR REPLACE FUNCTION CONSULTA_SIMPLES_NATUREZA(VARCHAR(100), VARCHAR (100), VARCHAR(100))
	RETURNS TABLE(cod INTEGER, descricao VARCHAR(100), gasto NUMERIC) AS $$

	DECLARE natDesc ALIAS FOR $1;
	cidade ALIAS FOR $2;
	tipo_consulta ALIAS FOR $3;

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

		INSERT INTO HISTORICO VALUES(1,tipo_consulta);

	END;

	$$ LANGUAGE plpgsql;
	--------------------------------------------------------------------------
	CREATE OR REPLACE FUNCTION CONSULTA_SIMPLES_PROGRAMA(VARCHAR(100), VARCHAR (100), VARCHAR(100))
	RETURNS TABLE(cod INTEGER, descricao VARCHAR(100), gasto NUMERIC) AS $$

	DECLARE progDesc ALIAS FOR $1;
	cidade ALIAS FOR $2;
	tipo_consulta ALIAS FOR $3;

	BEGIN
		IF cidade IS NULL THEN
			cidade := 'Campinas';

		END IF;


		IF progDesc IS NULL THEN --RETORNA A AGREGAÇÃO PARA TODAS OS PROGRAMAS

			RETURN QUERY
				SELECT  P.codigo, P.descricaointernamunicipio, SUM(Desp.valor) AS gasto FROM despesa Desp, programa P, (
					SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun  --usando view
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

		INSERT INTO HISTORICO VALUES(1,tipo_consulta);

	END;

	$$ LANGUAGE plpgsql;
	-----------------------------------------------------------------------------------------------------------------------------------------------------
	--STORE PROCEDURE CONSULTA AVANÇADA

	CREATE OR REPLACE FUNCTION CONSULTA_AVANCADA(VARCHAR(100), VARCHAR (100), VARCHAR(100), INTEGER, INTEGER, REAL, REAL, VARCHAR(100))
	RETURNS TABLE(descricaoPrograma VARCHAR(100), descricaoNatureza VARCHAR(100), gasto NUMERIC) AS $$

	DECLARE natureza1 ALIAS FOR $1;
	natureza2 ALIAS FOR $2;
	cidade ALIAS FOR $3;
	anoInic ALIAS FOR $4;
	anoFinal ALIAS FOR $5;
	limiteInferior ALIAS FOR $6;
	limiteSuperior ALIAS FOR $7;
	tipo_consulta ALIAS FOR $8;

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
			RETURN QUERY
				SELECT P.descricaointernamunicipio , N.descricao , SUM(D.valor) AS gasto FROM despesa D, programa P, (
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1) N,( --usando view
						SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --usando view
				WHERE Mun.codigo = D.codigomunicipio AND D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND
				(dataano >= anoInic and dataano <= anoFinal)
				GROUP BY P.descricaointernamunicipio , N.descricao
				HAVING SUM(D.valor) > limiteInferior
				ORDER BY gasto DESC;

		ELSIF natureza2 IS NULL AND limiteSuperior IS NOT NULL THEN
			RETURN QUERY
				SELECT P.descricaointernamunicipio , N.descricao , SUM(D.valor) AS gasto FROM despesa D, programa P, (
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1) N,( --usando view
						SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --usando view
				WHERE Mun.codigo = D.codigomunicipio AND D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND
					(dataano >= anoInic and dataano <= anoFinal)
				GROUP BY P.descricaointernamunicipio , N.descricao
				HAVING SUM(D.valor) > limiteInferior AND SUM(D.valor) < limiteSuperior
				ORDER BY gasto DESC;

		ELSIF natureza2 IS NOT NULL AND limiteSuperior IS NULL THEN
			RETURN QUERY

				SELECT P.descricaointernamunicipio , N.descricao , SUM(D.valor) AS gasto FROM despesa D, programa P, (
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1 UNION --view
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza2) N,( --view
						SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --view
				WHERE Mun.codigo = D.codigomunicipio AND D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND
					(dataano >= anoInic and dataano <= anoFinal)
				GROUP BY P.descricaointernamunicipio , N.descricao
				HAVING SUM(D.valor) > limiteInferior
				ORDER BY gasto DESC;
		ELSE
			RETURN QUERY

				SELECT P.descricaointernamunicipio , N.descricao , SUM(D.valor) AS gasto FROM despesa D, programa P, (
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza1 UNION --view
					SELECT * FROM naturezaView Nat WHERE Nat.descricao ILIKE natureza2) N,( --view
						SELECT M.codigo FROM CodMunicipio M WHERE M.descricao = cidade)Mun --view
				WHERE Mun.codigo = D.codigomunicipio AND D.codigoprograma = P.codigo AND D.codigonatureza = N.codigo AND
					(dataano >= anoInic and dataano <= anoFinal)
				GROUP BY P.descricaointernamunicipio , N.descricao
				HAVING SUM(D.valor) > limiteInferior AND SUM(D.valor) < limiteSuperior
				ORDER BY gasto DESC;

		END IF;

		INSERT INTO HISTORICO VALUES(1,tipo_consulta);
		
	END;

	$$ LANGUAGE plpgsql;
