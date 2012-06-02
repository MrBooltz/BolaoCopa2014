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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // verifica se o nome do usuário foi passado na querystring. Se tiver sido informada, preencher
            // automaticamente o campo de usuário
            if (Request.QueryString["user"] != null)
            {
                // preenche o campo de usuário automaticamente com o valor da query string
                txtUsuario.Text = Request.QueryString["user"];

                // posiciona o cursor do mouse no campo de login
                txtSenha.Focus();
            }
            // o nome do usuário não foi informado na query string. Posicionar o cursor no campo de usuário
            // para facilitar o preenchimento
            else
            {
                txtUsuario.Focus();
            }  // else ...  if (Request.QueryString["user"] != null) ...
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            // instancia a classe Usuario para realizar a autenticação do mesmo
            Usuario user = new Usuario();

            // seta as propriedades da classe
            user.setUsuario(txtUsuario.Text);
            user.setSenha(txtSenha.Text);

            // conseguiu autenticar. Redirecionar para a página principal
            if (user.Autenticar())
            {
                // cria as variáveis de sessão que identificam o usuário logado no sistema
                Session["usuarioLogado"] = user.getUsuario();
                Session["codApostador"] = user.getCodigo().ToString();
                Session["nomeApostador"] = user.getPrimeiroNome();
                Session["doLogout"] = "0";

                // redireciona para a página principal da aplicação
                Response.Redirect("~/Principal.aspx");
            }
            else
            {
               // exibe a mensagem de falha de login
               lbMensagem.Text = user.getErro();
            }
        }  
    }
}
