-- exclui a trigger do banco caso ela j� exista
IF (OBJECT_ID('TRG_ATUALIZAR_PONTUACAO') IS NOT NULL)
	DROP TRIGGER TRG_ATUALIZAR_PONTUACAO
	
GO	

-- recria a trigger de disparo da procedure de processamento de pontua��o por apostador
CREATE TRIGGER TRG_ATUALIZAR_PONTUACAO ON APOSTAS FOR INSERT
AS  
	-- declara a vari�vel que conter� o c�digo do apostador que est� tendo seu registro
	-- inserido
	DECLARE @cod_apostador	INT;

	-- obt�m o c�digo do apostador que est� sendo inclu�do
	SELECT @cod_apostador = apostador FROM INSERTED
	
	-- dispara a stored procedure respons�vel por atualizar a pontua��o e a tabela de
	-- �ndices do apostador quando um registro for inserido na tabela de apostas
	EXEC SP_PROCESSAR_PONTUACAO_APOSTADOR @cod_apostador
