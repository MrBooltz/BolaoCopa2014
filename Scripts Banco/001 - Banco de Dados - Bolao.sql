-- Exclui as tabelas anteriores
IF (OBJECT_ID('APOSTAS'                         ) IS NOT NULL) DROP TABLE APOSTAS;
IF (OBJECT_ID('RANKING'							) IS NOT NULL) DROP TABLE RANKING;
IF (OBJECT_ID('APOSTADORES'						) IS NOT NULL) DROP TABLE APOSTADORES;
IF (OBJECT_ID('RESULTADOS'						) IS NOT NULL) DROP TABLE RESULTADOS;
IF (OBJECT_ID('JOGOS'							) IS NOT NULL) DROP TABLE JOGOS;
IF (OBJECT_ID('SEDES'							) IS NOT NULL) DROP TABLE SEDES;	
IF (OBJECT_ID('RODADAS'							) IS NOT NULL) DROP TABLE RODADAS;
IF (OBJECT_ID('SELECOES'						) IS NOT NULL) DROP TABLE SELECOES;
IF (OBJECT_ID('ESTADOS'							) IS NOT NULL) DROP TABLE ESTADOS;
IF (OBJECT_ID('GRUPOS'							) IS NOT NULL) DROP TABLE GRUPOS;

GO

-- Cria a tabela de Estados da Federa��o
CREATE TABLE ESTADOS (
		COD_ESTADO	INT,
		NOME		VARCHAR(20) NOT NULL,
		SIGLA		CHAR(2) NOT NULL,
		
		CONSTRAINT PK_ESTADOS PRIMARY KEY (COD_ESTADO));
		
-- cria a tabela de cidades sede
CREATE TABLE SEDES (
		COD_SEDE	INT,
		ESTADIO		VARCHAR(60) NOT NULL,
		CIDADE		VARCHAR(40) NOT NULL,
		
		CONSTRAINT PK_SEDES PRIMARY KEY (COD_SEDE));		
		
-- Cria a tabela de apostadores
CREATE TABLE APOSTADORES (
		COD_APOSTADOR	INT	IDENTITY (1,1),
		NOME			VARCHAR(100) NOT NULL,
		EMAIL			VARCHAR(60) UNIQUE NOT NULL,
		SENHA			VARCHAR(16) NOT NULL,
		CPF				VARCHAR(14) NOT NULL,
		LOGRADOURO		VARCHAR(60) NOT NULL,
		COMPLEMENTO		VARCHAR(20) NOT NULL,
		BAIRRO			VARCHAR(40) NOT NULL,
		CIDADE			VARCHAR(40) NOT NULL,
		ESTADO			INT NOT NULL,
		CEP				VARCHAR(9) NOT NULL,
		NR_CARTAO		VARCHAR(16) NOT NULL,
		BANDEIRA		VARCHAR(20) NOT NULL,
		TITULAR			VARCHAR(30) NOT NULL,
		MES_VALIDADE	INT NOT NULL,
		ANO_VALIDADE	INT NOT NULL,
		COD_SEGURANCA	INT NOT NULL,
		
		CONSTRAINT PK_APOSTADORES         PRIMARY KEY (COD_APOSTADOR),
		CONSTRAINT FK_APOSTADORES_ESTADOS FOREIGN KEY (ESTADO       ) REFERENCES ESTADOS(COD_ESTADO));
		
-- Cria a tabela de Ranking
CREATE TABLE RANKING (
		COD_RANKING		INT IDENTITY(1, 1),
		APOSTADOR		INT NOT NULL,
		PLACARES_EXATOS	INT NOT NULL,
		VENCEDORES		INT NOT NULL,
		GOLS_VENCEDOR	INT NOT NULL,
		
		CONSTRAINT PK_RANKING             PRIMARY KEY (COD_RANKING),
		CONSTRAINT FK_RANKING_APOSTADORES FOREIGN KEY (APOSTADOR  ) REFERENCES APOSTADORES(COD_APOSTADOR));
		
