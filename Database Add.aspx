<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Database Add.aspx.cs" Inherits="Database_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="job_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="job_id" HeaderText="job_id" InsertVisible="False" ReadOnly="True" SortExpression="job_id" />
                    <asp:BoundField DataField="job_desc" HeaderText="job_desc" SortExpression="job_desc" />
                    <asp:BoundField DataField="min_lvl" HeaderText="min_lvl" SortExpression="min_lvl" />
                    <asp:BoundField DataField="max_lvl" HeaderText="max_lvl" SortExpression="max_lvl" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Jobs] WHERE [job_id] = ? AND (([job_desc] = ?) OR ([job_desc] IS NULL AND ? IS NULL)) AND (([min_lvl] = ?) OR ([min_lvl] IS NULL AND ? IS NULL)) AND (([max_lvl] = ?) OR ([max_lvl] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Jobs] ([job_id], [job_desc], [min_lvl], [max_lvl]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Jobs]" UpdateCommand="UPDATE [Jobs] SET [job_desc] = ?, [min_lvl] = ?, [max_lvl] = ? WHERE [job_id] = ? AND (([job_desc] = ?) OR ([job_desc] IS NULL AND ? IS NULL)) AND (([min_lvl] = ?) OR ([min_lvl] IS NULL AND ? IS NULL)) AND (([max_lvl] = ?) OR ([max_lvl] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_job_id" Type="Int32" />
                    <asp:Parameter Name="original_job_desc" Type="String" />
                    <asp:Parameter Name="original_job_desc" Type="String" />
                    <asp:Parameter Name="original_min_lvl" Type="Int32" />
                    <asp:Parameter Name="original_min_lvl" Type="Int32" />
                    <asp:Parameter Name="original_max_lvl" Type="Int32" />
                    <asp:Parameter Name="original_max_lvl" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="job_id" Type="Int32" />
                    <asp:Parameter Name="job_desc" Type="String" />
                    <asp:Parameter Name="min_lvl" Type="Int32" />
                    <asp:Parameter Name="max_lvl" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="job_desc" Type="String" />
                    <asp:Parameter Name="min_lvl" Type="Int32" />
                    <asp:Parameter Name="max_lvl" Type="Int32" />
                    <asp:Parameter Name="original_job_id" Type="Int32" />
                    <asp:Parameter Name="original_job_desc" Type="String" />
                    <asp:Parameter Name="original_job_desc" Type="String" />
                    <asp:Parameter Name="original_min_lvl" Type="Int32" />
                    <asp:Parameter Name="original_min_lvl" Type="Int32" />
                    <asp:Parameter Name="original_max_lvl" Type="Int32" />
                    <asp:Parameter Name="original_max_lvl" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        Add New Job:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add" />
    </form>
</body>
</html>


