<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/inicio.css?v=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box-inicio">
            <div class="left-side">
                <h1>Inicio de Sesion</h1>
                <div style="margin-left: 15px;">Usuarios (clave=usuario)</div>
                <div class="box-usuario">
                    Usuario:<asp:TextBox CssClass="tb-inicio" ID="TB_usuario" runat="server"></asp:TextBox>
                </div>
                <div class="box-clave">
                    Clave: &nbsp
                <asp:TextBox CssClass="tb-inicio" ID="TB_clave" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div>
                    <asp:Button CssClass="button-ingresar" ID="Button1" runat="server" OnClick="Button1_Click" Text="Ingresar" />
                </div>
                <div>
                    <asp:Label ID="LBL_Mensaje" runat="server"></asp:Label>
                </div>
            </div>
            <div class="right-side">
                <div class="titulo-dos">
                    Control de Bodega
                </div>
                <div class="descripcion">
                    Con este software desarrollado por SoftMed podrás administrar, controlar y modificar el stock del centro médico y exportar tablas excel para lo que estime conveniente. 
                    También puede solicitar Stock o reportar fallas hacia el administrador. El administrador tiene control total del sistema.
                </div>
            </div>
        </div>
    </form>

</body>
</html>