-- Cria a tabela de Rodadas
CREATE TABLE RODADAS (
		COD_RODADA	INT,
		DESCRICAO	VARCHAR(20) NOT NULL,
		
		CONSTRAINT PK_RODADAS PRIMARY KEY (COD_RODADA));				

-- Cria a tabela de Grupos
CREATE TABLE GRUPOS (
		COD_GRUPO	INT,
		DESCRICAO	VARCHAR(10) NOT NULL,
		
		CONSTRAINT PK_GRUPOS PRIMARY KEY (COD_GRUPO));
		
-- Cria a tabela de Sele��es
CREATE TABLE SELECOES (
		COD_SELECAO	INT,
		GRUPO		INT NOT NULL,
		NOME		VARCHAR(20) NOT NULL,
		BANDEIRA	VARCHAR(50) NOT NULL,
		
		CONSTRAINT PK_SELECOES        PRIMARY KEY (COD_SELECAO),
		CONSTRAINT FK_SELECOES_GRUPOS FOREIGN KEY (GRUPO      ) REFERENCES GRUPOS(COD_GRUPO));
		
-- Cria a tabela de Jogos
CREATE TABLE JOGOS (
		COD_JOGO	INT,
		RODADA		INT NOT NULL,
		SEDE		INT NOT NULL,
		DATAHORA	SMALLDATETIME NOT NULL,
		TIME_A		INT NOT NULL,
		TIME_B		INT NOT NULL,
		
		CONSTRAINT PK_JOGOS            PRIMARY KEY (COD_JOGO),
		CONSTRAINT FK_JOGOS_RODADAS    FOREIGN KEY (RODADA  ) REFERENCES RODADAS (COD_RODADA ),
		CONSTRAINT FK_JOGOS_SEDES	   FOREIGN KEY (SEDE    ) REFERENCES SEDES   (COD_SEDE   ),
		CONSTRAINT FK_JOGOS_SELECOES_1 FOREIGN KEY (TIME_A  ) REFERENCES SELECOES(COD_SELECAO),
		CONSTRAINT FK_JOGOS_SELECOES_2 FOREIGN KEY (TIME_B  ) REFERENCES SELECOES(COD_SELECAO));
		
-- Cria a tabela de Resultados		
CREATE TABLE RESULTADOS (
		COD_RESULTADO	INT IDENTITY(1, 1),
		JOGO			INT NOT NULL,
		GOLS_A			INT NOT NULL,
		GOLS_B			INT NOT NULL,
		
		CONSTRAINT PK_RESULTADOS       PRIMARY KEY (COD_RESULTADO),
		CONSTRAINT FK_RESULTADOS_JOGOS FOREIGN KEY (JOGO         ) REFERENCES JOGOS(COD_JOGO));

-- Cria a tabela de Apostas
CREATE TABLE APOSTAS (
		COD_APOSTA	INT IDENTITY(1, 1),
		APOSTADOR	INT NOT NULL,
		JOGO		INT NOT NULL,
		GOLS_A		INT NOT NULL,
		GOLS_B		INT NOT NULL,
		PONTUACAO	INT NOT NULL,
		
		CONSTRAINT PK_APOSTAS           PRIMARY KEY (COD_APOSTA),
		CONSTRAINT FK_APOSTAS_APOSTADOR FOREIGN KEY (APOSTADOR ) REFERENCES APOSTADORES(COD_APOSTADOR),
		CONSTRAINT FK_APOSTAS_JOGO		FOREIGN KEY (JOGO      ) REFERENCES JOGOS      (COD_JOGO     ));

GO

