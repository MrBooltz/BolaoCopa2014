-- exclui a trigger do banco caso ela j� exista
IF (OBJECT_ID('TRG_ATUALIZAR_PONTUACAO_GERAL') IS NOT NULL)
	DROP TRIGGER TRG_ATUALIZAR_PONTUACAO_GERAL
	
GO	

-- recria a trigger de apura��o geral da pontua��o de apostas
CREATE TRIGGER TRG_ATUALIZAR_PONTUACAO_GERAL ON RESULTADOS FOR INSERT, UPDATE
AS  
	-- declara a vari�vel que conter� o c�digo do resultado que est� tendo seu registro
	-- inserido/alterado
	DECLARE @cod_resultado	INT;

	-- obt�m o c�digo do resultado que est� sendo inclu�do/alterado
	SELECT @cod_resultado = cod_resultado FROM INSERTED
	
	-- dispara a stored procedure respons�vel por atualizar a pontua��o e a tabela de
	-- �ndices do apostador quando um registro for inserido na tabela de apostas
	EXEC SP_PROCESSAR_PONTUACAO_GERAL
