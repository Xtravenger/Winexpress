<%-- 
    Document   : contact
    Created on : Feb 28, 2016, 4:38:51 PM
    Author     : Xtravenger
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Express | Contact</title>

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
                                            <a href="index.jsp">Home<span class="sr-only">(current)</span></a>
                                        </li>

                                        <li class="dropdown active">
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
                                    <a href="index.jsp">
                                        <img class="logo" src="img/logo.png" alt="logo">
                                    </a>
                                </div>
                            </div>

                            <!-- Account, Cart, Search -->
                            <div class="col-md-4 account-wrap right">
                                <ul>
                                    <li class="menu-my-acc left hidden-sm hidden-xs">

                                        <%if (session.getAttribute("email") == null) {%> <a href="#" data-toggle="modal" data-target="#LogInModal">Log In</a> <%}%>

                                        <div class="modal fade" id="LogInModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-sm" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                                        <h6 class="modal-title" id="myModalLabel">Log in to your account</h6>
                                                    </div>

                                                    <div class="modal-body">
                                                        <label name =msg" id ="msg"></label>
                                                        <form action="login?page=contact.jsp" method="post" id="login-form">

                                                            <input type="email" class="form-control" id="LogInEmail" name="LogInEmail" placeholder="Email Address"></input>
                                                            <br/>
                                                            <input type="password" class="form-control" id="LogInPassword" name="LogInPassword" placeholder="Password"></input>
                                                        </form>	

                                                    </div>
                                                    <div class="modal-footer">


                                                        <a href="#" onclick="document.location.href = 'resetpassword.jsp'" data-dismiss="modal" class="forgot">Forgot Password?</a>

                                                        <button type="button" class="btn btn-primary" onclick="document.getElementById('login-form').submit()" >Log In</button>
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
                                                        <form action="registration?signup=true" method="POST" id="signup-form">
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
                                            <%if (session.getAttribute("role") != null) {
                                                        if (session.getAttribute("role").equals("Admin")) {%> <li><a href="users">Edit Users</a></li> <%}
                                                    }%>
                                                <%if (session.getAttribute("role") != null) {
                                                        if (!session.getAttribute("role").equals("Admin")) {%> <li><a href="enquiry">Send Enquiry</a></li> <%}
                                                    }%>
                                                <%if (session.getAttribute("role") != null) {
                                                        if (session.getAttribute("role").equals("Admin")) {%> <li><a href="category.jsp">Edit Category</a></li> <%}
                                                    }%>
                                                <%if (session.getAttribute("role") != null) {
                                                        if (session.getAttribute("role").equals("Admin")) {%> <li><a href="product.jsp">Edit Product</a></li> <%}
                                                    } %> 
                                            <li><a href="logout?page=contact.jsp">Log out</a></li>
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
                                                <a class="shopping-cart" href="cart.jsp">
                                                    <span>0</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="menu-cart-container">
                                            <div class="menu-cart-items">
                                                <%
                                                    double total = 0.0;

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
                                            </div>

                                            <div class="menu-cart-summary">
                                                <span>Cart Subtotal</span>
                                                <span class="total-price">$<%=total%></span>
                                            </div>

                                            <div class="menu-cart-actions mt-20">
                                                <a href="cart" class="btn btn-md btn-dark">View Cart</a>
                                                <a href="checkout" class="btn btn-md btn-red mt-10">Proceed to Checkout</a>
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


    </header> <!-- end navigation -->

    <div class="main-wrapper oh">

        <!-- Page Title -->
        <section class="page-title text-center" style="background-image: url(img/contact_title_bg.jpg);">
            <div class="container relative clearfix">
                <div class="title-holder">
                    <div class="title-text">
                        <h1 class="color-white">Contact</h1>
                        <ol class="breadcrumb">
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li class="active">
                                Contact
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </section> <!-- end page title -->


        <!-- Contact -->
        <section class="section-wrap contact">
            <div class="container">			
                <div class="row">
                    <div class="col-md-7 col-sm-7">
                        <div id="msg" class="message">
                            <% if (request.getAttribute("success") != null) {
                                    out.println("<font color = red>" + request.getAttribute("success") + "</font>");
                                }

                                String email = "";
                                String name = "";
                                if (request.getAttribute("email") != null && request.getAttribute("name") != null) {
                                    email = request.getAttribute("email").toString();
                                    name = request.getAttribute("name").toString();
                                }

                            %>
                        </div>

                        <form  id="contact-form" action="contact" method="POST"  >
                            <input name="name" id="name" type="text" class="form-control" placeholder="Name*" value="<%=name%>" />
                            <input name="mail" id="mail" type="email" class="form-control" placeholder="E-mail*" value="<%=email%>" />	
                            <input name="subject" id="subject" type="text" class="form-control" placeholder="Subject" />	
                            <textarea name="comment" id="comment" class="form-control" placeholder="Message"></textarea>
                            <input type="submit" onclick="validate()" class="btn btn-lg btn-green" value="Send Message" id="submit-message"/>

                        </form>
                    </div> <!-- end col -->

                    <div class="col-md-4 col-md-offset-1 col-sm-5">

                        <div class="contact-item">
                            <h6>Address</h6>
                            <p>Wine Xpress inc.<br>
                                20 Lower Kent Ridge<br>
                                Singapore<br>
                                100333</p>
                        </div> <!-- end address -->

                        <div class="contact-item">
                            <h6>Information</h6>
                            <ul>
                                <li>
                                    <i class="fa fa-envelope"></i><a href="mailto:fedora.winexpress@gmail.com">fedora.winexpress@gmail.com</a>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i><span>+65 9000 3000</span>
                                </li>
                                <li>
                                    <i class="fa fa-fax"></i><span>+65 9000 3000</span>
                                </li>
                            </ul>								
                        </div> <!-- end information -->

                        <div class="contact-item">
                            <h6>Business hours</h6>
                            <ul>
                                <li>Monday – Friday: 9am to 8pm</li>
                                <li>Saturday: 9am to 5pm</li>
                                <li>Sunday: day off</li>
                            </ul>								
                        </div> <!-- end business hours -->

                    </div>

                </div>
            </div>
        </section> <!-- end contact -->

    </p>        <!-- Google Map -->
    <div class="gmap" data-address="20 lower kent ridge road, Singapore"></div> 	        


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

