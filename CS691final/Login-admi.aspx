<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login-admi.aspx.cs" Inherits="CS691final.Login_admi" %>


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

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="Home page.aspx">Flavortown restaurant</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                 <li class="nav-item "><a href="Home page.aspx" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="Menu Page.aspx" class="nav-link">Menu</a></li>
                    <li class="nav-item"><a href="Order.aspx" class="nav-link">Order</a></li>
                    <li class="nav-item active"><a href="Login.aspx" class="nav-link">Login</a></li>
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
                        <h1 class="mb-3">Welcome back, manager!!!</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- manager login section  -->
    <section class="ftco-section">
      <div class="container">
        <div class="row no-gutters justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2>Manager Login</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 ftco-animate img" style="background-image: url(images/menu-03.jpg);"></div>
          <div class="col-md-8 ftco-animate makereservation p-5 bg-light">
            <form action="#" runat="server">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">UserName</label>
                   <asp:TextBox ID="tbxUsername" runat="server" class="form-control" placeholder="Your UserName" ></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Password</label>
                    <asp:TextBox ID="tbxPassword" runat="server" class="form-control" placeholder="Your Password" TextMode="Password"></asp:TextBox>
                  </div>
                </div>
            
                <div class="col-md-12 mt-3">
                  <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary py-3 px-5" OnClick="btnSubmit_Click"/>
                      <br />
                      <asp:Label ID="LoginStatusMessage" runat="server" Text=" " Visible="false"></asp:Label>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    
    
    <asp:Label ID="lblSubmitWarming" runat="server" Text=" "></asp:Label>
     <!-- END employee login section -->
   
    <div style="float: right">
        <a href="Login.aspx ">Customer Login</a>
    </div>

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


</body>
</html>
