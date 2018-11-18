<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu-designer.aspx.cs" Inherits="CS691final.Menu_designer" %>

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
                        <h1 class="mb-3">Welcome to FlaovrTown!!!</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>




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
                        <a class="nav-link py-3 px-4" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false"><span class="flaticon-cutlery"></span>Dessert</a>
                        <a class="nav-link py-3 px-4" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false"><span class="flaticon-cheers"></span>Drinks</a>
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
                                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>

                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                                <p>something egg on it</p>
                                                <p><span>400 Col</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-4.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Fruit Vanilla Ice Cream</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-5.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Asian Hoisin Pork</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-6.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Spicy Fried Rice &amp; Bacon</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-7.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Mango Chili Chutney</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-8.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Savory Watercress Chinese Pancakes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-9.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Soup With Vegetables And Meat</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-10.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Udon Noodles With Vegetables</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-11.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Baked Lobster With A Garnish</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dish-12.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Octopus with Vegetables</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END -->

                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-1.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Grilled Beef with potatoes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-2.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Grilled Beef with potatoes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-3.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Grilled Beef with potatoes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-4.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Grilled Beef with potatoes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-5.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Grilled Beef with potatoes</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-6.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Tiramisu</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-7.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Chocolate Cream</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-8.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Pizza Pie</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-9.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Sicilian Ricotta</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/dessert-10.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Mango FLoat</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END -->

                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-1.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Lemon Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-2.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Guava Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-3.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Sprite</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-4.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Cola</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-5.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Wine</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-6.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Beer</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-7.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Mango Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-8.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Apple Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-9.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Strawberry Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img" style="background-image: url(images/drink-10.jpg);"></div>
                                        <div class="text d-flex">
                                            <div class="one-half">
                                                <h3>Orange Juice</h3>
                                                <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                                            </div>
                                            <div class="one-forth">
                                                <span class="price">$29</span>
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
    <section>
        <div>
<form id="designerForm" class="form-horizontal" runat="server">
            Add new food to list
         <asp:DropDownList ID="FoodType" runat="server" AutoPostBack="True">
             <asp:ListItem Enabled="False" Selected="True" Value="1">Main</asp:ListItem>
             <asp:ListItem Value="2">Dessert</asp:ListItem>
             <asp:ListItem Value="3">Drinks</asp:ListItem>
         </asp:DropDownList>
            
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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Food_Name] FROM [Food_Menu]"></asp:SqlDataSource>


         </div>

            </form>

        </div>
    </section>


    <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Warmming</h2>
                        <p>Consuming raw or undercooked meats, poultry, seafood, shellfish, or eggs may increase your risk of food borne illness</p>

                    </div>
    </footer>



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
