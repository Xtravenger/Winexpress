<%-- 
    Document   : index
    Created on : Feb 28, 2016, 4:39:39 PM
    Author     : Xtravenger
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | The best online wine store for your exquisite taste</title>

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
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="235764268022-1iafbg46etiu1dnllhunakre1729v7nu.apps.googleusercontent.com">
        <script>
            function onSignIn(googleUser) {
                var profile = googleUser.getBasicProfile();
                var email = profile.getEmail();

            <%

                if (session.getAttribute("email") == null && request.getAttribute("invalid") == null) {%>
                document.location.href = "login?social=true&LogInEmail=" + email;

            <%}%>
            }
        </script>


    </head>

    <body>

        <!-- Preloader -->
        <div class="loader-mask">
            <div class="loader">
                "Loading..."
            </div>
        </div>

        <!-- Navigation -->
        <header class="nav-type-1 transparent">
            <nav class="navbar navbar-fixed-top" role="navigation">
                <div class="navigation-overlay">
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

                                        <li class="active">
                                            <a href="#">Home<span class="sr-only">(current)</span></a>
                                        </li>

                                        <li class="dropdown">
                                            <a href="shop.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
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
                                            <a href="contact.jsp">Contact us</a>
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
                                    <a href="#">
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
                                                <%
                                                    double total = 0.0;
                                                    ArrayList chargeList = (ArrayList) request.getAttribute("chargelist");

                                                    if (session.getAttribute("cartlist") != null) {
                                                        ArrayList list = (ArrayList) session.getAttribute("cartlist");

                                                        for (int i = 0; i < list.size(); i++) {
                                                            String[] item = (String[]) list.get(i);%>
                                                <div class="menu-cart-item clearfix">
                                                    <div class="menu-cart-img">
                                                        <a href="#">
                                                            <img src="" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="menu-cart-title">
                                                        <a href="#">
                                                            <%=item[1]%>
                                                        </a>
                                                        <div class="menu-cart-price">
                                                            <span><%=item[2]%> x</span>
                                                            <span><% out.println(Integer.parseInt(item[2]) * Double.parseDouble(item[3])); %></span>
                                                            <% total = Integer.parseInt(item[2]) * Double.parseDouble(item[3]);%>
                                                        </div>
                                                    </div>
                                                    <div class="menu-cart-remove">
                                                        <a href="cart?remove="<%=item[0]%>></a>
                                                    </div>
                                                </div>
                                                <%}
                                                    }


                                                %>    

                                                <div class="menu-cart-summary">
                                                    <span>Cart Subtotal</span>
                                                    <span class="total-price">$<%=total%></span>
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

            <!-- Revolution Slider -->
            <section>
                <div class="rev_slider_wrapper">
                    <div class="rev_slider" id="slider1" data-version="5.0">
                        <ul class="video-wrapper">
                            <!-- SLIDE 1 -->
                            <li data-transition="fade"
                                data-slotamount="1"
                                data-masterspeed="700"
                                data-easein="default" 
                                data-easeout="default"
                                data-delay="10000">

                                <!-- MAIN IMAGE -->
                                <video preload="preload" loop="loop" autoplay="autoplay" style="width: 100%; height: auto; position: absolute; transform: translate3d(0px, -56px, 0px);">
                                    <source src="img/revolution/bgvideo1.mp4" type="video/mp4">
                                </video>

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption hero-upper"
                                     data-x="20"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-113"
                                     data-start="1000"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">The best <strong>Grapes</strong> 
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption hero-line"
                                     data-x="20"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-84"
                                     data-start="1100"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">
                                </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption hero-text dark green"
                                     data-x="20"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-29"
                                     data-start="1200"
                                     data-fontsize="[64, 55, 50, 30]"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"><span>Oraganic</span> Vineyard
                                </div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption hero-lower"
                                     data-x="20"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="30"
                                     data-start="1300"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">Freshly delivered to you
                                </div>

                                <!-- LAYER NR. 5 -->
                                <div class="tp-caption tp-resizeme"
                                     data-x="20"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="99" 
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-start="1400"
                                     style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#" class='largebtn'>Shop Now</a>
                                </div>										
                            </li>

                            <!-- SLIDE 2 -->
                            <li data-transition="fade"
                                data-slotamount="1"
                                data-masterspeed="700">

                                <!-- MAIN IMAGE -->
                                <video preload="preload" loop="loop" autoplay="autoplay" style="width: 100%; height: auto; position: absolute; transform: translate3d(0px, -56px, 0px);">
                                    <source src="img/revolution/bgvideo2.mp4" type="video/mp4">
                                </video>

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption hero-upper"
                                     data-x="left"
                                     data-y="center"
                                     data-hoffset="[700, 450, 400, 250]"
                                     data-voffset="-113"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-start="1000">up to <strong>30% off</strong>
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption hero-line"
                                     data-x="left"
                                     data-y="center"
                                     data-hoffset="[700, 450, 400, 250]"
                                     data-voffset="-84"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-start="1100">
                                </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption hero-text dark red tp-resizeme"
                                     data-x="left"
                                     data-y="center"
                                     data-hoffset="[700, 450, 400, 250]"
                                     data-voffset="-29"
                                     data-start="1200"
                                     data-fontsize="[64, 55, 50, 30]"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"><span class="color">Sales</span> 2016
                                </div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption hero-lower tp-resizeme"
                                     data-x="left"
                                     data-y="center"
                                     data-hoffset="[700, 450, 400, 250]"
                                     data-voffset="30"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-width="[none, none, 200, 150]"
                                     data-whitespace="[nowrap, nowrap, normal, normal]"
                                     data-start="1300">Hot &amp; Trendy Flavors of This Season 
                                </div>

                                <!-- LAYER NR. 5 -->
                                <div class="tp-caption tp-resizeme"
                                     data-x="left"
                                     data-y="center"
                                     data-hoffset="[700, 450, 400, 250]"
                                     data-voffset="99" 
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-start="1400"
                                     style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='shop.html' class='largebtn'>Shop Now</a>
                                </div>					
                            </li>

                            <!-- SLIDE 3 -->
                            <li data-transition="fade"
                                data-slotamount="1"
                                data-masterspeed="700">

                                <!-- MAIN IMAGE -->
                                <video preload="preload" loop="loop" autoplay="autoplay" style="width: 100%; height: auto; position: absolute; transform: translate3d(0px, -56px, 0px);">
                                    <source src="img/revolution/bgvideo3.mp4" type="video/mp4">
                                </video>
                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption hero-upper"
                                     data-x="center"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-113"
                                     data-start="1000"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">amazing <strong>collections</strong>
                                </div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption hero-line"
                                     data-x="center"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-84"
                                     data-start="1100"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">
                                </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption hero-text red dark"
                                     data-x="center"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="-29"
                                     data-start="1200"
                                     data-fontsize="[64, 55, 50, 30]"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"><span class="color">Festival</span> Picks
                                </div>

                                <!-- LAYER NR. 4 -->
                                <div class="tp-caption hero-lower"
                                     data-x="center"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="30"
                                     data-start="1300"
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;">Starting from $29
                                </div>

                                <!-- LAYER NR. 5 -->
                                <div class="tp-caption tp-resizeme"
                                     data-x="center"
                                     data-y="center"
                                     data-hoffset="0"
                                     data-voffset="99" 
                                     data-transform_idle="o:1;s:1000"
                                     data-transform_in="y:150;opacity:0;"
                                     data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;"
                                     data-start="1400"
                                     style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href="#" class='largebtn'>Shop Now</a>
                                </div>					
                            </li>

                        </ul>
                    </div>
                </div>
            </section>

            <!-- Collections -->
            <section class="section-wrap collections pb-0">
                <div class="container">
                    <div class="title-box text-center">
                        <h2 class="heading-double-line heading-small">Collections</h2>
                    </div>

                    <div class="collections-masonry">

                        <div class="col-xs-8 masonry-item">
                            <div class="collection-img">
                                <a href="#">
                                    <img src="img/collection_1.jpg" alt="">		
                                </a>
                                <div class="collection-overlay">
                                    <div class="collection-description">
                                        <h2 class="color-white"><a href="#">Red Wine</a></h2>
                                        <a href="shop.html">Shop Now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>	
                            </div>
                        </div>

                        <div class="col-xs-4 masonry-item">
                            <div class="collection-img">
                                <a href="#">
                                    <img src="img/collection_2.jpg" alt="">							
                                </a>
                                <div class="collection-overlay">
                                    <div class="collection-description">
                                        <h2 class="color-white"><a href="#">Sparkling Wine</a></h2>
                                        <a href="shop.html">Shop Now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4 masonry-item">
                            <div class="collection-img">
                                <a href="#">
                                    <img src="img/collection_3.jpg" alt="">							
                                </a>
                                <div class="collection-overlay">
                                    <div class="collection-description">
                                        <h2 class="color-white"><a href="#">White Wine</a></h2>
                                        <a href="shop.html">Shop Now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4 masonry-item">
                            <div class="collection-img">
                                <a href="#">
                                    <img src="img/collection_4.jpg" alt="">							
                                </a>
                                <div class="collection-overlay">
                                    <div class="collection-description">
                                        <h2 class="color-white"><a href="#">Rose</a></h2>
                                        <a href="shop.html">Shop Now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div> <!-- end container -->
            </section> <!-- end collections -->


            <!-- New Arrivals -->
            <section class="section-wrap grid-5-col">
                <div class="container">
                    <div class="title-box text-center">
                        <h2 class="heading-double-line heading-small">New Arrivals</h2>
                    </div>

                    <div class="row">

                        <div class="col-md-5ths">
                            <div class="product-item">
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
                                            <a href="catalogue-grid.html">Men</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Autumn Coat</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$399.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$150.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_2.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Accessories</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Ladies Dark Brown Bag</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$189.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_3.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Watches</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Classic Watch</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$210.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
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
                                            <a href="catalogue-grid.html">Women</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Floral Dress</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$289.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_5.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Accessories</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Leather Purse</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$150.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_6.jpg" alt="">
                                    </a>
                                    <div class="product-label">
                                        <span class="onsale">sale</span>
                                    </div>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Men</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Cotton Sweater</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$399.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$150.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_7.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Women</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Sequin Summer Suit</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$250.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$189.00</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_8.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Shoes</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Classic Shoes</p>
                                        </a>
                                        <span class="price">
                                            <ins>
                                                <span class="ammount">$612.00</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_9.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Women</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Summer Shorts</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$799.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$650.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5ths">
                            <div class="product-item">
                                <div class="product-img hover-2">
                                    <a href="#">
                                        <img src="img/shop_item_10.jpg" alt="">
                                    </a>
                                    <div class="hover-overlay"></div>
                                    <div class="product-details">
                                        <h5 class="category">
                                            <a href="catalogue-grid.html">Accessories</a>
                                        </h5>
                                        <a href="single-product.html">
                                            <p class="product-title">Leather Bag</p>
                                        </a>
                                        <span class="price">
                                            <del>
                                                <span>$322.00</span>
                                            </del>
                                            <ins>
                                                <span class="ammount">$299.99</span>
                                            </ins>
                                        </span>
                                        <div class="product-add-to-cart">
                                            <a href="#" class="btn btn-sm">Add to Cart</a>
                                        </div>
                                    </div>

                                    <div class="product-add-to-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> <!-- end row -->

                </div> <!-- end container -->
            </section> <!-- end new arrivals -->


            <!-- Promo Section -->
            <section class="promo-section">				
                <div class="row">
                    <div class="col-sm-12">
                        <div class="promo-img">
                            <img src="img/promo_img.jpg" alt="">
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="promo-wrap">
                            <div class="promo-text text-center">
                                <div class="hero-upper">
                                    <span>Premium collections</span>
                                </div>
                                <div class="hero-line"></div>
                                <div class="hero-big">
                                    <h2>For Real <span>Gastronomes</span></h2>
                                </div>
                                <div class="hero-lower">
                                    <span>Unparalleled taste experience</span>
                                </div>
                                <button class="btn btn-lg btn-bright">shop now</button>
                            </div>
                        </div>
                    </div>

                </div>

            </section> <!-- end promo section -->

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
                                    <p>
                                        Wine Xpress is amazing <br/>
                                        Amazing stuff<br/>
                                        More amazing stuff<br/>
                                        I am not sure if you are reading this<br/>
                                        Does anyone?<br/>
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

        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script>
                                                            function validate()
                                                            {

                                                                if ($("#SignUpEmail").val() == "" || $("#SignUpPassword1").val() == "" || $("#SignUpPassword2").val() == "")
                                                                {

                                                                    document.getElementById("message").innerHTML = "Filled in all required fields";
                                                                    return false;

                                                                } else
                                                                {

                                                                    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
                                                                    var res = emailPattern.test($("#SignUpEmail").val());

                                                                    if (res == false)
                                                                    {
                                                                        document.getElementById("SignUpEmail").value = "";
                                                                        document.getElementById("message").innerHTML = "Invalid Email";
                                                                        return false;

                                                                    }


                                                                    if ($("#SignUpPassword1").val() != $("#SignUpPassword2").val())
                                                                    {

                                                                        document.getElementById("message").innerHTML = "Password unmatched";
                                                                        return false;

                                                                    }

                                                                }

                                                                document.getElementById("signup-form").submit();

                                                            }

                                                            $(document).ready(function () {

            <% if (request.getAttribute("invalid") != null) {
                    String message = request.getAttribute("invalid").toString();

            %>
                                                                alert("<%=message%>");
            <%}%>
                                                            });
        </script>


    </body>
</html>