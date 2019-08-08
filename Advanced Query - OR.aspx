<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced Query - OR.aspx.cs" Inherits="Advanced_Query___AND" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Select Publisher:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="pub_name" DataValueField="pub_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [pub_name] FROM [Query1]"></asp:SqlDataSource>
            or Select Book Type:<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="type" DataValueField="type">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [type] FROM [Query1]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pub_name" HeaderText="pub_name" SortExpression="pub_name" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Query1] WHERE (([pub_name] = ?) OR ([type] = ?))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="pub_name" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="type" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
