<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fallasadmin.aspx.cs" Inherits="WebApplication.admin.WebForm3" %>

<!DOCTYPE html>
    <link rel="stylesheet" href="/admin/css/fallasadmin.css?v=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="273px" Width="764px">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                            <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                            <asp:BoundField DataField="Detalles" HeaderText="Detalles" SortExpression="Detalles" />
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="Buttonexcel" CssClass="buttons" runat="server" OnClick="Buttonexcel_Click" Text="Exportar" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebAppDBConnectionString %>" SelectCommand="SELECT * FROM [fallasdb]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
