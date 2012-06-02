using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BolaoCopa.Classes;
using System.Data.SqlClient;

namespace BolaoCopa
{
    public partial class Principal : System.Web.UI.Page
    {
        // método responsável por exibir os dias restantes até a copa do mundo
        private void MostrarDiasRestantes()
        {
            // string que conterá os dias restantes para a copa do mundo
            String diasRestantes = "";

            // flag indicativa de conexão com o banco
            Boolean bConectou = false;

            // abre a consulta do número de dias para a copa do mundo
            try
            {
                // instancia a conexão com o banco
                ConexaoBD conexao = new ConexaoBD();

                // tenta realizar a conexão
                bConectou = (conexao.Conectar() != null);

                // conseguiu se conectar
                if (bConectou)
                {
                    // define a string sql para verificar o usuário e a senha
                    conexao.getComando().CommandText = " SELECT dbo.FN_DIAS_PARA_COPA() diasParaCopa";

                    // executa a consulta no banco
                    SqlDataReader dados;
                    dados = conexao.getComando().ExecuteReader();

                    // retornou alguma coisa
                    if (dados.HasRows)
                    {
                        // lê os dados que foram retornados
                        dados.Read();

                        // cria as variáveis de sessão que identificam o usuário logado no sistema
                        diasRestantes = dados["diasParaCopa"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                // caso alguma exceção ocorra, deve-se retornar o valor padrão "0000"
                diasRestantes = "0 0 0 0";
            }  // catch (Exception ex)

            // exibe a quantidade de dias restantes
            lbTextoContador.Text = diasRestantes;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // escreve o primeiro nome do usuário
            if (Session["nomeApostador"] != null)
                lbBemVindo.Text = "Bem-vindo(a) " + Session["nomeApostador"].ToString() + " !";

            // exibe a quantidade de dias restantes para a copa do mundo
            MostrarDiasRestantes();
        }
    }
}