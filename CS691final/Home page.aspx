<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home page.aspx.cs" Inherits="CS691final.Home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Lab1" runat="server" Text="Fresh Wok" BackColor="#66CCFF" BorderColor="#FF9900" Font-Italic="True" Font-Size="230%" Height="100px" Width="752px"></asp:Label>
        </div>
        the number of food<asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </form>
</body>
</html>
