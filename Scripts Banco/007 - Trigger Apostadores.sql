-- exclui a trigger do banco caso ela j� exista
IF (OBJECT_ID('TRG_INCLUIR_REGISTRO_RANKING') IS NOT NULL)
	DROP TRIGGER TRG_INCLUIR_REGISTRO_RANKING
	
GO	

-- recria a trigger de inclus�o do registro inicial do apostador no ranking de apostas
CREATE TRIGGER TRG_INCLUIR_REGISTRO_RANKING ON APOSTADORES FOR INSERT
AS  
	-- declara a vari�vel que ir� conter o c�digo do apostador que est� sendo inserido
	DECLARE @codApostador INT;

	-- obt�m o c�digo do apostador que est� sendo inserido
	SET @codApostador = (SELECT cod_apostador FROM inserted);

	-- insere o registro inicial do usu�rio no ranking de apostadores
	INSERT INTO ranking VALUES (@codApostador, 0, 0, 0);