-- exclui a fun��o do banco caso ela exista
IF (OBJECT_ID('FN_DIAS_PARA_COPA') IS NOT NULL)
    DROP FUNCTION FN_DIAS_PARA_COPA;

GO

-- recria a fun��o que recalcula o n�mero de dias restantes para a copa do mundo
CREATE FUNCTION FN_DIAS_PARA_COPA()
RETURNS VARCHAR(7)
AS
BEGIN
	-- vari�veis necess�rias
	DECLARE @dtInicioCopa	SMALLDATETIME
	DECLARE @diasParaCopa	VARCHAR(4)
	DECLARE @retorno		VARCHAR(7)

	-- inicializa as vari�veis necess�rias
	SET @dtInicioCopa = '2014-06-12'

	-- obt�m a quantidade de dias restantes para a copa do mundo
	SELECT @diasParaCopa = CONVERT(VARCHAR, ABS(DATEDIFF(DD, @dtInicioCopa, GETDATE())))

	-- normaliza a quantidade de dias para que tenha sempre 4 d�gitos
	IF (LEN(@diasParaCopa) < 4)
		SET @diasParaCopa = REPLICATE('0', 4 - LEN(@diasParaCopa)) + @diasParaCopa

	-- acrescenta um espa�o entre cada um dos d�gitos a serem retornados
	RETURN(	SUBSTRING(@diasParaCopa, 1, 1) + ' ' + SUBSTRING(@diasParaCopa, 2, 1) + ' ' + 
			SUBSTRING(@diasParaCopa, 3, 1) + ' ' + SUBSTRING(@diasParaCopa, 4, 1));

END;