-- Popula a tabela de Estados
INSERT INTO ESTADOS    VALUES ( 1, 'Acre'               , 'AC');
INSERT INTO ESTADOS    VALUES ( 2, 'Alagoas'            , 'AL');
INSERT INTO ESTADOS    VALUES ( 3, 'Amazonas'           , 'AM');
INSERT INTO ESTADOS    VALUES ( 4, 'Amap�'              , 'AP');
INSERT INTO ESTADOS    VALUES ( 5, 'Bahia'              , 'BA');
INSERT INTO ESTADOS    VALUES ( 6, 'Cear�'              , 'CE');
INSERT INTO ESTADOS    VALUES ( 7, 'Distrito Federal'   , 'DF');
INSERT INTO ESTADOS    VALUES ( 8, 'Esp�rito Santo'     , 'ES');
INSERT INTO ESTADOS    VALUES ( 9, 'Goi�s'              , 'GO');
INSERT INTO ESTADOS    VALUES (10, 'Maranh�o'           , 'MA');
INSERT INTO ESTADOS    VALUES (11, 'Minas Gerais'       , 'MG');
INSERT INTO ESTADOS    VALUES (12, 'Mato Grosso do Sul' , 'MS');
INSERT INTO ESTADOS    VALUES (13, 'Mato Grosso'        , 'MT');
INSERT INTO ESTADOS    VALUES (14, 'Par�'               , 'PA');
INSERT INTO ESTADOS    VALUES (15, 'Para�ba'            , 'PB');
INSERT INTO ESTADOS    VALUES (16, 'Pernambuco'         , 'PE');
INSERT INTO ESTADOS    VALUES (17, 'Piau�'              , 'PI');
INSERT INTO ESTADOS    VALUES (18, 'Paran�'             , 'PR');
INSERT INTO ESTADOS    VALUES (19, 'Rio de Janeiro'     , 'RJ');
INSERT INTO ESTADOS    VALUES (20, 'Rio Grande do Norte', 'RN');
INSERT INTO ESTADOS    VALUES (21, 'Rond�nia'           , 'RO');
INSERT INTO ESTADOS    VALUES (22, 'Roraima'            , 'RR');
INSERT INTO ESTADOS    VALUES (23, 'Rio Grande do Sul'  , 'RS');
INSERT INTO ESTADOS    VALUES (24, 'Santa Catarina'     , 'SC');
INSERT INTO ESTADOS    VALUES (25, 'Sergipe'            , 'SE');
INSERT INTO ESTADOS    VALUES (26, 'S�o Paulo'          , 'SP');
INSERT INTO ESTADOS    VALUES (27, 'Tocantins'          , 'TO');

GO

-- Popula a tabela de Cidades Sede
INSERT INTO SEDES      VALUES ( 1, 'Mineir�o'        , 'Belo Horizonte');
INSERT INTO SEDES      VALUES ( 2, 'Itaquer�o'       , 'S�o Paulo'     );
INSERT INTO SEDES      VALUES ( 3, 'Maracan�'        , 'Rio de Janeiro');
INSERT INTO SEDES      VALUES ( 4, 'Beira Rio'       , 'Porto Alegre'  );
INSERT INTO SEDES      VALUES ( 5, 'Man� Garrincha'  , 'Bras�lia'      );
INSERT INTO SEDES      VALUES ( 6, 'Arena das Dunas' , 'Natal'         );
INSERT INTO SEDES      VALUES ( 7, 'Arena da Baixada', 'Curitiba'      );
INSERT INTO SEDES      VALUES ( 8, 'Verd�o'          , 'Cuiab�'        );
INSERT INTO SEDES      VALUES ( 9, 'Vivald�o'        , 'Manaus'        );
INSERT INTO SEDES      VALUES (10, 'Castel�o'        , 'Fortaleza'     );
INSERT INTO SEDES      VALUES (11, 'Fonte Nova'      , 'Salvador'      );
INSERT INTO SEDES      VALUES (12, 'Arena Recife'    , 'Recife'        );

GO

-- Popula a tabela de Rodadas
INSERT INTO RODADAS    VALUES ( 1, '1� Rodada');
INSERT INTO RODADAS    VALUES ( 2, '2� Rodada');
INSERT INTO RODADAS    VALUES ( 3, '3� Rodada');

