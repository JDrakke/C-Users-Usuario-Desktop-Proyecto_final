using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_invadmin_Click(object sender, EventArgs e)
        {
            iframeadmin.Attributes["src"] = "admin/inventarioadmin.aspx";
            inventariotab.Visible = true;
            agregartab.Visible = false;
            solicitudestab.Visible = false;
        }

        protected void button_agregarstock_Click(object sender, EventArgs e)
        {
            iframeadmin.Attributes["src"] = "admin/agregarstock.aspx";
            inventariotab.Visible = false;
            agregartab.Visible = true;
            solicitudestab.Visible = false;
        }

        protected void button_solicitudes_Click(object sender, EventArgs e)
        {
            iframeadmin.Attributes["src"] = "admin/solicitudes.aspx";
            inventariotab.Visible = false;
            agregartab.Visible = false;
            solicitudestab.Visible = true;

        }

        protected void button_fallasadmin_Click(object sender, EventArgs e)
        {
            iframeadmin.Attributes["src"] = "admin/fallasadmin.aspx";
            inventariotab.Visible = false;
            agregartab.Visible = false;
            solicitudestab.Visible = true;

        }

        protected void button_cierre_Click(object sender, EventArgs e)
        {
            Response.Redirect("/iniciosesion.aspx");

        }
    }
}