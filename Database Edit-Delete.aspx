﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Database Edit-Delete.aspx.cs" Inherits="Database_Edit_Delete" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="pub_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pub_id" HeaderText="pub_id" ReadOnly="True" SortExpression="pub_id" />
                <asp:BoundField DataField="pub_name" HeaderText="pub_name" SortExpression="pub_name" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Publishers] WHERE [pub_id] = ? AND (([pub_name] = ?) OR ([pub_name] IS NULL AND ? IS NULL)) AND (([city] = ?) OR ([city] IS NULL AND ? IS NULL)) AND (([state] = ?) OR ([state] IS NULL AND ? IS NULL)) AND (([country] = ?) OR ([country] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Publishers] ([pub_id], [pub_name], [city], [state], [country]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Publishers]" UpdateCommand="UPDATE [Publishers] SET [pub_name] = ?, [city] = ?, [state] = ?, [country] = ? WHERE [pub_id] = ? AND (([pub_name] = ?) OR ([pub_name] IS NULL AND ? IS NULL)) AND (([city] = ?) OR ([city] IS NULL AND ? IS NULL)) AND (([state] = ?) OR ([state] IS NULL AND ? IS NULL)) AND (([country] = ?) OR ([country] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_pub_id" Type="String" />
                <asp:Parameter Name="original_pub_name" Type="String" />
                <asp:Parameter Name="original_pub_name" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pub_id" Type="String" />
                <asp:Parameter Name="pub_name" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_name" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="original_pub_id" Type="String" />
                <asp:Parameter Name="original_pub_name" Type="String" />
                <asp:Parameter Name="original_pub_name" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_state" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
