<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventarioadmin.aspx.cs" Inherits="WebApplication.admin.css.WebForm1" %>

<!DOCTYPE html>
<link rel="stylesheet" href="/admin/css/inventarioadmin.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Nombre" DataSourceID="SqlDataSource1" Height="273px" Width="764px">
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                            <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="Buttonexcel" CssClass="buttons" runat="server" OnClick="Buttonexcel_Click" Text="Exportar" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebAppDBConnectionString %>" ProviderName="<%$ ConnectionStrings:WebAppDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [webapptable]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