GO

-- Popula a tabela de Grupos
INSERT INTO GRUPOS     VALUES ( 1, 'Grupo A');
INSERT INTO GRUPOS     VALUES ( 2, 'Grupo B');
INSERT INTO GRUPOS     VALUES ( 3, 'Grupo C');
INSERT INTO GRUPOS     VALUES ( 4, 'Grupo D');
INSERT INTO GRUPOS     VALUES ( 5, 'Grupo E');
INSERT INTO GRUPOS     VALUES ( 6, 'Grupo F');
INSERT INTO GRUPOS     VALUES ( 7, 'Grupo G');
INSERT INTO GRUPOS     VALUES ( 8, 'Grupo H');

GO

-- Popula a tabela de Sele��es
INSERT INTO SELECOES   VALUES ( 1, 1, '�frica do Sul'  , '/imagens/selecoes/1.png');
INSERT INTO SELECOES   VALUES ( 2, 1, 'M�xico'         , '/imagens/selecoes/2.png');
INSERT INTO SELECOES   VALUES ( 3, 1, 'Uruguai'	       , '/imagens/selecoes/3.png');
INSERT INTO SELECOES   VALUES ( 4, 1, 'Fran�a'         , '/imagens/selecoes/4.png');
INSERT INTO SELECOES   VALUES ( 5, 2, 'Argentina'      , '/imagens/selecoes/5.png');
INSERT INTO SELECOES   VALUES ( 6, 2, 'Nig�ria'        , '/imagens/selecoes/6.png');
INSERT INTO SELECOES   VALUES ( 7, 2, 'Cor�ia do Sul'  , '/imagens/selecoes/7.png');
INSERT INTO SELECOES   VALUES ( 8, 2, 'Gr�cia'         , '/imagens/selecoes/8.png');
INSERT INTO SELECOES   VALUES ( 9, 3, 'Inglaterra'     , '/imagens/selecoes/9.png');
INSERT INTO SELECOES   VALUES (10, 3, 'Estados Unidos' , '/imagens/selecoes/10.png');
INSERT INTO SELECOES   VALUES (11, 3, 'Arg�lia'        , '/imagens/selecoes/11.png');
INSERT INTO SELECOES   VALUES (12, 3, 'Eslov�nia'      , '/imagens/selecoes/12.png');
INSERT INTO SELECOES   VALUES (13, 4, 'Alemanha'       , '/imagens/selecoes/13.png');
INSERT INTO SELECOES   VALUES (14, 4, 'Austr�lia'      , '/imagens/selecoes/14.png');
INSERT INTO SELECOES   VALUES (15, 4, 'S�rvia'         , '/imagens/selecoes/15.png');
INSERT INTO SELECOES   VALUES (16, 4, 'Gana'           , '/imagens/selecoes/16.png');
INSERT INTO SELECOES   VALUES (17, 5, 'Holanda'        , '/imagens/selecoes/17.png');
INSERT INTO SELECOES   VALUES (18, 5, 'Dinamarca'      , '/imagens/selecoes/18.png');
INSERT INTO SELECOES   VALUES (19, 5, 'Jap�o'          , '/imagens/selecoes/19.png');
INSERT INTO SELECOES   VALUES (20, 5, 'Camar�es'       , '/imagens/selecoes/20.png');
INSERT INTO SELECOES   VALUES (21, 6, 'It�lia'         , '/imagens/selecoes/21.png');
INSERT INTO SELECOES   VALUES (22, 6, 'Paraguai'       , '/imagens/selecoes/22.png');
INSERT INTO SELECOES   VALUES (23, 6, 'Nova Zel�ndia'  , '/imagens/selecoes/23.png');
INSERT INTO SELECOES   VALUES (24, 6, 'Eslov�quia'     , '/imagens/selecoes/24.png');
INSERT INTO SELECOES   VALUES (25, 7, 'Brasil'         , '/imagens/selecoes/25.png');
INSERT INTO SELECOES   VALUES (26, 7, 'Cor�ia do Norte', '/imagens/selecoes/26.png');
INSERT INTO SELECOES   VALUES (27, 7, 'Costa do Marfim', '/imagens/selecoes/27.png');
INSERT INTO SELECOES   VALUES (28, 7, 'Portugal'       , '/imagens/selecoes/28.png');
INSERT INTO SELECOES   VALUES (29, 8, 'Espanha'        , '/imagens/selecoes/29.png');
INSERT INTO SELECOES   VALUES (30, 8, 'Sui�a'          , '/imagens/selecoes/30.png');
INSERT INTO SELECOES   VALUES (31, 8, 'Honduras'       , '/imagens/selecoes/31.png');
INSERT INTO SELECOES   VALUES (32, 8, 'Chile'          , '/imagens/selecoes/32.png');

