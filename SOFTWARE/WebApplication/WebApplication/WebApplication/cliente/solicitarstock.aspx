<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="solicitarstock.aspx.cs" Inherits="WebApplication.cliente.WebForm1" %>

<!DOCTYPE html>
    <link rel="stylesheet" href="/cliente/css/solicitarstock.css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">Nombre</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox1" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style17" cssclass="auto-style17">Marca</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">Modelo</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox3" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style17">ID</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox4" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style18">Cantidad</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox5" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style18">Descripcion</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox6" CssClass="auto-style15" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="Buttoninsertar" CssClass="buttons" runat="server" Text="Insertar" OnClick="Buttoninsertar_Click" />
                        <asp:Button ID="btn_actualizar" CssClass="buttons" runat="server" OnClick="btn_actualizar_Click" Text="Actualizar" />
                        <asp:Button ID="eliminar" CssClass="buttons" runat="server" OnClick="eliminar_Click" Text="Borrar" />
                        <asp:Button ID="Buttonexcel" CssClass="buttons" runat="server" OnClick="Buttonexcel_Click" Text="Exportar" />
                        
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:GridView CssClass="gridview1" ID="GridView1" runat="server" Width="380px"></asp:GridView>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
    </form>
</body>
</html>
