-- exclui a trigger do banco caso ela já exista
IF (OBJECT_ID('TRG_INCLUIR_REGISTRO_RANKING') IS NOT NULL)
	DROP TRIGGER TRG_INCLUIR_REGISTRO_RANKING
	
GO	

-- recria a trigger de inclusão do registro inicial do apostador no ranking de apostas
CREATE TRIGGER TRG_INCLUIR_REGISTRO_RANKING ON APOSTADORES FOR INSERT
AS  
	-- declara a variável que irá conter o código do apostador que está sendo inserido
	DECLARE @codApostador INT;

	-- obtém o código do apostador que está sendo inserido
	SET @codApostador = (SELECT cod_apostador FROM inserted);

	-- insere o registro inicial do usuário no ranking de apostadores
	INSERT INTO ranking VALUES (@codApostador, 0, 0, 0);