GO

-- Popula a tabela de Jogos da Primeira Rodada
INSERT INTO JOGOS      VALUES ( 1, 1,  1, '2014-06-11 16:00:00',  1,  2); 
INSERT INTO JOGOS      VALUES ( 2, 1,  2, '2014-06-11 20:30:00',  3,  4);
INSERT INTO JOGOS      VALUES ( 3, 1,  1, '2014-06-12 13:30:00',  5,  6);
INSERT INTO JOGOS      VALUES ( 4, 1, 11, '2014-06-12 20:30:00',  7,  8);
INSERT INTO JOGOS      VALUES ( 5, 1,  5, '2014-06-12 20:30:00',  9, 10);
INSERT INTO JOGOS      VALUES ( 6, 1,  4, '2014-06-13 13:30:00', 11, 12);
INSERT INTO JOGOS      VALUES ( 7, 1, 12, '2014-06-13 16:00:00', 13, 14);
INSERT INTO JOGOS      VALUES ( 8, 1,  3, '2014-06-13 20:30:00', 15, 16);
INSERT INTO JOGOS      VALUES ( 9, 1,  1, '2014-06-14 13:30:00', 17, 18);
INSERT INTO JOGOS      VALUES (10, 1,  6, '2014-06-14 16:00:00', 19, 20);
INSERT INTO JOGOS      VALUES (11, 1,  2, '2014-06-14 20:30:00', 21, 22);
INSERT INTO JOGOS      VALUES (12, 1,  4, '2014-06-15 13:30:00', 23, 24);
INSERT INTO JOGOS      VALUES (13, 1, 11, '2014-06-15 16:00:00', 27, 28);
INSERT INTO JOGOS      VALUES (14, 1,  1, '2014-06-15 20:30:00', 25, 26);
INSERT INTO JOGOS      VALUES (15, 1, 10, '2014-06-16 13:30:00', 31, 32);
INSERT INTO JOGOS      VALUES (16, 1, 12, '2014-06-16 16:00:00', 29, 30);

GO

/*
-- Popula a tabela de Resultados dos Jogos da Primeira Rodada
INSERT INTO RESULTADOS VALUES ( 1, 1, 1);
INSERT INTO RESULTADOS VALUES ( 2, 0, 0);
INSERT INTO RESULTADOS VALUES ( 3, 1, 0);
INSERT INTO RESULTADOS VALUES ( 4, 2, 0);
INSERT INTO RESULTADOS VALUES ( 5, 1, 1);
INSERT INTO RESULTADOS VALUES ( 6, 0, 1);
INSERT INTO RESULTADOS VALUES ( 7, 4, 0);
INSERT INTO RESULTADOS VALUES ( 8, 0, 1);
INSERT INTO RESULTADOS VALUES ( 9, 2, 0);
INSERT INTO RESULTADOS VALUES (10, 1, 0);
INSERT INTO RESULTADOS VALUES (11, 1, 1);
INSERT INTO RESULTADOS VALUES (12, 1, 1);
INSERT INTO RESULTADOS VALUES (13, 0, 0);
INSERT INTO RESULTADOS VALUES (14, 2, 1);
INSERT INTO RESULTADOS VALUES (15, 0, 1);
INSERT INTO RESULTADOS VALUES (16, 0, 1);

GO
*/

