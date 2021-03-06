﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_designer.aspx.cs" Inherits="CS691final.Menu_designer" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Flavortown restaurant-Menu</title>
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
                    <li class="nav-item"><a href="Home page.aspx" class="nav-link">Home</a></li>
                    <li class="nav-item active"><a href="Menu Page.aspx" class="nav-link">Menu</a></li>
                    <li class="nav-item"><a href="Order.aspx" class="nav-link">Order</a></li>
                    <li class="nav-item"><a href="Login.aspx" class="nav-link">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->

    <section class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url('images/menu-02.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text align-items-center justify-content-center">
                    <div class="col-md-10 col-sm-12 ftco-animate text-center">
                        <%--  <p class="breadcrumbs"><span class="mr-2"><a href="Home page.aspx">Home</a></span> <span>Menu</span></p>--%>
                        <h1 class="mb-3"><%=advertising%></h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Food menu disploy -->


    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <span class="subheading">Our Menu</span>
                    <h2>Taste Our Flavor</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 dish-menu">

                    <div class="nav nav-pills justify-content-center ftco-animate" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link py-3 px-4 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><span class="flaticon-meat"></span>Main</a>
                    </div>

                    <div class="tab-content py-5" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-3.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel001" runat="server" Text=" "></asp:Label></h3>

                                                <p>
                                                    <asp:Label ID="FoodInfoLabel001" runat="server" Text=" "></asp:Label>
                                                </p>


                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel001" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-4.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel002" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel002" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel002" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-5.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel003" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel003" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel003" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-6.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel004" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel004" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel004" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-7.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel005" runat="server" Text=""></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel005" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel005" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-8.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel006" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel006" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel006" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-6">

                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-9.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel007" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel007" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel007" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-10.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel008" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel008" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel008" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-11.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel009" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel009" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel009" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-12.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel010" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel010" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel010" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-12.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel011" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel011" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel011" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-12.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>
                                                    <asp:Label ID="FoodNameLabel012" runat="server" Text=" "></asp:Label></h3>
                                                <p>
                                                    <span>
                                                        <asp:Label ID="FoodInfoLabel012" runat="server" Text=" "></asp:Label></span>
                                                </p>

                                            </div>
                                            <div class="one-forth">
                                                <span class="price">
                                                    <asp:Label ID="FoodPriceLabel012" runat="server" Text=" "></asp:Label></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- END fooe menu display -->

    <!-- designer control  nav -->
    <section>
        <div>
            <form id="designerForm" class="form-horizontal" runat="server">

                <div>
                    Change Advertising main<asp:TextBox ID="tbxNewAdvert" runat="server"></asp:TextBox><asp:Button ID="btnSubmitNewAdvert" runat="server" Text="Submit New Advert to main store" OnClick="btnSubmitNewAdvert_Click" />

                    <asp:Label ID="lblError2" runat="server" Text=" "></asp:Label>
                    <br />
                    Change Advertising BSU<asp:TextBox ID="tbxNewAdvertBSU" runat="server"></asp:TextBox><asp:Button ID="btnBSU" runat="server" Text="Submit New Advert to Bsu store" OnClick="btnBSU_Click" />
                    <br />
                    Change Advertising Mall<asp:TextBox ID="tbxMall" runat="server"></asp:TextBox><asp:Button ID="btnMall" runat="server" Text="Submit New Advert to mall store" OnClick="btnMall_Click" />
                </div>



                Add new food to list
         

                <asp:TextBox ID="tbxName" runat="server" placeholder="Name" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:TextBox ID="tbxIngredients" runat="server" placeholder="Ingredients"></asp:TextBox>
                <asp:TextBox ID="tbxAllergen" runat="server" placeholder="Allergen information"></asp:TextBox>
                <asp:TextBox ID="tbxCategories" runat="server" placeholder="Categories"></asp:TextBox>
                <asp:TextBox ID="tbxPrice" runat="server" placeholder="Price"></asp:TextBox>
                <asp:Button ID="btnSubmitChange" runat="server" Text="Submit Change" OnClick="btnSubmitChange_Click" />
                <asp:Label ID="lblError" runat="server" Text=" "></asp:Label>
                <div>
                    <asp:CheckBoxList ID="cblCheckDeleteItem" runat="server" DataSourceID="SqlDataSource1" DataTextField="Food_Name" DataValueField="Food_Name"></asp:CheckBoxList>

                    <asp:Button ID="btnSubmitDelete" runat="server" Text="Submit Delete" OnClick="btnSubmitDelete_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Food_Menu]"></asp:SqlDataSource>


                </div>
                <div>
                    Add new Employee                   
                     <a href="EmployeeRegistration.aspx">Employee Registration</a>
                    <br />
                    <div class="btn btn-primary" data-toggle="collapse">
                        Manger Employee list
                    
                    <asp:RadioButtonList ID="RadioButtonListWaiterList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] where position ='Waiter'"></asp:SqlDataSource>

                    </div>
                    <asp:Button ID="btnBecomeDirector" runat="server" Text="BecomeDirector" OnClick="btnBecomeDirector_Click" />
                    <br />
                    <div class="btn btn-primary" data-toggle="collapse">
                        Manger director list
                    
                    <asp:RadioButtonList ID="RadioButtonDirector" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee] where position ='Director'"></asp:SqlDataSource>

                    </div>
                    <asp:Button ID="btnBecomeWaiter" runat="server" Text="BecomeWaiter" OnClick="btnBecomeWaiter_Click" />
                    <br />
                    <asp:Button ID="btnDeleteWaiterOrDirect" runat="server" Text="DeleteEmployee" OnClick="btnDeleteWaiterOrDirect_Click" />
                    <br />
                    Manage Order System
                    <a href="OrderManagePage.aspx">Order Manage</a>
                    <br />
                    Report
                    <a href="Report.aspx">Store Report</a>

                </div>
            </form>

        </div>
    </section>
    <!-- END  designer control nav -->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Warmming</h2>
                        <p>Consuming raw or undercooked meats, poultry, seafood, shellfish, or eggs may increase your risk of food borne illness</p>

                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
        </svg>
    </div>


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
