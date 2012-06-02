-- Exclui a procedure caso ela j� exista no banco
IF (OBJECT_ID('SP_PROCESSAR_PONTUACAO_GERAL') IS NOT NULL) 
	DROP PROCEDURE SP_PROCESSAR_PONTUACAO_GERAL;

GO

-- recria a procedure de processamento geral de pontua��o
CREATE PROCEDURE SP_PROCESSAR_PONTUACAO_GERAL
AS BEGIN
	-- declara as vari�veis internas necess�rias para leitura do cursor
	DECLARE @apostador	INT
	
	-- seleciona os c�digos de todos os apostadores cadastrados no banco
	DECLARE cursorApostadores CURSOR FOR
		SELECT cod_apostador
		  FROM apostadores (NOLOCK)
	  ORDER BY cod_apostador
	  
		-- abre o cursor de apostadores
		OPEN cursorApostadores
		
			-- itera pelos registros do cursor executando a procedure que atualiza a pontua��o e
			-- o ranking que cada apostador
			FETCH NEXT FROM cursorApostadores INTO	@apostador
			WHILE (@@FETCH_STATUS = 0) BEGIN
				
				-- processa as informa��es do apostador corrente
				EXEC SP_PROCESSAR_PONTUACAO_APOSTADOR @apostador
				
				-- pr�ximo registro do cursor
			    FETCH NEXT FROM cursorApostadores INTO	@apostador
			END  -- WHILE (@@FETCH_STATUS = 0)
		
		-- fecha o cursor de apostadores
		CLOSE cursorApostadores
	
	-- desaloca o cursor de apostadores
	DEALLOCATE cursorApostadores
END