<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaCliente.aspx.cs" Inherits="WebApplication.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/e.css?v=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                <div style="font-family: sans-serif; color: black;">
                    Cliente
                </div>
                <div class="top">
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_inventario" runat="server" Text="Inventario" OnClick="button_inventario_Click" />
                </div>
                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_solicitud" runat="server" Text="Solicitar Stock" OnClick="button_solicitud_Click" />
                </div>

                <div>
                    <asp:Button CssClass="button-left-panel" ID="button_fallastock" runat="server" Text="Falla Stock" OnClick="button_fallastock_Click" />
                    <br />
                    <asp:Button CssClass="button-left-panel" ID="button_cierre" runat="server" Text="Cerrar Sesión" OnClick="button_cierre_Click" Style="top: 60px; background-color: #FF5F3C;" />
                </div>
            </div>
            <div class="right-panel">
                <div class="top-panel-container"></div>
                <p style="right: 3%; position: absolute;">Sesion De Cliente</p>
                <iframe id="iframecliente" class="iframecliente" runat="server"></iframe>
            </div>
            <div class="clientetab" runat="server" id="inventariotab" visible="false">Inventario</div>
            <div class="clientetab" runat="server" id="solicitartab" visible="false">Solicitar Stock</div>
            <div class="clientetab" runat="server" id="fallatab" visible="false">Falla de Stock</div>
        </div>
    </form>
</body>
</html>
