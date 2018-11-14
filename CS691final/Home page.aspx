<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home page.aspx.cs" Inherits="CS691final.Home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Food_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Food_id" HeaderText="Food_id" ReadOnly="True" SortExpression="Food_id" />
                <asp:BoundField DataField="Food_Name" HeaderText="Food_Name" SortExpression="Food_Name" />
                <asp:BoundField DataField="Food_ingredients" HeaderText="Food_ingredients" SortExpression="Food_ingredients" />
                <asp:BoundField DataField="Food_allergen_info" HeaderText="Food_allergen_info" SortExpression="Food_allergen_info" />
                <asp:BoundField DataField="Food_categories" HeaderText="Food_categories" SortExpression="Food_categories" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Food_Menu]"></asp:SqlDataSource>
    </form>
</body>
</html>
