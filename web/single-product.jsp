<%-- 
    Document   : single-product
    Created on : Feb 28, 2016, 4:41:53 PM
    Author     : Xtravenger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | Wine Name</title>

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
                                                        <form id="login-form" action="login" method="post">
                                                            <input type="email" class="form-control" name="LogInEmail" id="LogInEmail" placeholder="Email Address"></input>
                                                            <br/>
                                                            <input type="password" class="form-control" name="LogInPassword" id="LogInPassword" placeholder="Password"></input>
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
                                                <%if (session.getAttribute("role") != null) {
                                                    if (!session.getAttribute("role").equals("Admin")) {%> <li><a href="history.jsp">Purchase history</a></li><%} else {%><li><a href="users.jsp">Edit Users</a></li> <%}
                                                        }%>
                                                <%if (session.getAttribute("role") != null) {
                                                            if (!session.getAttribute("role").equals("Admin")) {%> <li><a href="enquiry">Send Enquiry</a></li> <%} else { %> <li><a href="category.jsp">Edit Category</a></li> <%}
                                                                }%>
                                                <%if (session.getAttribute("role") != null) {
                                                            if (session.getAttribute("role").equals("Admin")) {%> <li><a href="product.jsp">Edit Product</a></li> <%}
                                                                }%> 
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
                        Single Product
                    </li>
                </ol>
            </div>

            <!-- Single Product -->
            <section class="section-wrap single-product pt-70">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-6">

                            <div id="slider" class="flexslider">
                                <ul class="slides clearfix">
                                    <li>
                                        <a href="img/product_large_1.jpg" data-lightbox="true">
                                            <img id="img_main" src="img/product_large_1.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="img/product_large_2.jpg" data-lightbox="true">
                                            <img src="img/product_large_2.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="img/product_large_3.jpg" data-lightbox="true">
                                            <img src="img/product_large_3.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="img/product_large_4.jpg" data-lightbox="true">
                                            <img src="img/product_large_4.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="img/product_large_5.jpg" data-lightbox="true">
                                            <img src="img/product_large_5.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="img/product_large_6.jpg" data-lightbox="true">
                                            <img src="img/product_large_6.jpg" alt="" />
                                            <i class="arrow_expand"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div id="thumbs" class="flexslider">
                                <ul class="slides">
                                    <li>
                                        <img src="img/thumb_1.jpg" alt="#" />
                                    </li>
                                    <li>
                                        <img src="img/thumb_2.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="img/thumb_3.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="img/thumb_4.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="img/thumb_5.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="img/thumb_6.jpg" alt="" />
                                    </li>
                                </ul>
                            </div>

                        </div> <!-- end col -->

                        <div class="col-md-6 product-description-wrap">
                            <h1 class="product-title" id="product_name">Wine Name</h1>
                            <div class="rating">
                                <a href="#a_tab_three" id="numberOfreview">3 Reviews</a>
                            </div>
                            <span class="price">
                                <del>
                                    <span>$122</span>
                                </del>
                                <ins>
                                    <span class="ammount" id="product_price">$99.99</span>
                                </ins>
                            </span>
                            <p class="product-description">This wine bottle is a candidate for perfection once it is bottled. It is complete in every way marrying power, elegance, and longevity. It should see its 30th birthday in fine form. I also was able to taste the 2010 Finca Dofi and 2010 L'Ermita at this early stage. Palacios seems very pleased by his material and I see no reason to doubt him.</p>

                            <a href="#" onclick="addItem()" class="btn btn-dark btn-md add-to-cart left">Add to Cart</a>
                            <div class="quantity buttons_added">
                                <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="1" title="Qty" id="qty" class="input-text qty text" /><input type="button" value="+" class="plus" />
                            </div>
                            <div class="icon-add-to-wishlist">
                                <a href="#"><i class="fa fa-heart"></i></a>
                            </div>

                            <div class="product_meta">
                                <span class="sku">SKU: <a href="#">111763</a></span>
                                <span class="posted_in">Brand: <a href="#" id="product_brand">Wine Type</a></span>
                                <span class="tagged_as">Extra information: <a href="#">Elegant</a>, <a href="#">More information</a></span>
                            </div>

                            <div class="socials-share clearfix">
                                <span>Share:</span>
                                <div class="social-icons light">
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
                            </div>
                        </div> <!-- end product description -->

                        <div class="col-md-12 mt-70" id="a_tab_three">
                            <div class="tabs">
                                <ul class="nav nav-tabs">	                                
                                    <li class="active">
                                        <a href="#tab-one" data-toggle="tab">Description</a>
                                    </li>	                                
                                    <li>
                                        <a href="#tab-two" data-toggle="tab">Information</a>
                                    </li>	                                
                                    <li>
                                        <a href="#tab-three" data-toggle="tab">Reviews</a>
                                    </li>	                                
                                </ul> <!-- end tabs -->

                                <!-- tab content -->
                                <div class="tab-content pb-0">

                                    <div class="tab-pane fade in active" id="tab-one">
                                        <p id="description">
                                            We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought impulses which are repeated regularly with feeling and emotion are quickened, charged. Our subconscious mind contains such power and complexity that it literally staggers the imagination.And finally the subconscious is the mechanism through which thought impulses.
                                        </p>
                                    </div>

                                    <div class="tab-pane fade" id="tab-two">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>Tyoe</th>
                                                    <td>2.7GHz quad-core Intel Core i5 Turbo Boost up to 3.2GHz</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>Origin</th>
                                                    <td>8GB (two 4GB) memory</td>
                                                </tr>
                                                <tr>
                                                    <th>Vintage</th>
                                                    <td>Intel Iris Pro Graphics</td>
                                                </tr>                                			
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="tab-pane fade" id="tab-three">

                                        <div class="reviews">
                                            <ul class="reviews-list">
                                            </ul>	
                                            <hr/>
                                            <form id="comment_form" action="#" onsubmit="addComment()">
                                                <textarea id="comment_text" class="form-control"></textarea>
                                                <br/> 
                                                <h5>Click to rate:</h5>
                                                <div class='starrr' id='star1'></div>
                                                <div class='your-choice-was' style='display: none;'>
                                                    Your rating was <span id="input_rating" class='choice'></span>.</div>

                                                    <input type="submit" value="Add Comment" class="btn btn-primary pull-right">
                                            </form>
                                        </div> <!--  end reviews -->
                                    </div>

                                </div> <!-- end tab content -->

                            </div>
                        </div> <!-- end tabs -->

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end single product -->


            <!-- Related Items -->
            <section class="section-wrap related-products pt-0">
                <div class="container">
                    <div class="title-box text-center">
                        <h2 class="heading-double-line heading-small">Related Products</h2>
                    </div>

                    <div class="row">

                        <div id="owl-related-products" class="owl-carousel owl-theme">

                            <div class="item product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_1.jpg" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span class="onsale">sale</span>
                                    </div>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Wine Type</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Wine Name</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$99.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-green btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="item product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_2.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Wine type</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Wine Name</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-green btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="item product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_3.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Wine Type</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Wine Name</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$110.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-green btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="item product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_4.jpg" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span class="new">new</span>
                                    </div>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Wine Type</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Wine Name</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$89.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-green btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="item product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_5.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Wine Type</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Wine Name</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$50.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-green btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>

                        </div> <!-- end owl -->

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end related products -->


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
                                        <li><a href="#">About us</a></li>
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
                                        <li><a href="#">Contact us</a></li>
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
                                    <p>
                                        Company Profile <br/>
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

        <script type="text/javascript" src="js/bootstrap-rating-input.min.js"></script>
        <script type="text/javascript" src="js/starrr.js"></script>

        <script>
                                                            function addItem()
                                                            {
                                                                var id = "2"
                                                                var qty = document.getElementById("qty").value;

                                                                var requestUri = "addItem?id=" + id + "&qty=" + qty;


                                                                $.ajax({
                                                                    type: "POST",
                                                                    url: requestUri
                                                                }).done(function (msg) {
                                                                    alert("Item added to cart");
                                                                });
                                                            }

        </script>

        <script>
            var url = "http://localhost:8080/IS4227_WS/webresources/entities.product";

            $(document).ready(function () {
                var productID = GetQueryStringParams("productID");
                document.getElementById("img_main").src = "https://s3-ap-southeast-1.amazonaws.com/winexpressphoto/" + productID;
                $.get(url + "/" + productID, function (data) {
                    document.getElementById("product_name").innerHTML = data.productName;
                    document.getElementById("product_brand").innerHTML = data.brand;
                    document.getElementById("product_price").innerHTML = "$" + data.price;
                    document.getElementById("description").innerHTML = data.productDescription;
                }, "json");
            });
            // $("#product_name").text(data.productName);                    
            // $("#Brand").val(data.brand);
            // $("#Size").val(data.size);                    
            // $("#price").val(data.price);
            // $("#Stock").val(data.stock);
            // $("#description").val(data.productDescription);
        </script>

        <script>
            function GetQueryStringParams(sParam)
            {
                var sPageURL = window.location.search.substring(1);
                var sURLVariables = sPageURL.split('&');
                for (var i = 0; i < sURLVariables.length; i++)
                {
                    var sParameterName = sURLVariables[i].split('=');
                    if (sParameterName[0] === sParam)
                    {
                        return sParameterName[1];
                    }
                }
            }
        </script>

        <script>
            $(document).ready(function () {
                var url = "http://localhost:8080/IS4227_WS/webresources/entities.review";
                $.get(url, function (data) {
                    document.getElementById("numberOfreview").innerHTML = data.length + " reviews";
                    for (var review in data) {
                        if (data.hasOwnProperty(review)) {

                            $('#tab-three ul').append("<li><div class='review-body'><div class='review-content'>" +
                                    "<p class='review-author'><strong>" + data[review].member1.name + "</strong> - on " + data[review].reviewDate.substring(0, 10) + "</p>" +
                                    "<div class='rating'><a href='#'>" + data[review].productRating + "</a></div>" +
                                    "<p>" + data[review].comment + "</p>" +
                                    "</div></div></li>");

                        }
                    }
                }, "json");

            });
        </script>      

        <script>
            function addComment() {
                var url = "http://localhost:8080/IS4227_WS/webresources/entities.review";
                var productID = GetQueryStringParams("productID");
                var comment = document.getElementById('comment_text').value;
                var rating = document.getElementById("input_rating").innerHTML;
                var email = "<%= session.getAttribute("email")%>";

                $.ajax({
                    dataType: "json",
                    url: url + "/" + productID + "/" + comment + "/" + rating + "/" + email,
                    type: "POST",
                    success: function () {
                        alert("categ created");
                    }
                });

            }
        </script>

        <script>
            $('#star1').starrr({
                change: function (e, value) {
                    if (value) {
                        $('.your-choice-was').show();
                        $('.choice').text(value);
                    } else {
                        $('.your-choice-was').hide();
                    }
                }
            });

            var $s2input = $('#star2_input');
            $('#star2').starrr({
                max: 10,
                rating: $s2input.val(),
                change: function (e, value) {
                    $s2input.val(value).trigger('input');
                }
            });
        </script>
        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-39205841-5', 'dobtco.github.io');
            ga('send', 'pageview');
        </script>

    </body>
</html>