<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaAdministrador.aspx.cs" Inherits="WebApplication.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/admin.css?v=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="box" id="paginaclienteform" runat="server">

        <div class="container">
            <div class="left-panel">
                <div class="softmed">SoftMed</div>
                <div>
                    <img src="imagenes/cliente.png" alt="Avatar">
                </div>
                <div style="font-family: sans-serif; color: #454343;">
                    Administrador
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_invadmin" runat="server" Text="Inventario" OnClick="button_invadmin_Click" />
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_agregarstock" runat="server" Text="Modificar Stock" OnClick="button_agregarstock_Click" />
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_solicitudes" runat="server" Text="Solicitudes" OnClick="button_solicitudes_Click" />
                </div>
                                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_fallasadmin" runat="server" Text="Fallas de Stock" OnClick="button_fallasadmin_Click" />
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_cierre" runat="server" Text="Cerrar Sesión" OnClick="button_cierre_Click" Style="background-color: #FF5F3C;" />
                </div>
            </div>
            <div class="right-panel">
                <div class="top-panel-container"></div>
                <p style="right: 3%; position: absolute;">Sesion De Administrador</p>
                <iframe id="iframeadmin" class="iframeadmin" runat="server"></iframe>
            </div>
            <div class="admintab" runat="server" id="inventariotab" visible="false">Inventario</div>
            <div class="admintab" runat="server" id="agregartab" visible="false">Modificar Stock</div>
            <div class="admintab" runat="server" id="solicitudestab" visible="false">Solicitudes</div>
        </div>
    </form>
</body>
</html>
