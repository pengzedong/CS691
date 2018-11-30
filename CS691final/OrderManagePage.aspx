<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderManagePage.aspx.cs" Inherits="CS691final.OrderManagePage" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">

        <div class="container-fluid">
            <h1>FlovarTown Order </h1>
            <p><a href="Menu_designer.aspx">Back to Owner Page</a></p>
            <div class="row">
                <div class="col-sm-6" style="background-color: lavender;">
                    Order Flow
      <asp:CheckBoxList ID="CheckBoxListOrderList" runat="server" DataSourceID="SqlDataSource1" DataTextField="orderInfo" DataValueField="OrderID" AutoPostBack="True"></asp:CheckBoxList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OrderID, CONCAT(StoreID, OrderFood,OrderTime)  as orderInfo FROM [OrderHistory] where status= 'Order Recevied' order by OrderTime"></asp:SqlDataSource>
                </div>
                <div class="col-sm-6" style="background-color: lavenderblush;">
                    Waiter List
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Name, CONCAT(StoreID, Name)  as orderInfo FROM [Employee] where Position='Waiter' order by StoreID"></asp:SqlDataSource>
                    <asp:RadioButtonList ID="RadioButtonListWaiterList" runat="server" DataSourceID="SqlDataSource2" DataTextField="orderInfo" DataValueField="Name" AutoPostBack="True"></asp:RadioButtonList>
                    <div>
                        <asp:Button ID="btnWork" runat="server" Text="Work on it" OnClick="btnWork_Click" /> 
                        <br />
                        <asp:Label ID="lblError" runat="server" Text=" "></asp:Label></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
