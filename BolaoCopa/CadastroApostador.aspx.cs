using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BolaoCopa
{
    public partial class CadastroApostador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // seta o foco no campo de nome
            txtNome.Focus();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            // exibe o label de erro
            lbMensagem.Text = "";

            // para tratar a mensagem da exceção, caso ocorra
            String excecao;

            try
            {
                // tenta inserir o novo apostador
                SqlInsert.Insert();

                // redireciona para a página de login
                Response.Redirect("~/Default.aspx?user=" + txtLogin.Text);
            }
            catch (Exception ex)
            {
                // obtém a mensagem da exceção
                excecao = ex.ToString();

                // é uma exceção de chave duplicada, redirecionar para a página de usuário cadastrado
                if (excecao.ToString().Contains("The duplicate key value"))
                {
                    lbMensagem.Text = "Usuário já cadastrado no sistema !!!";
                }

                // é um erro genérico, exibir no label de erro
                else
                {
                    // exibe o label de erro
                    lbMensagemErro.Visible = true;

                    // exibe a mensagem de erro
                    lbMensagemErro.Text = "O seguinte erro ocorreu : " + ex.ToString();
                }
            }
        }
    }
}