<!-- Google Map -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script type="text/javascript">
                                $(document).ready(function () {
                                    initGmap();

                                    function initGmap() {

                                        var maplocation = jQuery(".gmap").attr("data-address");

                                        jQuery(".gmap").gmap3({
                                            marker: {
                                                address: maplocation,
                                                options: {
                                                    icon: "img/map_pin.png"
                                                }
                                            },
                                            map: {
                                                options: {
                                                    zoom: 16,
                                                    zoomControl: true,
                                                    mapTypeControl: false,
                                                    scaleControl: false,
                                                    scrollwheel: false,
                                                    navigationControl: true,
                                                    streetViewControl: false,
                                                    draggable: true,
                                                    styles: [
                                                        {
                                                            "featureType": "all",
                                                            "elementType": "all",
                                                            "stylers": [
                                                                {"saturation": "-20"}
                                                            ]
                                                        }]
                                                }
                                            }
                                        });

                                    }
                                });
</script>
<script>

    function validate()
    {

        if ($("#name").val() == "" || $("#mail").val() == "" || $("#comment").val() == "")
        {
            alert("Filled in all required fields");
            return false;

        } else
        {

            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            var res = emailPattern.test($("#mail").val());

            if (res == false)
            {
                document.getElementById("mail").value = "";
                alert("Invalid Email");
                return false;

            }

        }

        document.getElementById("contact-form").submit();

    }

    $(document).ready(function () {

    <% if (request.getAttribute("invalid") != null) {
                String message = request.getAttribute("invalid").toString();

    %>

        alert("<%=message%>");
    <%}%>
    });

    function popup(form) {
        window.open('', 'formpopup', 'width=600,height=600,resizeable,scrollbars=1');
        form.target = 'formpopup';
    }
</script>
</body>
</html>
