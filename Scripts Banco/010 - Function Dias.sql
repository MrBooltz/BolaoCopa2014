-- exclui a função do banco caso ela exista
IF (OBJECT_ID('FN_DIAS_PARA_COPA') IS NOT NULL)
    DROP FUNCTION FN_DIAS_PARA_COPA;

GO

-- recria a função que recalcula o número de dias restantes para a copa do mundo
CREATE FUNCTION FN_DIAS_PARA_COPA()
RETURNS VARCHAR(7)
AS
BEGIN
	-- variáveis necessárias
	DECLARE @dtInicioCopa	SMALLDATETIME
	DECLARE @diasParaCopa	VARCHAR(4)
	DECLARE @retorno		VARCHAR(7)

	-- inicializa as variáveis necessárias
	SET @dtInicioCopa = '2014-06-12'

	-- obtém a quantidade de dias restantes para a copa do mundo
	SELECT @diasParaCopa = CONVERT(VARCHAR, ABS(DATEDIFF(DD, @dtInicioCopa, GETDATE())))

	-- normaliza a quantidade de dias para que tenha sempre 4 dígitos
	IF (LEN(@diasParaCopa) < 4)
		SET @diasParaCopa = REPLICATE('0', 4 - LEN(@diasParaCopa)) + @diasParaCopa

	-- acrescenta um espaço entre cada um dos dígitos a serem retornados
	RETURN(	SUBSTRING(@diasParaCopa, 1, 1) + ' ' + SUBSTRING(@diasParaCopa, 2, 1) + ' ' + 
			SUBSTRING(@diasParaCopa, 3, 1) + ' ' + SUBSTRING(@diasParaCopa, 4, 1));

END;