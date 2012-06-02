using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using BolaoCopa.Classes;

namespace BolaoCopa
{
    public partial class Aposta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMsgErro.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMsgErro.Visible = false;
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            // recupera o codigo do apostador e rodada
            int codigo_apostador = Int32.Parse(Session["codApostador"].ToString());
            int codigo_rodada = Int32.Parse(DropDownList1.SelectedValue);
            lblMsgErro.Visible = false;
            bool verificaErro = false;
            try
            {
                // recupera codigo, placar1 e placar 2
                string[] arguments = ((string)e.CommandArgument).Split('|');
                int codigoJogo = Convert.ToInt32(arguments[0]);
                if (!verificaAposta(codigoJogo, codigo_apostador))
                {
                    int linha = Convert.ToInt32(arguments[1]);
                    GridViewRow row = GridView1.Rows[linha - 1];


                    if (((TextBox)row.Cells[2].FindControl("txtPlacar1")).Text != "" && ((TextBox)row.Cells[2].FindControl("txtPlacar2")).Text != "")
                    {
                        int txtPlacar1 = Int32.Parse(((TextBox)row.Cells[2].FindControl("txtPlacar1")).Text);
                        int txtPlacar2 = Int32.Parse(((TextBox)row.Cells[4].FindControl("txtPlacar2")).Text);
                        ConexaoBD conexao = new ConexaoBD();

                        // salva no banco as alteraçoes
                        string strPersisteJogo = "INSERT INTO APOSTAS VALUES(" + codigo_apostador + "," + codigoJogo + "," + txtPlacar1 + "," + txtPlacar2 + "," + "0)";

                        conexao.getComando().CommandText = strPersisteJogo;

                        conexao.Conectar();

                        SqlCommand cmd = new SqlCommand(@strPersisteJogo);
                        //cmd.ExecuteNonQuery();
                        conexao.getComando().ExecuteNonQuery();
                        conexao.Desconectar();
                    }
                    else
                    {
                        lblMsgErro.Visible = true;
                        lblMsgErro.Text = "Os dois placares devem ser informados!";
                        verificaErro = true;
                    }

                }
                else
                {
                    lblMsgErro.Visible = true;
                    lblMsgErro.Text = "Você já realizou aposta para este jogo!";
                    
                    verificaErro = true;
                }

            }
            catch (Exception ex)
            { 
                lblMsgErro.Visible = true;
                lblMsgErro.Text = "Ocorreu algum erro durante a conexão com o banco :  " + ex.ToString();
                verificaErro = true;
               
            }
            finally
            {
                if (!verificaErro)
                {
                    lblMsgErro.Text = "Dados inseridos com sucesso!";
                    lblMsgErro.Visible = true;
                }

            }


        }
        
        /// <summary>
        /// Verifica se o apostador ja efetuou aposta para o jogo
        /// </summary>
        /// <param name="cod_jogo"></param>
        /// <param name="cod_apostador"></param>
        /// <returns></returns>
        protected bool verificaAposta(int cod_jogo, int cod_apostador)
        {
            bool retorno = false;

            ConexaoBD conexao = new ConexaoBD();
            string strVerificaAposta = "select * from apostas where apostador = " + cod_apostador + " and jogo = " + cod_jogo;

            conexao.getComando().CommandText = strVerificaAposta;
            conexao.Conectar();
            SqlCommand cmd = new SqlCommand(@strVerificaAposta);
            // executa a consulta no banco
            SqlDataReader dados;
            dados = conexao.getComando().ExecuteReader();

            if (dados.HasRows)
            {
                retorno = true;
            }

            conexao.Desconectar();
            return retorno;
        }
    }
}