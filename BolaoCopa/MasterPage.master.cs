using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BolaoCopa
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // o usuário não está logado no sistema. Redirecionar para a página de erro de login
            if (Session["usuarioLogado"] == null)
            {
                Response.Redirect("~/ErroLogin.aspx");
            }
            else
            {
                // exibe o nome do usuário logado
                lbUsuarioLogado.Text = Session["usuarioLogado"].ToString();
            }
        }
    }
}