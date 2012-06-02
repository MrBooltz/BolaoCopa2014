-- exclui a view caso ela já esteja no banco
IF (OBJECT_ID('V_RANKING') IS NOT NULL)
	DROP VIEW V_RANKING
	
GO
	
-- recria a view responsável por exibir o ranking dos apostadores com os critérios 
-- de desempate e a pontuação total do apostador
CREATE VIEW V_RANKING AS
	SELECT a.nome					apostador,
		   r.placares_exatos		placares,
		   r.vencedores				vencedores,
		   r.gols_vencedor			gols,
		   ISNULL((SELECT SUM(pontuacao)	
		            FROM apostas
		           WHERE apostador = r.apostador), 0)	pontuacao
      FROM ranking r (NOLOCK)
		   INNER JOIN apostadores a (NOLOCK) ON a.cod_apostador = r.apostador