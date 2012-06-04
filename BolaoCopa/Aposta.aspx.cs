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
        protected void cbRodada_SelectedIndexChanged(object sender, EventArgs e)
        {
            // limpa o label de mensagem de erro
            lblMsgErro.Visible = false;
        }


        protected void cbRodada_TextChanged(object sender, EventArgs e)
        {
            // limpa o label de mensagem de erro
            lblMsgErro.Visible = false;
        }

        protected void cbGrupo_SelectedIndexChanged(object sender, EventArgs e)
        {
            // limpa o label de mensagem de erro
            lblMsgErro.Visible = false;
        }

        protected void grdApostas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // limpa o label de mensagem
            lblMsgErro.Visible = false;

            // obtém o código da rodada a que se refere o jogo selecionado
            Int32 iRodada = Int32.Parse(cbRodada.SelectedValue);
            
            // obtém o código do apostador diretamente das variáveis de sessão
            Int32 iApostador = Int32.Parse(Session["codApostador"].ToString());

            try
            {
                // obtém o vetor de parâmetros da partida
                string[] parametros = ((string)e.CommandArgument).Split('|');

                // obtém o código da partida no banco
                int iJogo = Convert.ToInt32(parametros[0]);

                // obtém a linha do gridview
                GridViewRow row = grdApostas.Rows[Convert.ToInt32(parametros[1]) - 1];

                // o resultado das duas partidas foi informado com sucesso. Proceder com a gravação das informações
                if (((TextBox)row.Cells[2].FindControl("txtPlacar1")).Text != "" && ((TextBox)row.Cells[2].FindControl("txtPlacar2")).Text != "")
                {
                    // obtém a quantidade de gols das duas equipes
                    Int32 golsA = Int32.Parse(((TextBox)row.Cells[2].FindControl("txtPlacar1")).Text);
                    Int32 golsB = Int32.Parse(((TextBox)row.Cells[4].FindControl("txtPlacar2")).Text);

                    // instancia a classe de aposta para persistência das informações no banco
                    Apostas aposta = new Apostas();

                    // seta os parâmetros necessários da classe
                    aposta.setApostador(iApostador);
                    aposta.setGols_A(golsA);
                    aposta.setGols_B(golsB);
                    aposta.setJogo(iJogo);

                    // persiste as informações no banco
                    if (aposta.Salvar() == 0)
                    {
                        lblMsgErro.Text = "Erro ao salvar as informações :  " + aposta.getErro();
                    }
                    else
                    {
                        lblMsgErro.Text = "Aposta cadastrada com sucesso !!!";
                    }

                    // exibe a mensagem selecionada
                    lblMsgErro.Visible = true;
                }

                // algum resultado de equipe não foi informado. O label com a mensagem correta deve ser apresentada ao usuário.
                else
                {
                    lblMsgErro.Text = "Os dois placares devem ser informados!";
                    lblMsgErro.Visible = true;
                }
            }
            catch (Exception ex)
            {
                // ocorreu algum erro não tratado pela aplicação. Exibir a mensagem da execeção
                lblMsgErro.Text = "O seguinte erro ocorreu :  " + ex.ToString();
                lblMsgErro.Visible = true;
            }
        }
    }
}