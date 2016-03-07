<%-- 
    Document   : cart
    Created on : Feb 28, 2016, 4:37:14 PM
    Author     : Xtravenger
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | Cart</title>

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
                                       <a href="logout" >Log Out</a>
                                    </li>
                                    
                                    <li class="menu-my-acc left hidden-sm hidden-xs">
                                        <a href="account.jsp">My Account</a>
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
                        <a href="index.html">Pages</a>
                    </li>
                    <li class="active">
                        Cart
                    </li>
                </ol>
            </div>

            <!-- Cart -->
            <section class="section-wrap shopping-cart pt-70">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-12">
                            <h1 class="text-center steps-wrap">
                                <span class="step-cart active">shopping cart</span>
                                <i class="fa fa-angle-right"></i>
                                <span class="step-checkout">checkout</span>
                                <i class="fa fa-angle-right"></i>
                                <span class="step-order-complete">order complete</span>
                            </h1>
                        </div>

                        <div class="col-md-9">
                            <div class="cart-table-wrap">
                                <form id="cart-line-item" action="cart" method="POST">
                                    <table class="shop_table cart table">
                                        <thead>
                                            <tr>
                                                <th class="product-name" colspan="2">Product</th>
                                                <th class="product-price">Unit Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                if (session.getAttribute("cartlist") != null) {
                                                    Double subTotal = 0.0;
                                                    ArrayList list = (ArrayList) session.getAttribute("cartlist");

                                                    for (int i = 0; i < list.size(); i++) {
                                                        String[] item = (String[]) list.get(i);
                                                        subTotal = Integer.parseInt(item[2]) * Double.parseDouble(item[3]);
                                            %>
                                            <tr class="cart_item">
                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="" alt="">
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                    <a href="#"><%=item[1]%></a>
                                                    <input type="hidden" name="productID" value="">
                                                </td>
                                                <td class="product-price">
                                                    <span class="amount"><%=item[3]%></span>
                                                </td>
                                                <td class="product-quantity">
                                                    <div class="quantity buttons_added">
                                                        <input type="button" value="-" class="minus" /><input type="number" step="1" min="0" value="<%=item[2]%>" name="quantity" title="Qty" class="input-text qty text" /><input type="button" value="+" class="plus">
                                                    </div>
                                                </td>
                                                <td class="product-subtotal">
                                                    <span class="amount"><%=subTotal%></span>
                                                </td>
                                                <td class="product-remove">
                                                    <a href="cart?remove="<%=item[0]%> class="remove" title="Remove this item"></a>
                                                </td>
                                            </tr>

                                            <% }
                                                }
                                            %>

                                        </tbody>
                                    </table>
                                </form>
                            </div>

                            <section class="shipping-calculator-form">
                                <h2 class="heading-underline">Calculate Shipping</h2>
                                <label for="calc_shipping_country">Country to ship</label>
                                <p class="form-row form-row-wide">
                                    <select name="calc_shipping_country" id="calc_shipping_country" class="country_to_state" rel="calc_shipping_state">
                                        <option>Select a country…</option>
                                        <option value="DZ">Algeria</option>
                                        <option value="AR">Argentina</option>
                                        <option value="AU">Australia</option>
                                        <option value="AT">Austria</option>
                                        <option value="BD">Bangladesh</option>
                                        <option value="BE">Belgium</option>
                                        <option value="BO">Bolivia, Plurinational State of</option>
                                        <option value="BR">Brazil</option>
                                        <option value="IO">British Indian Ocean Territory</option>
                                        <option value="BN">Brunei Darussalam</option>
                                        <option value="BG">Bulgaria</option>
                                        <option value="KH">Cambodia</option>
                                        <option value="CM">Cameroon</option>
                                        <option value="CA">Canada</option>
                                        <option value="CL">Chile</option>
                                        <option value="CN">China</option>
                                        <option value="CO">Colombia</option>
                                        <option value="CR">Costa Rica</option>
                                        <option value="CI">Côte d'Ivoire</option>
                                        <option value="HR">Croatia</option>
                                        <option value="CU">Cuba</option>
                                        <option value="CZ">Czech Republic</option>
                                        <option value="DK">Denmark</option>
                                        <option value="EC">Ecuador</option>
                                        <option value="EG">Egypt</option>
                                        <option value="GQ">Equatorial Guinea</option>
                                        <option value="EE">Estonia</option>
                                        <option value="FI">Finland</option>
                                        <option value="FR">France</option>
                                        <option value="DE">Germany</option>
                                        <option value="GH">Ghana</option>
                                        <option value="GR">Greece</option>
                                        <option value="HN">Honduras</option>
                                        <option value="HK">Hong Kong</option>
                                        <option value="HU">Hungary</option>
                                        <option value="IS">Iceland</option>
                                        <option value="IN">India</option>
                                        <option value="ID">Indonesia</option>
                                        <option value="IR">Iran, Islamic Republic of</option>
                                        <option value="IQ">Iraq</option>
                                        <option value="IE">Ireland</option>
                                        <option value="IL">Israel</option>
                                        <option value="IT">Italy</option>
                                        <option value="JM">Jamaica</option>
                                        <option value="JP">Japan</option>
                                        <option value="JO">Jordan</option>
                                        <option value="KZ">Kazakhstan</option>
                                        <option value="KE">Kenya</option>
                                        <option value="KP">Korea, Democratic People's Republic of</option>
                                        <option value="KR">Korea, Republic of</option>
                                        <option value="KW">Kuwait</option>
                                        <option value="KG">Kyrgyzstan</option>
                                        <option value="LA">Lao People's Democratic Republic</option>
                                        <option value="LB">Lebanon</option>
                                        <option value="LR">Liberia</option>
                                        <option value="LY">Libya</option>
                                        <option value="LI">Liechtenstein</option>
                                        <option value="LT">Lithuania</option>
                                        <option value="LU">Luxembourg</option>
                                        <option value="MO">Macao</option>
                                        <option value="MY">Malaysia</option>
                                        <option value="MV">Maldives</option>
                                        <option value="MX">Mexico</option>
                                        <option value="MC">Monaco</option>
                                        <option value="MN">Mongolia</option>
                                        <option value="MA">Morocco</option>
                                        <option value="MM">Myanmar</option>
                                        <option value="NP">Nepal</option>
                                        <option value="NL">Netherlands</option>
                                        <option value="NZ">New Zealand</option>
                                        <option value="NG">Nigeria</option>
                                        <option value="NO">Norway</option>
                                        <option value="PK">Pakistan</option>
                                        <option value="PG">Papua New Guinea</option>
                                        <option value="PY">Paraguay</option>
                                        <option value="PE">Peru</option>
                                        <option value="PH" >Philippines</option>
                                        <option value="PL">Poland</option>
                                        <option value="PT">Portugal</option>
                                        <option value="QA">Qatar</option>
                                        <option value="RO">Romania</option>
                                        <option value="RU">Russian Federation</option>
                                        <option value="SA">Saudi Arabia</option>
                                        <option value="SN">Senegal</option>
                                        <option value="RS">Serbia</option>
                                        <option value="SL">Sierra Leone</option>
                                        <option value="SG" selected="selected">Singapore</option>
                                        <option value="SI">Slovenia</option>
                                        <option value="ZA">South Africa</option>
                                        <option value="ES">Spain</option>
                                        <option value="LK">Sri Lanka</option>
                                        <option value="SD">Sudan</option>
                                        <option value="SE">Sweden</option>
                                        <option value="CH">Switzerland</option>
                                        <option value="SY">Syrian Arab Republic</option>
                                        <option value="TW">Taiwan, Province of China</option>
                                        <option value="TH">Thailand</option>
                                        <option value="TL">Timor-Leste</option>
                                        <option value="TN">Tunisia</option>
                                        <option value="TR">Turkey</option>
                                        <option value="TM">Turkmenistan</option>
                                        <option value="UA">Ukraine</option>
                                        <option value="AE">United Arab Emirates</option>
                                        <option value="GB">United Kingdom</option>
                                        <option value="US">United States</option>
                                        <option value="UM">United States Minor Outlying Islands</option>
                                        <option value="UY">Uruguay</option>
                                        <option value="UZ">Uzbekistan</option>
                                        <option value="VU">Vanuatu</option>
                                        <option value="VN">Viet Nam</option>
                                        <option value="VG">Virgin Islands, British</option>
                                        <option value="VI">Virgin Islands, U.S.</option>
                                        <option value="YE">Yemen</option>
                                        <option value="ZM">Zambia</option>
                                        <option value="ZW">Zimbabwe</option>
                                    </select>
                                </p>
                                <p>
                                    <button type="submit" name="calc_shipping" onclick="calculate(document.getElementById('calc_shipping_country').value)" value="1" class="btn btn-lg btn-dark">Update Totals</button>
                                </p>
                            </section>

                        </div>

                        <div class="col-md-3">
                            <div class="cart_totals">
                                <h2 class="heading-underline">Cart totals</h2>
                                <table>
                                    <tbody>
                                        <tr class="cart-subtotal">
                                            <th>Cart Subtotal</th>
                                            <td>
                                                $<span class="amount" id="subTotal"><%=total%></span>
                                            </td>
                                        </tr>
                                        <tr class="shipping">
                                            <th>Shipping</th>
                                            <td>
                                                $<span id="shipFee">0.00</span>

                                            </td>
                                        </tr>
                                        <tr class="order-total">
                                            <th><strong>Order Total</strong></th>
                                            <td>
                                                <strong>$<span class="amount" id="orderTotal">390.00</span></strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="actions">
                                    <input type="submit" name="update_cart" value="Update Cart" class="btn btn-lg btn-dark">
                                    <div class="wc-proceed-to-checkout">
                                        <a href="checkout.jsp" class="btn btn-lg btn-red">proceed to checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> <!-- end row -->
                </div> <!-- end container -->
            </section> <!-- end cart -->


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

        <script>


                                        var countryList = [];
                                        var priceList = [];
            <%
                          
                                for (int i = 0; i < chargeList.size(); i++) {
                                    String[] detail = String.valueOf(chargeList.get(i)).split(",");
                                        
            %>
                                    
                                        countryList.push("<%=detail[0]%>");
                                        priceList.push("<%=detail[1]%>");
                                     

            <%}%>   

                                         $(document).ready(function () {
                                                  var subtotal = document.getElementById("subTotal").innerHTML;
                                                  var shipfee = document.getElementById("shipFee").innerHTML;
                                                                                                                                            
                                                  document.getElementById("orderTotal").innerHTML = parseFloat(parseFloat(subtotal)+ parseFloat(shipfee)).toFixed(2);
                                                });


                                        function calculate(v)
                                        {
                                         
                                            for (var i = 0; i < countryList.length; i++)
                                            {
                                               
                                                var code = countryList[i];
                                                
                                                if (code == v)
                                                {
                                                    
                                                    document.getElementById("shipFee").innerHTML = priceList[i];
                                            
                                                    var subtotal = document.getElementById("subTotal").innerHTML;
                                                    var shipfee = document.getElementById("shipFee").innerHTML;
                                                    document.getElementById("orderTotal").innerHTML = parseFloat(parseFloat(subtotal)+ parseFloat(shipfee)).toFixed(2);
                                                    return;
                                                }
                                            }

                                        }





        </script>

    </body>
</html>