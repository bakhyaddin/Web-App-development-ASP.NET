<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Database Grid-Image-Paging.aspx.cs" Inherits="Database_Grid_Image_Paging" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:ImageField DataImageUrlField="Cover">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [title], [type], [price], [Cover] FROM [Books]"></asp:SqlDataSource>
    </form>
</body>
</html>