-- Popula a tabela de Jogos da Segunda Rodada
INSERT INTO JOGOS      VALUES (17, 2,  3, '2014-06-16 20:30:00',  1,  3);
INSERT INTO JOGOS      VALUES (18, 2,  4, '2014-06-17 13:30:00',  4,  2);
INSERT INTO JOGOS      VALUES (19, 2,  6, '2014-06-17 16:00:00',  8,  6);
INSERT INTO JOGOS      VALUES (20, 2,  1, '2014-06-17 16:00:00',  5,  7);
INSERT INTO JOGOS      VALUES (21, 2,  1, '2014-06-18 16:00:00', 12, 10);
INSERT INTO JOGOS      VALUES (22, 2,  2, '2014-06-18 20:30:00',  9, 11);
INSERT INTO JOGOS      VALUES (23, 2, 11, '2014-06-18 13:30:00', 13, 15);
INSERT INTO JOGOS      VALUES (24, 2,  5, '2014-06-19 13:30:00', 16, 14);
INSERT INTO JOGOS      VALUES (25, 2, 12, '2014-06-19 16:00:00', 17, 19);
INSERT INTO JOGOS      VALUES (26, 2,  3, '2014-06-19 20:30:00', 20, 18);
INSERT INTO JOGOS      VALUES (27, 2,  6, '2014-06-20 13:30:00', 24, 22);
INSERT INTO JOGOS      VALUES (28, 2, 10, '2014-06-20 16:00:00', 21, 23);
INSERT INTO JOGOS      VALUES (29, 2,  1, '2014-06-20 20:30:00', 25, 27);
INSERT INTO JOGOS      VALUES (30, 2,  2, '2014-06-21 13:30:00', 28, 26);
INSERT INTO JOGOS      VALUES (31, 2, 11, '2014-06-21 16:00:00', 32, 30);
INSERT INTO JOGOS      VALUES (32, 2,  1, '2014-06-21 20:30:00', 29, 31);

GO

/*
-- Popula a tabela de Resultados dos Jogos da Segunda Rodada
INSERT INTO RESULTADOS VALUES (17, 0, 3);
INSERT INTO RESULTADOS VALUES (18, 0, 2);
INSERT INTO RESULTADOS VALUES (19, 2, 1);
INSERT INTO RESULTADOS VALUES (20, 4, 1);
INSERT INTO RESULTADOS VALUES (21, 2, 2);
INSERT INTO RESULTADOS VALUES (22, 0, 0);
INSERT INTO RESULTADOS VALUES (23, 0, 1);
INSERT INTO RESULTADOS VALUES (24, 1, 1);
INSERT INTO RESULTADOS VALUES (25, 1, 0);
INSERT INTO RESULTADOS VALUES (26, 1, 2);
INSERT INTO RESULTADOS VALUES (27, 0, 2);
INSERT INTO RESULTADOS VALUES (28, 1, 1);
INSERT INTO RESULTADOS VALUES (29, 3, 1);
INSERT INTO RESULTADOS VALUES (30, 7, 0);
INSERT INTO RESULTADOS VALUES (31, 1, 0);
INSERT INTO RESULTADOS VALUES (32, 2, 0);

GO
*/

