using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BolaoCopa
{
    public partial class CadastroResultado : System.Web.UI.Page
    {

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value.Equals("0"))
            {
                Panel1.Visible = true;
                lblData.Text = "11/06 - 15:30";
                lblMandante.Text = "África do Sul";
                imgMandante.ImageUrl = "~/imagens/selecoes/africadosul.gif";
                imgVisitante.ImageUrl = "~/imagens/selecoes/mexico.gif";
                lblVisitante.Text = "México";
            }

            else if (DropDownList1.SelectedItem.Value.Equals("1"))
            {
                Panel1.Visible = true;
                lblData.Text = "11/06 - 18:00";
                lblMandante.Text = "Uruguai";
                imgMandante.ImageUrl = "~/imagens/selecoes/uruguai.gif";
                imgVisitante.ImageUrl = "~/imagens/selecoes/franca.gif";
                lblVisitante.Text = "França";
            }
            else
            {
                Panel1.Visible = false;
            }
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {

        }

    }
}