using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_inventario_Click(object sender, EventArgs e)
        {
            iframecliente.Attributes["src"] = "cliente/inventario.aspx";
            inventariotab.Visible = true;
            solicitartab.Visible = false;
            fallatab.Visible = false;
        }

        protected void button_solicitud_Click(object sender, EventArgs e)
        {
            iframecliente.Attributes["src"] = "cliente/solicitarstock.aspx";
            inventariotab.Visible = false;
            solicitartab.Visible = true;
            fallatab.Visible = false;
        }

        protected void button_generarinfo_Click(object sender, EventArgs e)
        {
            iframecliente.Attributes["src"] = "cliente/generarinforme.aspx";
            inventariotab.Visible = true;
            solicitartab.Visible = false;
            fallatab.Visible = false;
        }

        protected void button_fallastock_Click(object sender, EventArgs e)
        {
            iframecliente.Attributes["src"] = "cliente/fallastock.aspx";
            inventariotab.Visible = false;
            solicitartab.Visible = false;
            fallatab.Visible = true;
        }

        protected void button_cierre_Click(object sender, EventArgs e)
        {
            Response.Redirect("/iniciosesion.aspx");
        }

    }
}