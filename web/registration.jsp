<%-- 
    Document   : edit
    Created on : Mar 7, 2016, 8:12:14 AM
    Author     : Xtravenger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Wine Express | Edit Profile</title>

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
                alert('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                alert('Name: ' + profile.getName());
                alert('Image URL: ' + profile.getImageUrl());
                alert('Email: ' + profile.getEmail());
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
                                        <%if (session.getAttribute("email") != null) {%> <a href="logout" >Log Out</a> <% } else { %>
                                        <a href="#" data-toggle="modal" data-target="#LogInModal">Log In</a> <%}%>

                                        <div class="modal fade" id="LogInModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-sm" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                                                        <h6 class="modal-title" id="myModalLabel">Log in to your account</h6>
                                                    </div>

                                                    <div class="modal-body">
                                                        <label name =msg" id ="msg"></label>
                                                        <form action="login" method="post" id="login-form">

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

            <section class="section-wrap checkout pt-70">
                <div class="container relative">
                    <div class="row">

                        <div class="col-md-12">
                            <h1 class="text-center steps-wrap">
                                <a href="#" class="step-cart active">Registration</a>
                                <i class="fa fa-angle-right"></i>
                            </h1>
                        </div>
                    </div>
                </div>		

                <!-- Edit Profile -->
                <div class="container relative">
                    <div class="row">
                        <div class="col-md-8 woocommerce">
                            <form name="registration" id="registration-form" method="post" action="register" class="checkout woocommerce-checkout row">
                                <div id="profile_details">
                                    <% String email = request.getAttribute("email").toString();
                                        String pass = "";
                                        if (request.getAttribute("password") != null) {
                                            pass = request.getAttribute("password").toString();
                                        };
                                        String social = "";
                                        if (request.getAttribute("social") != null) {
                                            pass = request.getAttribute("social").toString();
                                        };
                                    %>
                                    <label name="message" id="message"></label>
                                    <h2 class="heading-underline">basics</h2>
                                    <input type="hidden" name="password" id="password" value="<%=pass%>"/> <input type="hidden" name="social" id="social" value="<%=social%>"/>
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
                                        <input type="text" placeholder="Email" value="<%=email%>" name="email" id="email"/>
                                    </p>

                                    <p class="form-row form-row-last validate-required validate-phone" id="edit_phone_field">
                                        <label for="phone">Phone
                                         
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Phone" name="phone" id="phone">
                                    </p>

                                    <br/><br/><br/>
                                    <h2 class="heading-underline">shipping address (Optional)</h2>
                                    <p class="form-row form-row-wide" id="shipping_company_field">
                                        <label for="shipping_company">Company</label>
                                        <input type="text" class="input-text form-control" placeholder="Shipping Company" name="shipping_company" id="shipping_company">
                                    </p>

                                    <p class="form-row form-row-wide address-field validate-required" id="shipping_block_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="shipping_block">Block </label>
                                        <input  width="20" type="text" class="input-text form-control" placeholder="Block" name="shipping_block" id="shipping_block">
                                    </p>
                                    <p class="form-row form-row-wide address-field validate-required" id="shipping_unit_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="shipping_unit">Unit #
                                          
                                        </label>

                                        <input type="text" class="input-text form-control" placeholder="Unit Number" name="shipping_unit" id="shipping_unit">
                                    </p>

                                    <p class="form-row form-row-wide address-field validate-required woocommerce-invalid woocommerce-invalid-required-field" id="shipping_address_1_field">
                                        <label for="shipping_address_1">Address
                                        
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Street address" name="shipping_address_1" id="shipping_address_1">
                                    </p>

                                    <p class="form-row form-row-wide address-field" id="shipping_address_2_field">
                                        <input type="text" class="input-text form-control" placeholder="Apartment, suite, unit etc. (optional)" name="shipping_address_2" id="shipping_address_2">
                                    </p>

                                    <p class="form-row form-row-wide address-field validate-required" id="billing_city_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="shipping_city">Town / City
                                        
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Town / City" value name="shipping_city" id="shipping_city">
                                    </p>


                                    <p class="form-row form-row-first address-field validate-state" id="shipping_state_field" data-o_class="form-row form-row-first address-field validate-state">
                                        <label for="shipping_country">Country</label>
                                        <select name="shipping_country" id="shipping_country" class="country_to_state" rel="shipping_country">
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

                                    <p class="form-row form-row-last address-field validate-required validate-postcode woocommerce-invalid woocommerce-invalid-required-field" id="shipping_postcode_field" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                        <label for="shipping_postcode">Postal Code
                                          
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Postcode" value name="shipping_postcode" id="shipping_postcode">
                                    </p>

                                    <br/><br/><br/>
                                    <h2 class="heading-underline">billing address (Optional)</h2>
                                    <p class="form-row form-row-wide" id="billing_company_field">
                                        <label for="billing_company">Company</label>
                                        <input type="text" class="input-text form-control" placeholder value name="billing_company" id="billing_company">
                                    </p>
                                    <p class="form-row form-row-wide address-field validate-required" id="billing_block_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="billing_block">Block

                                        </label>
                                        <input size="2" type="text" class="input-text form-control" placeholder="Block" value name="billing_block" id="billing_block">
                                    </p>
                                    <p class="form-row form-row-wide address-field validate-required" id="billing_unit_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="billing_unit">Unit #
                                         
                                        </label>

                                        <input type="text" class="input-text form-control" placeholder="Unit Number" value name="billing_unit" id="billing_unit">
                                    </p>


                                    <p class="form-row form-row-wide address-field validate-required woocommerce-invalid woocommerce-invalid-required-field" id="billing_address_1_field">
                                        <label for="billing_address_1">Address
                                       
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Street address" value name="billing_address_1" id="billing_address_1">
                                    </p>

                                    <p class="form-row form-row-wide address-field" id="billing_address_2_field">
                                        <input type="text" class="input-text form-control" placeholder="Apartment, suite, unit etc. (optional)" value name="billing_address_2" id="billing_address_2">
                                    </p>

                                    <p class="form-row form-row-wide address-field validate-required" id="billing_city_field" data-o_class="form-row form-row-wide address-field validate-required">
                                        <label for="billing_city">Town / City
                                        
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Town / City" value name="billing_city" id="billing_city">
                                    </p>

                                    <p class="form-row form-row-first address-field validate-state" id="billing_state_field" data-o_class="form-row form-row-first address-field validate-state">
                                        <label for="billing_country">Country</label>
                                        <select name="billing_country" id="billing_country" class="country_to_state" rel="billing_country">
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

                                    <p class="form-row form-row-last address-field validate-required validate-postcode woocommerce-invalid woocommerce-invalid-required-field" id="billing_postcode_field" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                        <label for="billing_postcode">Postal Code
                                           
                                        </label>
                                        <input type="text" class="input-text form-control" placeholder="Postal Code" value name="billing_postcode" id="billing_postcode">
                                    </p>

                                </div>
                                <input type="submit" onclick="validate()" class="btn btn-lg btn-green" value="Register" id="submit-message"/>
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

                                        if ($("#first_name").val() == "" || $("#last_name").val() == "" || $("#dob").val() == "" || $("#email").val() == "" || $("#phone").val() == "")
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