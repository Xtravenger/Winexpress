<%-- 
    Document   : user
    Created on : Mar 8, 2016, 7:27:26 AM
    Author     : Xtravenger
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | Users</title>

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
        
        <script>
               <%  if(request.getAttribute("invalid")!= null)
                    { String msg = request.getAttribute("invalid").toString(); %>
                      alert("<%=msg%>");
                    <%}%>
                                  
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

                                    <li class="menu-my-acc left hidden-sm hidden-xs dropdown">
                                           <%if (session.getAttribute("email") != null) {%> <a class="dropdown-toggle" data-toggle="dropdown">My Account</a><%}%>
                                        <ul class="dropdown-menu">
                                            <li><a href="updateAccount">Edit Profile</a></li>
                                            <li><a href="history">Purchase history</a></li>
                                                <%if (session.getAttribute("role") != null) { if (session.getAttribute("role").equals("Admin")) {%> <li><a href="users">Edit Users</a></li> <%}}%>
                                                <%if (session.getAttribute("role") != null) { if (!session.getAttribute("role").equals("Admin")) {%> <li><a href="enquiry">Send Enquiry</a></li> <%}}%>
                                                <%if (session.getAttribute("role") != null) { if (session.getAttribute("role").equals("Admin")) {%> <li><a href="category.jsp">Edit Category</a></li> <%}}%>
                                                <%if (session.getAttribute("role") != null) { if (session.getAttribute("role").equals("Admin")) {%> <li><a href="product.jsp">Edit Product</a></li> <%}} %> 
                                            <li><a href="logout?page=index.jsp">Log out</a></li>
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


        <div class="main-wrapper oh">

            <section class="section-wrap checkout pt-70">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-12">
                            <h1 class="text-center steps-wrap">
                                <a href="#" class="step-cart active">Edit User</a>
                                <i class="fa fa-angle-right"></i>
                                <a href="category.jsp" class="step-checkout">Edit Category</a>
                                <i class="fa fa-angle-right"></i>
                                <a href="product.jsp" class="step-order-complete">Edit Product</a>
                            </h1>
                        </div>
                    </div>
                </div>		

                <!-- Edit Profile -->
                <div class="container relative">
                    <div class="row">
                        <div class="col-md-8 woocommerce">
                            <form name="user_profile" class="checkout woocommerce-checkout row">
                                <div id="profile_details">

                                    <h6 class="heading-underline">Users</h6>
                                    <div class="cart-table-wrap">
                                        <table class="admin_table cart table">
                                            <thead>
                                                <tr>
                                                    <th>Email</th>
                                                    <th>Name</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    List accList = (ArrayList) request.getAttribute("acclist");

                                                    if (!accList.isEmpty()) {
                                                    
                                                        for (int i = 0; i < accList.size();i++)
                                                        {
                                                          String[] acc = accList.get(i).toString().split(",");
                                                    
                                                %>
                                                <tr class="cart_item">
                                                    <td><%=acc[0]%></td>
                                                    <td >
                                                        <span id="username1"><%=acc[1]%></span>
                                                    </td>
                                                    <td><%=acc[2]%></td>
                                                    <td><a href="users?cancel=<%=acc[0]%>" class="btn btn-yellow">Cancel Account</a>
                                                        <a href="users?delete=<%=acc[0]%>" class="btn btn-red">Delete</a>
                                                        <a href="users?activate=<%=acc[0]%>" class="btn btn-green">Activate</a></td>
                                                </tr>
                                                <%} }%>
                                            </tbody>
                                        </table>
                                    </div>		

                                </div>
                                <br/>		
                            </form>
                             
                              <form name="registration-form" id="registration-form" method="post" action="users" class="checkout woocommerce-checkout row">
                                <div id="profile_details">
                                 
                                    <h6 class="heading-underline">create admin</h6>
                                                               
                                    <p class="form-row form-row-first validate-required woocommerce-invalid woocommerce-invalid-required-field" id="name_field">
                                        <label for="name">Name
                                         
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Name" name="name" id="name">
                                    </p>

                                    <p class="form-row form-row-last validate-required woocommerce-invalid woocommerce-invalid-required-field" id="dob_field">
                                        <label for="dob">D.O.B
                                           
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="dd-mm-yyyy" name="dob" id="dob">
                                    </p>


                                    <p class="form-row form-row-last validate-required woocommerce-invalid woocommerce-invalid-required-field" id="email_field">
                                        <label for="gender">Gender
                                           
                                        </label>
                                        <select name="gender" id="gender" class="country_to_state" rel="gender">
                                            <option value="M">Male</option>
                                            <option value="F">Female</option>
                                        </select>
                                    </p>

                                    <p class="form-row form-row-last validate-required woocommerce-invalid woocommerce-invalid-required-field" id="email_field">
                                        <label for="email">Email
                                       
                                        </label>
                                         <input type="text" placeholder="Email" name="email" id="email" />
                                    </p>

                                    <p class="form-row form-row-last validate-required validate-phone" id="edit_phone_field">
                                        <label for="phone">Phone
                                         
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Phone" name="phone" id="phone">
                                    </p>
                                </div>
                                     <input type="hidden" id="create_admin" name="create_admin"/>
                                     <input type="submit" onclick="return validate()" class="btn btn-lg btn-green" value="Create" id="create_admin" name="create_admin"/>
                              </form>   
                        </div>	

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end edit profile -->


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
                                        Amadea Shop is a very slick and clean e-commerce template with endless possibilities. Creating an awesome clothes store with this Theme is easy than you can imagine.
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
                                    © 2015 Amadea Theme  |  Designed by <a href="http://deothemes.com">DeoThemes</a>
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
        <script>
                  function validate()
                                    {

                                        if ($("#name").val() == "" || $("#dob").val() == "" || $("#email").val() == "" || $("#phone").val() == "")
                                        {

                                            alert("Filled in all required fields");
                                            return false;

                                        } else
                                        {

                                            var contactPattern = /^\d{1,20}$/;
                                            var res = contactPattern.test($("#phone").val());

                                            if (res == false)
                                            {
                                                alert("Invalid Phone Number");
                                                return false;

                                            }

                                            var birthday = $("#dob").val();
                                            var array = birthday.split("-");
                                            var date = parseInt(array[0]);
                                            var month = parseInt(array[1]);
                                            var year = parseInt(array[2]);


                                            if (!((date > 0 && date < 32) && (month > 0 && month < 13) && year > 1900))
                                            {
                                                alert("Invalid DOB");
                                                return false;
                                            }


                                        }
                                                                           
                                        document.getElementById("registration-form").submit();

                                    }
            
        </script>
    </body>
</html>