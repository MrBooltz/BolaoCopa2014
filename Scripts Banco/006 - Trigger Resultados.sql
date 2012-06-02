-- exclui a trigger do banco caso ela já exista
IF (OBJECT_ID('TRG_ATUALIZAR_PONTUACAO_GERAL') IS NOT NULL)
	DROP TRIGGER TRG_ATUALIZAR_PONTUACAO_GERAL
	
GO	

-- recria a trigger de apuração geral da pontuação de apostas
CREATE TRIGGER TRG_ATUALIZAR_PONTUACAO_GERAL ON RESULTADOS FOR INSERT, UPDATE
AS  
	-- declara a variável que conterá o código do resultado que está tendo seu registro
	-- inserido/alterado
	DECLARE @cod_resultado	INT;

	-- obtém o código do resultado que está sendo incluído/alterado
	SELECT @cod_resultado = cod_resultado FROM INSERTED
	
	-- dispara a stored procedure responsável por atualizar a pontuação e a tabela de
	-- índices do apostador quando um registro for inserido na tabela de apostas
	EXEC SP_PROCESSAR_PONTUACAO_GERAL
