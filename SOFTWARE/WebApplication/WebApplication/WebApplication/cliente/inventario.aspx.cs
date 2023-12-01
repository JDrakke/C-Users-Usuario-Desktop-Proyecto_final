using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection("Data Source=LAPTOP-UCM4GSOS\\sqlexpress;Initial Catalog=WebAppDB;Integrated Security=True");

        protected void Buttonexcel_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/ms-excel";
        Response.AddHeader("content-disposition", "attachment; filename=Tabla.xls");
        Response.Charset = "";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.RenderControl(htw);
        Response.Output.Write(sw.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        
    }       
    }    
}