<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Datalist - Repeater Control.aspx.cs" Inherits="Datalist___Repeater_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                pub_name:
                <asp:Label ID="pub_nameLabel" runat="server" Text='<%# Eval("pub_name") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Query1]"></asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        </asp:Repeater>
    </form>
</body>
</html>
