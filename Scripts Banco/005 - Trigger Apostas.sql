-- exclui a trigger do banco caso ela já exista
IF (OBJECT_ID('TRG_ATUALIZAR_PONTUACAO') IS NOT NULL)
	DROP TRIGGER TRG_ATUALIZAR_PONTUACAO
	
GO	

-- recria a trigger de disparo da procedure de processamento de pontuação por apostador
CREATE TRIGGER TRG_ATUALIZAR_PONTUACAO ON APOSTAS FOR INSERT
AS  
	-- declara a variável que conterá o código do apostador que está tendo seu registro
	-- inserido
	DECLARE @cod_apostador	INT;

	-- obtém o código do apostador que está sendo incluído
	SELECT @cod_apostador = apostador FROM INSERTED
	
	-- dispara a stored procedure responsável por atualizar a pontuação e a tabela de
	-- índices do apostador quando um registro for inserido na tabela de apostas
	EXEC SP_PROCESSAR_PONTUACAO_APOSTADOR @cod_apostador