-- Popula a tabela de Jogos da Terceira Rodada
INSERT INTO JOGOS      VALUES (33, 3,  5, '2014-06-22 16:00:00',  2,  3);
INSERT INTO JOGOS      VALUES (34, 3,  6, '2014-06-22 16:00:00',  4,  1);
INSERT INTO JOGOS      VALUES (35, 3, 12, '2014-06-22 20:30:00',  6,  7);
INSERT INTO JOGOS      VALUES (36, 3,  4, '2014-06-22 20:30:00',  8,  5);
INSERT INTO JOGOS      VALUES (37, 3, 11, '2014-06-23 16:00:00', 12,  9);
INSERT INTO JOGOS      VALUES (38, 3,  3, '2014-06-23 16:00:00', 10, 11);
INSERT INTO JOGOS      VALUES (39, 3,  1, '2014-06-23 20:30:00', 16, 13);
INSERT INTO JOGOS      VALUES (40, 3, 10, '2014-06-23 20:30:00', 14, 15);
INSERT INTO JOGOS      VALUES (41, 3,  5, '2014-06-24 20:30:00', 18, 19);
INSERT INTO JOGOS      VALUES (42, 3,  2, '2014-06-24 20:30:00', 20, 17);
INSERT INTO JOGOS      VALUES (43, 3,  1, '2014-06-24 16:00:00', 24, 21);
INSERT INTO JOGOS      VALUES (44, 3,  4, '2014-06-24 16:00:00', 22, 23);
INSERT INTO JOGOS      VALUES (45, 3, 12, '2014-06-25 16:00:00', 28, 25);
INSERT INTO JOGOS      VALUES (46, 3, 10, '2014-06-25 16:00:00', 26, 27);
INSERT INTO JOGOS      VALUES (47, 3,  3, '2014-06-25 20:30:00', 32, 29);
INSERT INTO JOGOS      VALUES (48, 3,  6, '2014-06-25 20:30:00', 30, 31);

GO

/*
-- Popula a tabela de Resultados dos Jogos da Terceira Rodada
INSERT INTO RESULTADOS VALUES (33, 0, 1);
INSERT INTO RESULTADOS VALUES (34, 1, 2);
INSERT INTO RESULTADOS VALUES (35, 2, 2);
INSERT INTO RESULTADOS VALUES (36, 0, 2);
INSERT INTO RESULTADOS VALUES (37, 0, 1);
INSERT INTO RESULTADOS VALUES (38, 1, 0);
INSERT INTO RESULTADOS VALUES (39, 0, 1);
INSERT INTO RESULTADOS VALUES (40, 2, 1);
INSERT INTO RESULTADOS VALUES (41, 1, 3);
INSERT INTO RESULTADOS VALUES (42, 1, 2);
INSERT INTO RESULTADOS VALUES (43, 3, 2);
INSERT INTO RESULTADOS VALUES (44, 0, 0);
INSERT INTO RESULTADOS VALUES (45, 0, 0);
INSERT INTO RESULTADOS VALUES (46, 0, 3);
INSERT INTO RESULTADOS VALUES (47, 1, 2);
INSERT INTO RESULTADOS VALUES (48, 0, 0);

GO
*/

/*
-- Seleciona todos os jogos ordenados por grupo
  SELECT R.DESCRICAO,
         G.DESCRICAO,
         S1.NOME EQUIPE_A,
         R1.GOLS_A,
         S2.NOME EQUIPE_B,
         R2.GOLS_B,
         S.CIDADE,
         S.ESTADIO,
         J.DATAHORA
    FROM JOGOS J (NOLOCK)
	     INNER JOIN RODADAS  R    (NOLOCK) ON R.COD_RODADA   = J.RODADA
	     INNER JOIN SELECOES S1   (NOLOCK) ON S1.COD_SELECAO = J.TIME_A
	     INNER JOIN SELECOES S2   (NOLOCK) ON S2.COD_SELECAO = J.TIME_B
	     INNER JOIN GRUPOS G      (NOLOCK) ON G.COD_GRUPO    = S1.GRUPO	
	     INNER JOIN SEDES S       (NOLOCK) ON S.COD_SEDE     = J.SEDE
	     INNER JOIN RESULTADOS R1 (NOLOCK) ON R1.JOGO        = J.COD_JOGO
  	     INNER JOIN RESULTADOS R2 (NOLOCK) ON R2.JOGO        = J.COD_JOGO
ORDER BY G.COD_GRUPO
*/