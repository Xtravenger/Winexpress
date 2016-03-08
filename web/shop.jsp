<%-- 
    Document   : shop
    Created on : Feb 28, 2016, 4:40:56 PM
    Author     : Xtravenger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | Shop Catalogue</title>

        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="">

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700,600,800,400' rel='stylesheet'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'>

        <!-- Css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/elegant-icons.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/themify-icons.css" />
        <link rel="stylesheet" href="revolution/css/settings.css" />
        <link rel="stylesheet" href="css/rev-slider.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/flexslider.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/responsive.css" />
        <link rel="stylesheet" href="css/spacings.css" />
        <link rel="stylesheet" href="css/animate.css" />
        <link rel="stylesheet" href="css/color.css" />

        <!-- Favicons -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    </head>

    <body>

        <!-- Preloader -->
        <div class="loader-mask">
            <div class="loader">
                "Loading..."
            </div>
        </div>

        <!-- Navigation -->
        <header class="nav-type-1">
            <nav class="navbar navbar-static-top" role="navigation">
                <div class="navigation">
                    <div class="container-fluid">
                        <div class="row">

                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div> <!-- end navbar-header -->

                            <div class="col-md-4 col-xs-12 nav-wrap">
                                <div class="collapse navbar-collapse" id="navbar-collapse">

                                    <ul class="nav navbar-nav">

                                        <li>
                                            <a href="#">Home<span class="sr-only">(current)</span></a>
                                        </li>

                                        <li class="dropdown active">
                                            <a href="shop.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
                                            <ul class="dropdown-menu megamenu-wide">
                                                <li>
                                                    <div class="megamenu-wrap">
                                                        <div class="row">

                                                            <div class="col-md-4 megamenu-item">
                                                                <h6>Vintage</h6>
                                                                <ul class="menu-list">
                                                                    <li><a href="shop.html">0-5 years</a></li>
                                                                    <li><a href="shop.html">5-10 years</a></li>
                                                                    <li><a href="shop.html">10-20 years</a></li>
                                                                    <li><a href="shop.html">Above 20 years</a></li>
                                                                </ul>
                                                            </div>

                                                            <div class="col-md-4 megamenu-item">
                                                                <h6>Type</h6>
                                                                <ul class="menu-list">
                                                                    <li><a href="shop.html">Red Wine</a></li>
                                                                    <li><a href="shop.html">White Wine</a></li>
                                                                    <li><a href="shop.html">Rose Wine</a></li>
                                                                    <li><a href="shop.html">Sparkling Wine</a></li>
                                                                </ul>
                                                            </div>

                                                            <div class="col-md-4 megamenu-item">
                                                                <h6>Origin</h6>
                                                                <ul class="menu-list">
                                                                    <li><a href="shop.html">Argentina</a></li>
                                                                    <li><a href="shop.html">Australia</a></li>
                                                                    <li><a href="shop.html">France</a></li>
                                                                    <li><a href="shop.html">Italy</a></li>
                                                                </ul>
                                                            </div>

                                                        </div> <!-- end row -->
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>

                                        <li>
                                            <a href="contact-us.html">Contact us</a>
                                        </li>

                                        <li id="mobile-login">
                                            <a href="#">Login</a>
                                        </li>

                                        <li id="mobile-search">
                                            <form method="get" class="mobile-search">
                                                <input type="search" class="form-control" placeholder="Search...">
                                                <button type="submit" class="search-button">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </form>
                                        </li>

                                    </ul> <!-- end menu -->
                                </div> <!-- end collapse -->
                            </div> <!-- end col -->

                            <!-- Logo -->
                            <div class="logo-container">
                                <div class="logo-wrap text-center">
                                    <a href="index.html">
                                        <img class="logo" src="img/logo.png" alt="logo">
                                    </a>
                                </div>
                            </div>

                            <!-- Account, Cart, Search -->
                            <div class="col-md-4 account-wrap right">
                                <ul>
                                    <li class="menu-my-acc left hidden-sm hidden-xs">
                                        <%if (session.getAttribute("email") == null) {%>  <a href="#" data-toggle="modal" data-target="#LogInModal">Log In</a><%}%>

                                        <div class="modal fade" id="LogInModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-sm" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h6 class="modal-title" id="myModalLabel">Log in to your account</h6>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form>
                                                            <input type="email" class="form-control" id="LogInEmail" placeholder="Email Address"></input>
                                                            <br/>
                                                            <input type="password" class="form-control" id="LogInPassword" placeholder="Password"></input>
                                                        </form>		
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a href="#" data-dismiss="modal" onclick="document.location.href = 'resetpassword.jsp'"  class="forgot">Forgot Password?</a>
                                                        <button type="button" class="btn btn-primary" onclick="document.getElementById('login-form').submit()">Log In</button>
                                                    </div>
                                                    <div align="center" class="g-signin2" data-onsuccess="onSignIn"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="menu-my-acc left hidden-sm hidden-xs">
                                        <%if (session.getAttribute("email") == null) {%><a href="#" data-toggle="modal" data-target="#SignUpModal">Sign Up</a><%}%>

                                        <div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-sm" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h6 class="modal-title" id="myModalLabel">Sign up with WineXpress</h6>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="register?signup=true" method="POST" id="signup-form">
                                                            <label name="message" id="message"></label>
                                                            <input type="email" name="email" class="form-control" id="SignUpEmail" placeholder="Email Address"></input>
                                                            <br/>
                                                            <input type="password" name="password1" class="form-control" id="SignUpPassword1" placeholder="Password"></input>
                                                            <br/>
                                                            <input type="password" name="password2" class="form-control" id="SignUpPassword2" placeholder="Confirm Password"></input>
                                                        </form>		
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary" onclick="validate()">Sign up</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="menu-my-acc left hidden-sm hidden-xs dropdown">
                                        <%if (session.getAttribute("email") != null) {%> <a class="dropdown-toggle" data-toggle="dropdown">My Account</a><%}%>
                                        <ul class="dropdown-menu">
                                            <li><a href="updateAccount">Edit Profile</a></li>
                                            <li><a href="history.jsp">Purchase history</a></li>
                                            <li><a href="enquiry">Send Enquiry</a></li>
                                            <li><a href="logout">Log out</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li class="menu-search hidden-sm hidden-xs">
                                        <a href="#" id="menu-search">
                                            <i class="fa fa-search search-trigger"></i>
                                        </a>

                                        <div class="search-bar">
                                            <div class="search-wrap">
                                                <form role="form">
                                                    <div class="form-group">
                                                        <input type="search" class="form-control searchbox" placeholder="Search">
                                                    </div>
                                                    <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                                                </form>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="cart-type-1 menu-cart right">
                                        <div class="cart-outer">
                                            <div class="cart-inner">
                                                <a class="shopping-cart" href="cart.html">
                                                    <span>0</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="menu-cart-container">
                                            <div class="menu-cart-items">

                                                <div class="menu-cart-item clearfix">
                                                    <div class="menu-cart-img">
                                                        <a href="#">
                                                            <img src="img/cart_small_1.jpg" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="menu-cart-title">
                                                        <a href="#">
                                                            Red Wine
                                                        </a>
                                                        <div class="menu-cart-price">
                                                            <span>1 x</span>
                                                            <span>50.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="menu-cart-remove">
                                                        <a href="#"></a>
                                                    </div>
                                                </div>

                                                <div class="menu-cart-item clearfix">
                                                    <div class="menu-cart-img">
                                                        <a href="#">
                                                            <img src="img/cart_small_2.jpg" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="menu-cart-title">
                                                        <a href="#">
                                                            Spartkling Wine
                                                        </a>
                                                        <div class="menu-cart-price">
                                                            <span>1 x</span>
                                                            <span>150.00</span>
                                                        </div>
                                                    </div>
                                                    <div class="menu-cart-remove">
                                                        <a href="#"></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="menu-cart-summary">
                                                <span>Cart Subtotal</span>
                                                <span class="total-price">$200.00</span>
                                            </div>

                                            <div class="menu-cart-actions mt-20">
                                                <a href="#" class="btn btn-md btn-dark">View Cart</a>
                                                <a href="#" class="btn btn-md btn-red mt-10">Proceed to Checkout</a>
                                            </div>									
                                        </div>
                                    </li>

                                </ul>
                            </div>

                        </div> <!-- end row -->
                    </div> <!-- end container -->
                </div> <!-- end navigation -->
            </nav> <!-- end navbar -->
        </header> <!-- end navigation -->

        <div class="main-wrapper oh">

            <!-- Breadcrumbs -->			
            <div class="container relative clearfix text-center">
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="shop.html">Shop</a>
                    </li>
                    <li class="active">
                        Catalogue
                    </li>
                </ol>
            </div>

            <!-- Catalogue -->
            <section class="section-wrap pt-70 catalogue">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-9 right">

                            <div class="category-banner oh">
                                <img src="img/catalogue_banner.jpg" alt="">
                                <div class="heading-wrap">
                                    <h2 class="hidden-xs">luxury quality</h2>
                                    <h1>Italian Wine</h1>
                                    <span class="hidden-xs">Unparalleled taste</span>						
                                </div>
                            </div>

                            <div class="filter-wrap">
                                <div class="view-mode hidden-xs">
                                    <span>View:</span>
                                    <a class="grid grid-active" id="grid"></a>
                                    <a class="list" id="list"></a>
                                </div>
                                <div class="filter-show hidden-xs">
                                    <span>Show:</span>
                                    <a href="#" class="active">12</a>
                                    <a href="#">24</a>
                                    <a href="#">36</a>
                                </div>
                                <form class="woocommerce-ordering">
                                    <select>
                                        <option value="default-sorting">Default Sorting</option>
                                        <option value="price-low-to-high">Price: high to low</option>
                                        <option value="price-high-to-low">Price: low to high</option>
                                        <option value="date">By Newness</option>
                                        <option value="rating">By Rating</option>
                                    </select>
                                </form>
                            </div>

                            <div class="row shop-catalogue grid-view left">

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_1.jpg" alt="">
                                                <img src="img/shop_item_1_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="product-label">
                                                <span class="onsale">sale</span>
                                            </div>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$99.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_2.jpg" alt="">
                                                <img src="img/shop_item_2_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="product-label">
                                                <span class="new">new</span>
                                            </div>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$99.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_3.jpg" alt="">
                                                <img src="img/shop_item_3_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="#" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$99.00</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_4.jpg" alt="">
                                                <img src="img/shop_item_4_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="product-label">
                                                <span class="sold">sold out</span>
                                            </div>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_5.jpg" alt="">
                                                <img src="img/shop_item_5_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_6.jpg" alt="">
                                                <img src="img/shop_item_6_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="product-label">
                                                <span class="onsale">sale</span>
                                            </div>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$99.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_7.jpg" alt="">
                                                <img src="img/shop_item_7_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="#" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$150.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$89.00</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_8.jpg" alt="">
                                                <img src="img/shop_item_8_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="#" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_9.jpg" alt="">
                                                <img src="img/shop_item_9_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="#" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$99.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_10.jpg" alt="">
                                                <img src="img/shop_item_10_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <del>
                                                <span>$122.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$99.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="#" class="btn btn-dark btn-md left">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_11.jpg" alt="">
                                                <img src="img/shop_item_11_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product product-grid">
                                    <div class="product-item">
                                        <div class="product-img hover-1">
                                            <a href="#">
                                                <img src="img/shop_item_12.jpg" alt="">
                                                <img src="img/shop_item_12_back.jpg" alt="" class="back-img">
                                            </a>
                                            <div class="hover-overlay"></div>
                                            <div class="product-add-to-cart">
                                                <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                            </div>
                                            <div class="product-add-to-wishlist">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-details">
                                            <h3>
                                                <a class="product-title" href="single-product.html">Wine Name</a>
                                            </h3>
                                            <h5 class="category">
                                                <a href="catalogue-grid.html">Wine Category</a>
                                            </h5>
                                        </div>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                            <span class="rating">
                                                <a href="#">3 Reviews</a>
                                            </span>
                                        </span>
                                        <a href="cart?add=productID" class="btn btn-dark btn-md">Add to Cart</a>
                                        <div class="icon-add-to-wishlist">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end grid mode -->

                            <!-- Pagination -->
                            <nav class="pagination woocommerce-pagination clear">
                                <p class="woocommerce-result-count">Showing: 1-12 of 80 results</p>
                                <a href="#"><i class="fa fa-angle-left"></i></a>
                                <span class="page-numbers current">1</span>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </nav>

                        </div> <!-- end col -->

                        <div class="col-md-3">
                            <div class="sidebar left-sidebar">

                                <!-- Wine Types -->
                                <div class="widget categories">
                                    <div class="title-box text-center">
                                        <h3 class="heading-double-line">Wine Types</h3>
                                    </div>
                                    <ul>
                                        <li>
                                            <a href="#">Red Wine</a>
                                            <span class="count">(11)</span>
                                        </li>
                                        <li class="active-cat">
                                            <a href="#">White Wine</a>
                                            <span class="count">(7)</span>
                                        </li>
                                        <li>
                                            <a href="#">Rose Wine</a>
                                            <span class="count">(26)</span>
                                        </li>
                                        <li>
                                            <a href="#">Sparkling Wine</a>
                                            <span class="count">(17)</span>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Filter by Price -->
                                <div class="widget filter-by-price clearfix">
                                    <div class="title-box text-center">
                                        <h3 class="heading-double-line">filter by Price</h3>
                                    </div>

                                    <div id="slider-range"></div>
                                    <p>
                                        <label for="amount">Price:</label>
                                        <input type="text" id="amount" readonly style="border:0;">
                                        <a href="#" class="btn btn-sm btn-stroke">Filter</a>
                                    </p>
                                </div>

                                <!-- Origin -->
                                <div class="widget filter-by-origin">
                                    <div class="title-box text-center">
                                        <h3 class="heading-double-line">Color</h3>
                                    </div>
                                    <ul class="origin-select">
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="argentina-origin" name="argentina-origin">
                                            <label for="gargentina-origin" class="checkbox-label">Argentina</label>
                                            <span class="count">(10)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="australia-origin" name="australia-origin">
                                            <label for="australia-origin" class="checkbox-label">Australia</label>
                                            <span class="count">(5)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="france-origin" name="france-origin">
                                            <label for="france-origin" class="checkbox-label">France</label>
                                            <span class="count">(7)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="italy-origin" name="italy-origin">
                                            <label for="italy-origin" class="checkbox-label">Italy</label>
                                            <span class="count">(3)</span>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Size -->
                                <div class="widget filter-by-vintage">
                                    <div class="title-box text-center">
                                        <h3 class="heading-double-line">Size</h3>
                                    </div>
                                    <ul class="size-select">
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="0-5years" name="0-5years">
                                            <label for="0-5years" class="checkbox-label">0-5 Years</label>
                                            <span class="count">(10)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="5-10years" name="5-10years">
                                            <label for="5-10years" class="checkbox-label">5-10 Years</label>
                                            <span class="count">(5)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="10-20years" name="10-20years">
                                            <label for="10-20years" class="checkbox-label">10-20 Years</label>
                                            <span class="count">(7)</span>
                                        </li>
                                        <li>
                                            <input type="checkbox" class="input-checkbox" id="above20years" name="above20years">
                                            <label for="above20years" class="checkbox-label">Above 20 Years</label>
                                            <span class="count">(3)</span>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Bestsellers -->
                                <div class="widget bestsellers">
                                    <div class="title-box text-center">
                                        <h3 class="heading-double-line">Bestsellers</h3>
                                    </div>
                                    <ul class="product-list-widget">
                                        <li class="clearfix">
                                            <a href="single-product.html">
                                                <img src="img/shop_item_12.jpg" alt="">
                                                <span class="product-title">Wine Name</span>
                                            </a>
                                            <span class="price">
                                                <ins>
                                                    <span class="ammount">$99.00</span>
                                                </ins>
                                            </span>
                                        </li>
                                        <li class="clearfix">
                                            <a href="single-product.html">
                                                <img src="img/shop_item_7.jpg" alt="">
                                                <span class="product-title">Wine Name</span>
                                            </a>
                                            <span class="price">
                                                <del>
                                                    <span>$250.00</span>
                                                </del>
                                                <ins>
                                                    <span class="ammount">$189.00</span>
                                                </ins>
                                            </span>
                                        </li>
                                        <li class="clearfix">
                                            <a href="single-product.html">
                                                <img src="img/shop_item_8.jpg" alt="">
                                                <span class="product-title">Wine Name</span>
                                            </a>
                                            <span class="price">
                                                <ins>
                                                    <span class="ammount">$112.00</span>
                                                </ins>
                                            </span>
                                        </li>								
                                    </ul>
                                </div>
                            </div>
                        </div> <!-- end sidebar -->

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end catalogue -->


            <!-- Footer Type-1 -->
            <footer class="footer footer-type-1">
                <div class="container">
                    <div class="footer-widgets">
                        <div class="row">

                            <div class="col-md-2 col-sm-4 col-xs-12">
                                <div class="footer-information">
                                    <h5>Information</h5>
                                    <ul class="footer-links">
                                        <li><a href="#">Our stores</a></li>
                                        <li><a href="about.jsp">About us</a></li>
                                        <li><a href="#">Business with us</a></li>
                                        <li><a href="#">Delivery information</a></li>
                                        <li><a href="#">Terms &amp; Conditions</a></li>
                                    </ul>
                                </div>
                            </div> <!-- end information -->

                            <div class="col-md-2 col-sm-4 col-xs-12">
                                <div class="footer-help">
                                    <h5>Help</h5>
                                    <ul class="footer-links">
                                        <li><a href="contact.jsp">Contact us</a></li>
                                        <li><a href="#">Track order</a></li>
                                        <li><a href="#">F.A.Q</a></li>
                                        <li><a href="#">Privacy policy</a></li>
                                        <li><a href="#">Returns</a></li>
                                    </ul>
                                </div>
                            </div> <!-- end help -->

                            <div class="col-md-2 col-sm-4 col-xs-12">
                                <div class="footer-account">
                                    <h5>Account</h5>
                                    <ul class="footer-links">
                                        <li><a href="#">My account</a></li>
                                        <li><a href="#">Wishlist</a></li>
                                        <li><a href="#">Order history</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Gift Vouchers</a></li>
                                    </ul>
                                </div>
                            </div> <!-- end account -->

                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-about-us">
                                    <h5>About US</h5>
                                    <p>Company Profile <br/>
                                        Partnership<br/>
                                    </p>
                                </div>
                            </div> <!-- end about us -->

                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-stay-tuned">
                                    <h5>Stay Tuned</h5>
                                    <div class="social-icons mt-30 clearfix">
                                        <a href="#" class="facebook">
                                            <i class="fa fa-facebook"></i>
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                        <a href="#" class="twitter">
                                            <i class="fa fa-twitter"></i>
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#" class="google-plus">
                                            <i class="fa fa-google-plus"></i>
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                        <a href="#" class="linkedin">
                                            <i class="fa fa-linkedin"></i>
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                        <a href="#" class="pinterest">
                                            <i class="fa fa-pinterest-p"></i>
                                            <i class="fa fa-pinterest-p"></i>
                                        </a>
                                        <a href="#" class="instagram">
                                            <i class="fa fa-instagram"></i>
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </div>
                                    <div class="footer-newsletter mt-40">
                                        <form role="form">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter your email">
                                            </div>
                                            <button type="submit" class="newsletter-submit"><i class="fa fa-angle-right"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- end stay tuned -->

                        </div> <!-- end row -->
                    </div> <!-- end footer widgets -->			
                </div> <!-- end container -->

                <div class="bottom-footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-sm-6 copyright">
                                <span>
                                    © 2016 Wine Express  |  Designed by Jin Wenqian
                                </span>
                            </div>

                            <div class="col-sm-4 col-sm-offset-2 footer-payment-systems text-right mt-sml-10">
                                <i class="fa fa-cc-paypal"></i>
                                <i class="fa fa-cc-visa"></i>
                                <i class="fa fa-cc-mastercard"></i>
                                <i class="fa fa-cc-discover"></i>
                                <i class="fa fa-cc-amex"></i>
                            </div>

                        </div>
                    </div>
                </div> <!-- end bottom footer -->
            </footer> <!-- end footer -->

            <div id="back-to-top">
                <a href="#top"><i class="fa fa-angle-up"></i></a>
            </div>



        </div> <!-- end main-wrapper -->


        <!-- jQuery Scripts -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="js/rev-slider.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript" src="js/styleswitch.js"></script>

    </body>
</html>