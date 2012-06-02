using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BolaoCopa.Classes
{
    public class Usuario
    {
        // atributos privados da classe
        String sUsuario;
        String sSenha;
        String sEmail;
        String sPrimeiroNome;
        String sMsgErro;
        Int32 iCodigo;

        // método de get do atributo sUsuario
        public String getUsuario()
        {
            return sUsuario;
        }

        // método de set do atributo sUsuario
        public void setUsuario(String usuario)
        {
            sUsuario = usuario;
        }

        // método de get do atributo sSenha
        public string getSenha()
        {
            return sSenha;
        }

        // método de set do atributo sSenha
        public void setSenha(String StrSenha)
        {
            sSenha = StrSenha;
        }

        // método de get do atributo sEmail
        public String getEmail()
        {
            return sEmail;
        }

        // método de set do atributo sEmail
        public void setEmail(String email)
        {
            sEmail = email;
        }

        // método de get do atributo sPrimeiroNome
        public String getPrimeiroNome()
        {
            return sPrimeiroNome;
        }

        // método de set do atributo sPrimeiroNome
        public void setPrimeiroNome(String primeiroNome)
        {
            sPrimeiroNome = primeiroNome;
        }

        // método de get do atributo iCodigo
        public Int32 getCodigo()
        {
            return iCodigo;
        }

        // método de set do atributo iCodigo
        public void setCodigo(Int32 codigo)
        {
            iCodigo = codigo;
        }

        // método privado que retorna a string sql que realiza a autenticação do usuário
        private String SqlAutenticacao()
        {
            // retorna a string de autenticação do usuário e da senha de acesso
            return  " DECLARE @posEspaco	INT "                                               +
                    " DECLARE @nome		    VARCHAR(100) "                                      +
                    " DECLARE @codigo		INT "                                               +
                    " DECLARE @email		VARCHAR(60) "                                       +
                    " DECLARE @retorno	VARCHAR(100) "                                          +

                    " SET @codigo = -1 "                                                        +
                    " SET @email = '' "                                                         +
                    " SET @retorno = '' "                                                       +

                    " SELECT  @codigo = cod_apostador, "                                        + 
		            "         @email  = email, "                                                + 
		            "         @nome   = RTRIM(LTRIM(nome)) "                                    +
                    "   FROM  apostadores (NOLOCK) "                                            +
                    "  WHERE  email = '" + sUsuario + "' "                                      +
                    "    AND  senha = '" + sSenha   + "' "                                      +

                    " IF (@nome IS NOT NULL) BEGIN "                                            +
	                "     SET @posEspaco = CHARINDEX(' ', @nome) "                              +
                                  
                    "     IF (@posEspaco = 0) "                                                 +
		            "         SET @retorno = @nome "                                            +

	                "     ELSE SET @retorno = SUBSTRING(@nome, 1, CHARINDEX(' ', @nome) - 1) "  +
                    " END "                                                                     +

                    " SELECT @codigo AS cod_apostador, @email AS email, @retorno AS primeiroNome ";
        }

        // método de get do atributo sMsgErro
        public String getErro()
        {
            return sMsgErro;
        }

            
        // método responsável por realizar a autenticação de um determinado usuário no sistema. Esse
        // método retorna um boolean indicando se o usuário conseguiu se autenticar no sistema ou 
        // não.
        public Boolean Autenticar()
        {
            // inicializa o retorno do método
            Boolean retorno = false;

            // instancia uma conexão com o banco
            ConexaoBD conexao = new ConexaoBD();

            // tenta se conectar ao banco
            if (conexao.Conectar() == null)
            {
                // retorna a mensagem de erro
                sMsgErro = conexao.getErro();
            }
            else
            {
                // seta a instrução SQL
                SqlDataReader dados = conexao.ExecutarDML(SqlAutenticacao());

                // retornou alguma coisa
                retorno = ((dados.Read()) && (dados["cod_apostador"].ToString() != "-1"));

                // se não conseguiu encontrar dados na pesquisa, significa que o usuário não está autenticado
                if (!retorno)
                {
                    sMsgErro = "Usuário ou senha inválidos !!!";
                }

                // desconecta do banco
                conexao.Desconectar();
            }

            // retorno do método
            return retorno;
        }

        // construtor padrão da classe
        public Usuario()
        {
            // inicializa os campos da classe
            sUsuario        = "";
            sEmail          = "";
            sPrimeiroNome   = "";
            sMsgErro        = "";
            iCodigo         = 1;
        }
    }
}