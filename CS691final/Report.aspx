<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CS691final.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- display weekly report -->
        <div class="container-fluid">
            <h1>FlovarTown Weekly Report</h1>
            <p><a href="Menu_designer.aspx">Back to Owner Page</a></p>
            <div class="row">
                <div class="col-sm-6" style="background-color: lavender;">
                    Employee Report
      <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
      </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT StoreID, OrderFood,OrderTime,Price,Waiter  FROM [OrderHistory] where OrderTime >= DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()) / 7 * 7, 0) AND  OrderTime<= DATEADD(DAY, DATEDIFF(DAY, -1, GETDATE()), 0) order by Waiter"></asp:SqlDataSource>
                </div>
                <div class="col-sm-6" style="background-color: lavenderblush;">
                    Waiter WorkLoad
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="WaitersName" HeaderText="WaitersName" SortExpression="WaitersName" />
                            <asp:BoundField DataField="WorkLoad" HeaderText="WorkLoad" ReadOnly="True" SortExpression="WorkLoad" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Waiter as WaitersName, COUNT(OrderID) as WorkLoad FROM OrderHistory where OrderTime >= DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()) / 7 * 7, 0) AND  OrderTime<= DATEADD(DAY, DATEDIFF(DAY, -1, GETDATE()), 0) group by waiter
"></asp:SqlDataSource>

                    <div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END display weekly report -->
    </form>
</body>
</html>
