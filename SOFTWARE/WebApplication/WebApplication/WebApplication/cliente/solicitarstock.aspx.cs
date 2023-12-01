using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.cliente
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-UCM4GSOS\\sqlexpress;Initial Catalog=WebAppDB;Integrated Security=True");
        protected void Buttoninsertar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into solicitudesdb values('"+TextBox1.Text+ "','" +TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+ "','"+TextBox5.Text+"','" + TextBox6.Text+"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Agregado Exitosamente');", true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from solicitudesdb", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update solicitudesdb set Nombre = '" + TextBox1.Text + "', Marca = '" + TextBox2.Text + "', Modelo = '" + TextBox3.Text + "', ID = '"+TextBox4.Text+"', Cantidad = '"+TextBox5.Text+"', Descripcion = '" + TextBox6.Text+"'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Actualizada Correctamente');", true);
            LoadRecord();
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete solicitudesdb where  ID = '" + TextBox4.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Eliminación Exitosa');", true);
            LoadRecord();
        }

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