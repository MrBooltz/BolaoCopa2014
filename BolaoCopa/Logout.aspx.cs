using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BolaoCopa
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // destrói a sessão corrente do usuário
            Session.Clear();
            Session.Abandon();

            // redireciona
            Response.Redirect("~/Default.aspx");
        }
    }
}