<%-- 
    Document   : history
    Created on : Mar 8, 2016, 7:28:24 AM
    Author     : Xtravenger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Wine Express | History</title>

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
									<a href="#" data-toggle="modal" data-target="#LogInModal">Log In</a>
									
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
        											<a href="#" data-dismiss="modal" class="forgot">Forgot Password?</a>
        											<button type="button" class="btn btn-primary">Log In</button>
      											</div>
    										</div>
  										</div>
									</div>
								</li>

								<li class="menu-my-acc left hidden-sm hidden-xs">
									<a href="#" data-toggle="modal" data-target="#SignUpModal">Sign Up</a>
									
									<div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  										<div class="modal-dialog modal-sm" role="document">
   											<div class="modal-content">
      											<div class="modal-header">
        											<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        											<h6 class="modal-title" id="myModalLabel">Sign up with WineXpress</h6>
      											</div>
      											<div class="modal-body">
        											<form>
        												<input type="email" class="form-control" id="SignUpEmail" placeholder="Email Address"></input>
        												<br/>
        											</form>		
      											</div>
      											<div class="modal-footer">
        											<button type="button" class="btn btn-primary">Sign up</button>
      											</div>
    										</div>
  										</div>
									</div>
								</li>

								<li class="menu-my-acc left hidden-sm hidden-xs dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown">My Account</a>
									<ul class="dropdown-menu">
										<li><a href="account.html">Edit Profile</a></li>
										<li><a href="history.html">Purchase history</a></li>
										<li><a href="enquiry.html">Send Enquiry</a></li>
										<li><a href="#">Log out</a></li>
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
											<a href="cart.html" class="btn btn-md btn-dark">View Cart</a>
											<a href="checkout.html" class="btn btn-md btn-red mt-10">Proceed to Checkout</a>
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
							<a href="#" class="step-cart">Edit Profile</a>
							<i class="fa fa-angle-right"></i>
							<a href="history.html" class="step-checkout active">My Purchase History</a>
							<i class="fa fa-angle-right"></i>
							<a href="enquiry.html" class="step-order-complete">Enquiry</a>
						</h1>
					</div>
				</div>
			</div>		
	
		<!-- Edit Profile -->
			<div class="container relative">
				<div class="row">
					<div class="col-md-8 woocommerce">
						<form name="edit_profile" class="checkout woocommerce-checkout row">
							<div id="profile_details">
									
									<h6 class="heading-underline">DD/MM/YYYY</h6>
									<div class="cart-table-wrap">
										<table class="shop_table cart table">
											<thead>
												<tr>
													<th class="product-name">Product</th>
													<th class="product-price">Price</th>
													<th class="product-quantity">Quantity</th>
													<th class="product-subtotal">Total</th>
												</tr>
											</thead>
											<tbody>
												<tr class="cart_item">
													<td class="product-name">
														<a href="#">Wine Name</a>
													</td>
													<td class="product-price">
														<span class="amount">$150.00</span>
													</td>
													<td class="product-quantity">
														<span class="amount">1</span>
													</td>
													<td class="product-subtotal">
														<span class="amount">$150.00</span>
													</td>
												</tr>

												<tr class="cart_item">
													<td class="product-name">
														<a href="#">Wine Name</a>
													</td>
													<td class="product-price">
														<span class="amount">$150.00</span>
													</td>
													<td class="product-quantity">
														<span class="amount">1</span>
													</td>
													<td class="product-subtotal">
														<span class="amount">$150.00</span>
													</td>
												</tr>
									
											</tbody>
										</table>
									</div>

									<br/>

									<h6 class="heading-underline">DD/MM/YYYY</h6>
									<div class="cart-table-wrap">
										<table class="shop_table cart table">
											<thead>
												<tr>
													<th class="product-name">Product</th>
													<th class="product-price">Price</th>
													<th class="product-quantity">Quantity</th>
													<th class="product-subtotal">Total</th>
												</tr>
											</thead>
											<tbody>
												<tr class="cart_item">
													<td class="product-name">
														<a href="#">Wine Name</a>
													</td>
													<td class="product-price">
														<span class="amount">$150.00</span>
													</td>
													<td class="product-quantity">
														<span class="amount">1</span>
													</td>
													<td class="product-subtotal">
														<span class="amount">$150.00</span>
													</td>
												</tr>

												<tr class="cart_item">
													<td class="product-name">
														<a href="#">Wine Name</a>
													</td>
													<td class="product-price">
														<span class="amount">$150.00</span>
													</td>
													<td class="product-quantity">
														<span class="amount">1</span>
													</td>
													<td class="product-subtotal">
														<span class="amount">$150.00</span>
													</td>
												</tr>
									
											</tbody>
										</table>
									</div>		
									
							</div>
							<br/>		
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
	  
</body>
</html>
