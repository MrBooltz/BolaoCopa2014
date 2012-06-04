using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

namespace BolaoCopa.Classes
{
    // classe pública para realização das operações básicas no banco de dados
    public class ConexaoBD
    {
        // atributos privados da classe
        SqlConnection Conexao;
        SqlCommand Comando;
        String StrConexao;
        String StrMsgErro;
        String sInstrucaoSQL;
        Boolean bConectado;

        // método de get do atributo Conexao
        public SqlConnection getConexao()
        {
            return Conexao;
        }

        // método de set do atributo Conexao
        public void setConexao(SqlConnection sqlConexao)
        {
            Conexao = sqlConexao;
        }

        // método de get do atributo Comando
        public SqlCommand getComando()
        {
            return Comando;
        }

        // método de set do atributo Comando
        public void setComando(SqlCommand sqlComando)
        {
            Comando = sqlComando;
        }

        // método de get do atributo StrConexao
        public String getStringConexao()
        {
            return StrConexao;
        }

        // método de set do atributo StrConexao
        public void setStringConexao(String sStringConexao)
        {
            StrConexao = sStringConexao;
        }

        // método de get do atributo StrMsgErro
        public String getErro()
        {
            // retorna a mensagem de erro da classe
            return StrMsgErro;
        }  

        // método de get do atributo sInstrucaoSQL
        public String getInstrucaoSQL()
        {
            return sInstrucaoSQL;
        }

        // método de set do atributo sInstrucaoSQL
        public void setInstrucaoSQL(String sql)
        {
            sInstrucaoSQL = sql;
        }

        // método de get do atributo Conectado
        public Boolean getConectado()
        {
            return bConectado;
        }

        // método privado que retorna a string de conexão para as transações de banco. Caso
        // a chave não esteja definida no arquivo Webconfig.ini, uma string vazia será retornada
        private String ObterStringConexao()
        {
            // inicializa o retorno do método
            String retorno = "Data Source=ATLANTIS;Initial Catalog=bolaoCopa;Integrated Security=True";

            // verifica se a chave existe no arquivo
            //if (WebConfigurationManager.AppSettings["StringConexaoBanco"].ToString() != "")
            //{
            //    retorno = WebConfigurationManager.AppSettings["StringConexaoBanco"].ToString();
           // }

            // retorno do método
            return retorno;
        }  // private String ObterStringConexao()

        // método responsável por executar uma instrução DML no SGBD
        public SqlDataReader ExecutarDML(String sInstrucao)
        {
            // inicializa o retorno do método
            SqlDataReader retorno = null;

            // se o comando não estiver instanciado, nada deve ser realizado
            if (Comando != null)
            {
                try
                {
                    // seta a instrução SQL a ser executado
                    Comando.CommandText = sInstrucao;

                    // executa a consulta SQL no banco
                    retorno = Comando.ExecuteReader();
                }
                catch (Exception ex)
                {
                    // retorna a mensagem de erro
                    StrMsgErro = ex.ToString();
                }  // catch (Exception ex)
            }  // if (Comando != null)

            // retorno do método
            return retorno;
        }

        // método responsável por executar uma instrução DDL no SGBD
        public Int32 ExecutarDDL(String sInstrucao)
        {
            // inicializa o retorno do método
            Int32 retorno = -1;

            // se o comando não estiver instanciado, nada deve ser realizado
            if (Comando != null)
            {
                try
                {
                    // seta a instrução SQL a ser executado
                    Comando.CommandText = sInstrucao;

                    // executa a consulta SQL no banco
                    retorno = Comando.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // retorna a mensagem de erro
                    StrMsgErro = ex.ToString();
                }  // catch (Exception ex)
            }  // if (Comando != null)

            // retorno do método
            return retorno;
        }

        // método público para realização da conexão com o banco de dados. Esse método retorna
        // um "SqlCommand" caso tudo tenha sido criado corretamente.
        public SqlCommand Conectar()
        {
            // caso a conexão ou o comando não tenha sido instanciada
            if ((Conexao == null) || (Comando == null))
            {
                // seta a mensagem de erro da classe
                StrMsgErro = "Conexão ou Comando não instanciados.";

                // retorno do método
                return null;
            }
            else
            {
                try
                {
                    // tenta realizar a conexão com o banco
                    Conexao.Open();

                    // realiza o link do comando com a conexão a ser utilizada
                    Comando.Connection = Conexao;

                    // seta a flag indicativa de conexão com o banco
                    bConectado = true;

                    // retorno do método
                    return Comando;
                }
                catch (Exception ex)
                {
                    // seta a mensagem de erro da classe
                    StrMsgErro = ex.ToString();

                    // retorno do método
                    return null;
                }  // catch (Exception ex)
            }  // else ...  if ((Conexao == null) || (Comando == null)) ...
        }  

        // método público que realiza o encerramento da conexão com o banco de dados
        public void Desconectar()
        {
            // a conexão está instanciada e portanto de ser encerrada
            if (Conexao != null)
            {
                Conexao.Close();
            }
        }  // public void Desconectar()

        
        // construtor padrão da classe
        public ConexaoBD()
        {
            // inicializa os campos da classe
            Conexao         = null;
            Comando         = null;
            StrMsgErro      = "";
            sInstrucaoSQL   = "";
            bConectado      = false;

            // string de conexão com o banco
            StrConexao      = ObterStringConexao();

            // a string de conexão foi informada
            if (StrConexao != "")
            {
                // instancia a conexão com o banco de dados
                Conexao = new SqlConnection(ObterStringConexao());

                // instancia o comando a ser realizado no banco de dados
                Comando = new SqlCommand();
            }  // if (StrConexao != "")
        } 
    } 
}