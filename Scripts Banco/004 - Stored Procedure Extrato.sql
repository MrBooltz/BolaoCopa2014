-- exclui a procedure se ela já existir no banco
IF (OBJECT_ID('SP_GERAR_EXTRATO_APOSTAS') IS NOT NULL) 
	DROP PROCEDURE SP_GERAR_EXTRATO_APOSTAS
	
GO

-- recria a procedure de geração do extrato de apostas por apostador
CREATE PROCEDURE SP_GERAR_EXTRATO_APOSTAS
	@COD_APOSTADOR	INT
AS BEGIN
	-- seleciona os registros que compõem o extrato de pontuaçãs das partidas do apostador
	-- cujo código foi passado como parâmetro
	SELECT r.descricao rodada,
		   g.descricao grupo,
		   s1.nome equipe_a,
		   p.gols_a,
		   p.gols_b,
		   s2.nome equipe_b,
		   s1.nome + ' ' + CONVERT(VARCHAR, p.gols_a) + ' x ' + CONVERT(VARCHAR, p.gols_b) + ' ' + s2.nome resultado,
		   p.pontuacao
	  FROM apostas p (NOLOCK)
		   INNER JOIN apostadores a (NOLOCK)  ON a.cod_apostador = p.apostador
		   INNER JOIN jogos j       (NOLOCK)  ON j.cod_jogo	     = p.jogo
		   INNER JOIN rodadas r     (NOLOCK)  ON r.cod_rodada    = j.rodada
		   INNER JOIN selecoes s1   (NOLOCK)  ON s1.cod_selecao	 = j.time_a
		   INNER JOIN selecoes s2   (NOLOCK)  ON s2.cod_selecao  = j.time_b
		   INNER JOIN grupos g      (NOLOCK)  ON g.cod_grupo     = s1.grupo 
     WHERE p.apostador = @cod_apostador
  ORDER BY r.descricao, g.descricao, p.jogo     
END