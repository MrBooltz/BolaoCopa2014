-- Exclui a procedure caso ela já exista no banco
IF (OBJECT_ID('SP_PROCESSAR_PONTUACAO_APOSTADOR') IS NOT NULL) 
	DROP PROCEDURE SP_PROCESSAR_PONTUACAO_APOSTADOR
	
GO	

-- recria a procedure de processamento da pontuação por apostador
CREATE PROCEDURE SP_PROCESSAR_PONTUACAO_APOSTADOR
	@COD_APOSTADOR	INT
AS BEGIN
	-- declara as variáveis internas necessárias para leitura do cursor
	DECLARE @cod_aposta		INT
	DECLARE @apostador		INT
	DECLARE @jogo			INT
	DECLARE @gols_a			INT
	DECLARE @gols_b			INT
	
	-- declara as variáveis que conterão o resultado do jogo
	DECLARE @resultado_a	INT
	DECLARE @resultado_b	INT
	
	-- declara as variáives que conterão o resultado do jogo e o resultado da aposta
	DECLARE @resultadoVenc	INT  -- 0: empate, 1: vencedor time A, 2: vencedor time B
	DECLARE @resultadoApost	INT  -- 0: empate, 1: vencedor time A, 2: vencedor time B
	
	-- declara as variáveis de atualização da tabela de ranking
	DECLARE @rkPlacares		INT
	DECLARE	@rkVencedores	INT
	DECLARE @rkGols			INT
	
	-- declara a variável que conterá a pontuação do apostador
	DECLARE @pontuacao		INT
	
	-- inicializa o retorno da procedure
	SET @pontuacao			= 0;
	
	-- inicializa as variáveis de atualização da tabela de ranking
	SET @rkPlacares			= 0;
	SET @rkVencedores		= 0;
	SET @rkGols				= 0;
	
	-- seleciona os resultados definidos pelo apostador (apostas)
	DECLARE cursorApostas CURSOR FOR
		SELECT cod_aposta, apostador, jogo, gols_a, gols_b 
		  FROM apostas (NOLOCK)
		 WHERE apostador = @cod_apostador
	  ORDER BY jogo
		
		-- abre o cursor de apostas
		OPEN cursorApostas
		
			-- itera pelos registros do cursor processando os resultados de cada um deles
			FETCH NEXT FROM cursorApostas INTO	@cod_aposta, @apostador, @jogo, @gols_a, @gols_b
			WHILE (@@FETCH_STATUS = 0) BEGIN
				-- obtém os gols do jogo atual da lista
				SELECT	@resultado_a = r.gols_a,
				 		@resultado_b = r.gols_b
				  FROM	resultados r (NOLOCK)
						INNER JOIN jogos j (NOLOCK)	 ON j.cod_jogo = r.jogo
				 WHERE	r.jogo = @jogo
				   AND	r.gols_a IS NOT NULL
				   AND  r.gols_b IS NOT NULL
				   
				-- existe registro na pesquisa
				IF (@resultado_a IS NOT NULL) AND (@resultado_b IS NOT NULL) BEGIN
				 
					-- obtém o vencedor do jogo
					SET @resultadoVenc = 0
					IF (@resultado_a > @resultado_b)
						SET @resultadoVenc = 1
					ELSE IF (@resultado_a < @resultado_b)
						SET @resultadoVenc = 2
						
					-- obtém o vencedor da aposta
					SET @resultadoApost = 0
					IF (@gols_a > @gols_b)
						SET @resultadoApost = 1
					ELSE IF (@gols_a < @gols_b)
						SET @resultadoApost = 2
					 
					-- acertou o resultado do jogo
					IF (@resultadoVenc = @resultadoApost) BEGIN
						-- atualiza a quantidade vencedores para a tabela de ranking se não for empate
						IF (@resultadoApost <> 0) 
							SET @rkVencedores = @rkVencedores + 1
					
						-- regra 1 : acertar o vencedor com o número exato de gols -> 10 pontos
						IF (@gols_a = @resultado_a) AND (@gols_b = @resultado_b) BEGIN
							-- atualiza a pontuação do jogo
							SET @pontuacao  = @pontuacao  + 10
						
							-- atualiza a quantidade de placares exatos
							SET @rkPlacares = @rkPlacares + 1
						END ELSE BEGIN
							-- regra 2 : acertar o vencedor acertando o número de gols de apenas um dos times
							IF (((@gols_a =  @resultado_a) AND (@gols_b <> @resultado_b)) OR ((@gols_a <> @resultado_a) AND (@gols_b =  @resultado_b))) BEGIN
								-- atualiza a pontuação do jogo
								SET @pontuacao = @pontuacao  + 5
							END ELSE BEGIN
								-- regra 3 : acertar o vencedor e não acertando o número de gols de nenhum dos dois times
								IF ((@gols_a <> @resultado_a) AND (@gols_b <> @resultado_b)) BEGIN
									-- atualiza a pontuação do jogo
									SET @pontuacao = @pontuacao  + 2
								END
							END
						END
					
						-- verifica se acertou o número de gols do vencedor para atualizar a tabela de ranking
						IF ((@resultadoVenc = 1) AND (@gols_a = @resultado_a)) OR
						   ((@resultadoVenc = 2) AND (@gols_b = @resultado_b))
							SET @rkGols = @rkGols + 1
					
					END -- IF (@resultadoVenc = @resultadoApost)
					
				END  -- IF (@resultado_a IS NOT NULL) AND (@resultado_b IS NOT NULL) ...
			
				-- atualiza a tabela das apostas do apostador para gravar a pontuação obtida por ele para o jogo
				UPDATE apostas 
				   SET pontuacao = @pontuacao
				 WHERE apostador = @cod_apostador
				   AND jogo      = @jogo
				   
				-- próximo registro do cursor
				FETCH NEXT FROM cursorApostas INTO	@cod_aposta, @apostador, @jogo,	@gols_a, @gols_b

				-- zera o contador de pontuação
				SET @pontuacao = 0
			END  -- WHILE (@@FETCH_STATUS = 0)
		
		-- fecha o cursor de apostas
		CLOSE cursorApostas	  
	
	-- desaloca o cursor de apostas
	DEALLOCATE cursorApostas
	
	-- antes de atualizar a tabela de ranking, verifica se já existe registro para o apostador informado.
	-- Caso exista, exclui esse registro porque ele será inserido novamente através do "INSERT" abaixo.
	IF ((SELECT COUNT(cod_ranking)
	      FROM ranking (NOLOCK)
	     WHERE apostador = @cod_apostador) > 0) BEGIN
	     
		DELETE FROM ranking
		 WHERE apostador = @cod_apostador
	END  -- IF ((SELECT COUNT(cod_ranking) ...
	      
	-- insere o registro do ranking para o apostador informado
	INSERT INTO ranking(
			APOSTADOR, 
			PLACARES_EXATOS, 
			VENCEDORES, 
			GOLS_VENCEDOR)
	 VALUES(@cod_apostador,
			@rkPlacares,
			@rkVencedores,
			@rkGols)	 
END