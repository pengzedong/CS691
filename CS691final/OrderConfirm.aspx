<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirm.aspx.cs" Inherits="CS691final.OrderConfirm" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>administrator page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

    <style>
     
    </style>

</head>
<body>

    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="Home page.aspx">Flavortown restaurant</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                     <li class="nav-item"><a href="Home page.aspx" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="Menu Page.aspx" class="nav-link">Menu</a></li>
                    <li class="nav-item active"><a href="Order.aspx" class="nav-link">Order</a></li>
                    <li class="nav-item"><a href="Login.aspx" class="nav-link">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->

    <section class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url('images/menu-03.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text align-items-center justify-content-center">
                    <div class="col-md-10 col-sm-12 ftco-animate text-center">
                        <%--  <p class="breadcrumbs"><span class="mr-2"><a href="Home page.aspx">Home</a></span> <span>Menu</span></p>--%>
                        <h1 class="mb-3">Check Out</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section">
      <div class="container">
        <div class="row no-gutters justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2>Customer Checu Out</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 ftco-animate img" style="background-image: url(images/menu-03.jpg);"> 
            </div>
          <div class="col-md-8 ftco-animate makereservation p-5 bg-light">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Food Order List</label>
                      <br />
                      <asp:Label ID="FoodListView" runat="server"   Text=" " ForeColor="Red"></asp:Label>
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                   
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="" >Food Price</label>
                    <asp:Label ID="FoodPriceView" runat="server"  Text=" " Font-Size="Large" ForeColor="Red"></asp:Label>
                  </div>
                </div>

            <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Store Location</label>
                      <br />
                      <asp:DropDownList ID="DropDownListStoreLocation" runat="server">
                          <asp:ListItem Value="1" Selected="True">Ball State Store</asp:ListItem>
                          <asp:ListItem Value="2">DownTown Store</asp:ListItem>
                          <asp:ListItem Value="3">Mall Store</asp:ListItem>
                      </asp:DropDownList>

                    
                  </div>
                </div>

                   <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Add tip</label>
                      <br />
                      <asp:RadioButtonList ID="RadioButtonListTip" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonListTip_SelectedIndexChanged">
                          <asp:ListItem Selected="True" Value="0">NO tip</asp:ListItem>
                          <asp:ListItem Value="0.1">10%</asp:ListItem>
                         
                          <asp:ListItem Value="0.15">15%</asp:ListItem>
                          <asp:ListItem Value="0.2">20% </asp:ListItem>                         
                          <asp:ListItem Value="1">Customize</asp:ListItem>                         
                      </asp:RadioButtonList>
                      <asp:TextBox ID="tbxCustomize" runat="server" Visible="False"></asp:TextBox>
                      <asp:Button ID="btnAddCustomizeTip" runat="server" Text="Add Tip to Price" Visible="False" OnClick="btnAddCustomizeTip_Click" />
                    
                  </div>
                </div>

                <div class="col-md-12 mt-3">
                  <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Place Your Order" class="btn btn-primary py-3 px-5" OnClick="btnSubmit_Click"/>
                       <a href="Order.aspx ">Change Cart</a>
                      <br />
                      
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>


    
    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>


    </form>


</body>
</html>
