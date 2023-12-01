using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean mensaje_error = false;

            String usuario, clave, categoria = "";

            int usuario_existe = 0;
            

             usuario = TB_usuario.Text;
             clave = TB_clave.Text;

            if (usuario.ToLower() == "cliente")
            {
                if (clave.ToLower() == "cliente")
                {
                    usuario_existe = 1;
                    categoria = "CLT";
                }
                
                else
                {
                    mensaje_error = true;
                }
            }

            if (usuario.ToLower() == "administrador")
            {
                if (clave.ToLower() == "administrador")
                {
                    usuario_existe = 1;
                    categoria = "ADM";
                }

                else
                {
                    mensaje_error = true;
                }
            }


        //*************************************

            if (usuario_existe == 1)
            {
                if(categoria == "CLT")
                    Response.Redirect("PaginaCliente.aspx");
                else if (categoria == "ADM")
                    Response.Redirect("PaginaAdministrador.aspx");
            }
            else
            {
                mensaje_error = true;
            }
            if(mensaje_error == true)
            {
                LBL_Mensaje.Text = "Usuario no existe o clave incorrecta";
            }
            else
            {
                LBL_Mensaje.Text = "";
            }

        }
    }
}