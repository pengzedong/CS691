<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectorPage.aspx.cs" Inherits="CS691final.Waiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Order status manage</h1>
        <a href="Home page.aspx">Back to Home page</a>
        <div class="container-fluid" style="border: 1px solid black; width: 90%">
            <div>
                <!-- display order status nav -->
                <div class="col-sm-6" style="background-color: lavender; border: 1px solid black;">
                    <h2>Received Order</h2>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxListOrderRecived" runat="server" DataSourceID="SqlDataSource1" DataTextField="info" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [OrderTime], [OrderFood], [Waiter], [Status], concat( [OrderTime], [OrderFood], [Waiter]) as info FROM [OrderHistory] where status ='Order Recevied' order by orderTime"></asp:SqlDataSource>

                </div>
            </div>
            <div>
                <div class="col-sm-6" style="background-color: lavender; border: 1px solid black;">
                    <h2>In-preparation Order</h2>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxListInPreparation" runat="server" DataSourceID="SqlDataSource2" DataTextField="info" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [OrderTime], [OrderFood], [Waiter], [Status], concat( [OrderTime], [OrderFood], [Waiter]) as info FROM [OrderHistory] where status ='Order in-preparation' order by orderTime"></asp:SqlDataSource>
                </div>
            </div>
            <div>
                <div class="col-sm-6" style="background-color: lavender; border: 1px solid black;">
                    <h2>Final touches Order</h2>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxListFianlTouch" runat="server" DataSourceID="SqlDataSource3" DataTextField="info" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [OrderTime], [OrderFood], [Waiter], [Status], concat( [OrderTime], [OrderFood], [Waiter]) as info FROM [OrderHistory] where status ='Final Touch' order by orderTime"></asp:SqlDataSource>
                </div>
            </div>
            <div>
                <div class="col-sm-6" style="background-color: lavender; border: 1px solid black;">

                    <h2>On the way Order</h2>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxListOnTheWay" runat="server" DataSourceID="SqlDataSource4" DataTextField="info" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [OrderTime], [OrderFood], [Waiter], [Status], concat( [OrderTime], [OrderFood], [Waiter]) as info FROM [OrderHistory] where status ='On the Way' order by orderTime"></asp:SqlDataSource>

                </div>
            </div>
            <div>
                <div class="col-sm-6" style="background-color: lavender; border: 1px solid black;">
                    <h2>Finished Order</h2>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxListFinished" runat="server" DataSourceID="SqlDataSource5" DataTextField="info" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [OrderTime], [OrderFood], [Waiter], [Status], concat( [OrderTime], [OrderFood], [Waiter]) as info FROM [OrderHistory] where status ='Finished' order by orderTime"></asp:SqlDataSource>
                </div>
            </div>
        </div>

        <!-- END order display  -->

       <!-- change order button -->
        <div>
            <asp:DropDownList ID="DropDownListStatus" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">Order Recevied</asp:ListItem>
                <asp:ListItem Value="1">Order in-preparation</asp:ListItem>
                <asp:ListItem Value="2">Final Touch</asp:ListItem>
                <asp:ListItem Value="3">On the way</asp:ListItem>
                <asp:ListItem Value="4">Finished</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="ButtonSubmitStatus" runat="server" Text=" Submit Status" OnClick="ButtonSubmitStatus_Click" />

        </div>
        <!-- END order change function -->
    </form>
</body>
</html>
