<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  
<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Explore City - Directory Listing HTML Template</title>

		<!-- Bootstrap -->
		
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!-- Font Awesome Icons -->
		<link href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!-- PE Icon 7 Stoke -->
		<link href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/helper.css" rel="stylesheet">
		<!-- PE Icon Social -->
		<link type="text/css" href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/pe-icon-social.css" rel="stylesheet">
		<link type="text/css" href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/helper.css" rel="stylesheet">
		<!-- Quicksand Dash -->
		<link type="text/css" href="${pageContext.request.contextPath}/fonts/quicksand-dash/stylesheet.css" rel="stylesheet">
		<!-- Owl Carousel -->
		<link type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.css" rel="stylesheet">
		<link type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.default.css" rel="stylesheet">
		<!-- Sweet Alert -->
		<link type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css" rel="stylesheet">
		<!-- Animate -->
		<link type="text/css" href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
		<!-- Nivo Lightbox -->
		<link type="text/css" href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/nivo-lightbox.css" rel="stylesheet">
		<link type="text/css" href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/themes/default/default.css" rel="stylesheet">
		<!-- NoUISlider -->
		<link href="${pageContext.request.contextPath}/css/jquery.nouislider.min.css" rel="stylesheet">
		<!-- Bootstrap Select -->
		<link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-select.min.css" rel="stylesheet">
		<!-- Style.css -->
		<link type="text/css" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>
	<body>
		
		<header class="header clearfix">
			<div class="left">
				<div class="logo"><a href="../html/index.html"><img src="images/logo.png" alt="ExploreCity" class="img-responsive"></a></div> <!-- end .logo -->
				<form class="header-search">
					<input type="text" placeholder="I’m searching for ...">
					<button type="submit"><i class="pe-7s-search"></i></button>
				</form>
			</div> <!-- end .left -->
			<div class="navigation clearfix">
				<nav class="main-nav">
					<ul class="list-unstyled">
						<li class="menu-item-has-children">
							<a href="list.html">Explore</a>
							<ul>
								<li><a href="list.html">All Listings</a></li>
								<li class="menu-item-has-children">
									<a href="list.html">Food & Drink<i class="pe-7s-right-arrow"></i></a>
									<ul>
										<li><a href="list.html">Cafe’</a></li>
										<li><a href="list.html">Restaurant</a></li>
										<li><a href="list.html">Pizza Place</a></li>
									</ul>
								</li>
								<li><a href="list.html">Entertainment</a></li>
								<li><a href="list.html">Nightlife</a></li>
							</ul>
						</li>
						<li class="menu-item-has-children">
							<a href="index.html">Pages</a>
							<ul>
								<li><a href="how-it-works.html">How It Works</a></li>
								<li><a href="add-listing.html">Add Listing</a></li>
								<li><a href="add-your-listing.html">Add Your Listing</a></li>
								<li><a href="list.html">List</a></li>
								<li><a href="list-detail.html">List Detail</a></li>
								<li class="menu-item-has-children">
									<a href="dashboard.html">Dashboard<i class="pe-7s-right-arrow"></i></a>
									<ul>
										<li><a href="dashboard.html">Dashboard</a></li>
										<li><a href="my-listings.html">My Listings</a></li>
										<li><a href="my-wishlist.html">My Wishlist</a></li>
										<li><a href="edit-profile.html">Edit Profile</a></li>
									</ul>
								</li>
								<li><a href="maintenance.html">Maintenance</a></li>
								<li><a href="coming-soon.html">Coming Soon</a></li>
								<li><a href="404.html">404</a></li>
							</ul>
						</li>
						<li class="menu-item-has-children">
							<a href="blog.html">Blog</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/html/blog.html">Blog</a></li>
								<li><a href="${pageContext.request.contextPath}/html/blog-post.html">Blog Post</a></li>
								<li><a href="${pageContext.request.contextPath}/html/blog-post-video.html">Blog Post Video</a></li>
								<li><a href="${pageContext.request.contextPath}/html/blog-post-gallery.html">Blog Post Gallery</a></li>
								<li><a href="${pageContext.request.contextPath}/html/blog-post-quote.html">Blog Post Quote</a></li>
							</ul>
						</li>
						<li class="menu-item-has-children">
							<a href="${pageContext.request.contextPath}/html/shop.html">Shop</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/html/shop.html">Shop</a></li>
								<li><a href="${pageContext.request.contextPath}/html/shop-details.html">Shop Details</a></li>
								<li><a href="${pageContext.request.contextPath}/html/shop-cart.html">Shop Cart</a></li>
							</ul>
						</li>
					</ul>
				</nav> <!-- end .main-nav -->
				<a href="" class="responsive-menu-open"><i class="fa fa-bars"></i></a>
				<a href="" class="cart-button">
					<i class="icon-shopping-basket"></i>
					<span>0</span>
				</a>
			</div> <!-- end .navigation -->
			<div class="right">
				<div class="user">
					<div class="avatar"><img src="${pageContext.request.contextPath}/images/avatar04.jpg" alt="avatar"></div>
				                  ${sessionScope.firstName}</p>
				 <a href="">Log Out</a>
				</div>
			</div> <!-- end .right -->
		</header> <!-- end .header -->
		<div class="responsive-menu">
			<a href="" class="responsive-menu-close"><i class="fa fa-times"></i></a>
			<nav class="responsive-nav"></nav> <!-- end .responsive-nav -->
		</div> <!-- end .responsive-menu -->
			
		<div class="page-header">
			<div class="container">
				<nav class="menu">
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/html/dashboard.html">Dashboard</a></li>
						<li><a href="${pageContext.request.contextPath}/html/edit-profile.html">Edit Profile</a></li>
						<li><a href="${pageContext.request.contextPath}/html/my-listings.html">My Listings</a></li>
						<li class="active"><a href="${pageContext.request.contextPath}/html/add-your-listing.html">Add Listings</a></li>
						<li><a href="${pageContext.request.contextPath}/html/my-wishlist.html">My Wishlists</a></li>
					</ul>
				</nav> <!-- end .menu -->
			</div> <!-- end .container -->
		</div> <!-- end .page-header -->

		<div class="page-title" style="background-image: url('${pageContext.request.contextPath}/images/background04.jpg');">
			<div class="inner">
				<h2>Add Listing</h2>
				<p>Aliquam ultrices iaculis auctor.</p>
			</div> <!-- end .inner -->
		</div> <!-- end .page-title -->

		<div class="section boxed-section light">
			<div class="inner">
				<div class="container">
					<div class="box">
						<form class="add-listing-form light-inputs">
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Listing Name :</span>
									<input type="text" placeholder="e.g Your listing name here ...">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Tagline (optional) :</span>
									<input type="text" placeholder="e.g Vitae Labortis Restaurant">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">              
							    <textarea placeholder="Description" rows="4"></textarea>
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Listing category :</span>
									<select class="selectpicker" data-live-search="true">	    	
										<option value="" disabled selected>Choose one or more categories</option>
										<option value="1">Option one</option>
										<option value="2">Option two</option>
										<option value="3">Option three</option>
										<option value="4">Option four</option>
									</select>
								</div> <!-- end .input-group -->
								<span class="help-block">Visitors can filter their search by the categories and amenities they want - so make sure you choose them wisely and include all the relevant ones</span>
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Listing tags (optional) :</span>
									<select class="selectpicker" data-live-search="true">	    	
										<option value="" disabled selected>Add tags or amenties</option>
										<option value="1">Option one</option>
										<option value="2">Option two</option>
										<option value="3">Option three</option>
										<option value="4">Option four</option>
									</select>
								</div> <!-- end .input-group -->
								<span class="help-block">Visitors can filter their search by the amenities too, so make sure you include all the relevant ones.</span>
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Listing Region :</span>
									<select class="selectpicker" data-live-search="true">	    	
										<option value="" disabled selected>City of USA</option>
										<option value="1">Option one</option>
										<option value="2">Option two</option>
										<option value="3">Option three</option>
										<option value="4">Option four</option>
									</select>
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Location (optional) :</span>
									<input type="text" placeholder="e.g 79 Leonard St , NewYork">
								</div> <!-- end .input-group -->
								<span class="help-block">Leave this blank if the location is not important.</span>
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">PhoneNumber (optional) :</span>
									<input type="text" placeholder="e.g +84 0939793979">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Website (optional) :</span>
									<input type="text" placeholder="e.g themeforest.net/user/wecookcode/portfolio">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Facebook username (optional) :</span>
									<input type="text" placeholder="e.g yournamecompany">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Twitter username (optional) :</span>
									<input type="text" placeholder="e.g @yournamecompany">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon">Googleplus username (optional) :</span>
									<input type="text" placeholder="e.g yournamecompany">
								</div> <!-- end .input-group -->
							</div> <!-- end .form-group -->
							<div class="form-group add_photo">
								<button type="button" class="button">Add Photo for Gallery</button>
								<span>4 Photos ( 570px × 400px)</span>
							</div> <!-- end .text-left .add_photo -->
							<div class="form-group photo_thumbnails">
								<div class="photo_preview_box"></div>
								<div class="photo_preview_box"></div>
								<div class="photo_preview_box"></div>
								<div class="photo_preview_box"></div>
							</div> <!-- end .form-group .photo_thumbnails -->
							<div class="form-group listing-hours">
								<div class="row">
									<div class="col-sm-4">
										<div class="input-group">
											<span class="input-group-addon">Days :</span>
											<input type="text" placeholder="e.g Monday - Sunday">
										</div> <!-- end .input-group -->
									</div> <!-- end .col-sm-4 -->
									<div class="col-sm-4">
										<div class="input-group">
											<span class="input-group-addon">Hours :</span>
											<input type="text" placeholder="e.g 07:00 am – 22:00 pm">
										</div> <!-- end .input-group -->
									</div> <!-- end .col-sm-4 -->
									<div class="col-sm-4">
										<button type="button" class="button">Add Hours of Operation</button>
									</div> <!-- end .col-sm-4 -->
								</div> <!-- end .row -->
								<div class="row">
									<div class="col-sm-4">
										<div class="hours">Monday - Sunday</div>
									</div> <!-- end .col-sm-4 -->
									<div class="col-sm-4">
										<div class="hours">07:00 am – 22:00 pm</div>
									</div> <!-- end .col-sm-4 -->
									<div class="col-sm-4">
										<a href="" class="remove"><i class="pe-7s-close-circle"></i></a>
									</div> <!-- end .col-sm-4 -->
								</div> <!-- end .row -->
							</div> <!-- end .form-group -->
							<div class="submit"><button type="submit" class="button">Add your Listing</button></div>
						</form>
					</div> <!-- end .box -->
				</div> <!-- end .container -->
			</div> <!-- end .inner -->
		</div> <!-- end .section -->

		<footer class="footer">
			<div class="top">
				<div class="left">
					<div class="logo"><a href="${pageContext.request.contextPath}/html/index.html"><img src="images/logo-dark.png" alt="ExploreCity" class="img-responsive"></a></div> <!-- end .logo -->
				</div> <!-- end .left -->
				<div class="social-icons">
					<a href=""><i class="pe-so-facebook"></i></a>
					<a href=""><i class="pe-so-twitter"></i></a>
					<a href=""><i class="pe-so-vimeo"></i></a>
					<a href=""><i class="pe-so-tripadvisor"></i></a>
					<a href=""><i class="pe-so-instagram"></i></a>
					<a href=""><i class="pe-so-google-plus"></i></a>
				</div>
				<div class="right">Proudly Made in Viet Nam<a href="">+84 968796789</a></div> <!-- end .left -->
			</div> <!-- end .top -->
			<div class="bottom">Copyright &copy; 2016. All Rights Reserved By <a href="">Wecookcode</a></div>
		</footer> <!-- end .footer -->

		<div class="login-wrapper">
			<div class="login">
				<form>
					<div class="form-group">
						<input type="text" placeholder="Username or Email Address *" name="username">
					</div> <!-- end .form-group -->
					<div class="form-group">
						<input type="text" placeholder="Password *" name="password">
					</div> <!-- end .form-group -->
					<div class="clearfix">
						<div class="checkbox">
							<label>
								<input type="checkbox"> Remember me
							</label>
						</div>
						<a href="" class="lost-password">Lost your password ?</a>
					</div> <!-- end .clearfix -->
					<div class="button-wrapper"><button type="submit" class="button">Login</button></div>
					<div class="text-center">
						<p>Don't have an account ? <a href="" class="signup-open">Sign up</a></p>
						<div class="social">
							<p>Connect with Social Networks</p>
							<a href=""><img src="${pageContext.request.contextPath}/images/facebook.png" alt="facebook"></a>
							<a href=""><img src="${pageContext.request.contextPath}/images/twitter.png" alt="twitter"></a>
							<a href=""><img src="${pageContext.request.contextPath}/images/google-plus.png" alt="google plus"></a>
						</div> <!-- end .social -->
					</div>
				</form>
			</div> <!-- end .login -->
		</div> <!-- end .login-wrapper -->

		<div class="signup-wrapper">
			<div class="signup">
				<form>
					<div class="form-group">
						<input type="text" placeholder="Username">
					</div> <!-- end .form-group -->
					<div class="form-group">
						<input type="email" placeholder="Email Address">
					</div> <!-- end .form-group -->
					<div class="text-center">
						<p>A password will be e-mailed to you.</p>
					</div> <!-- end .text-center -->
					<div class="button-wrapper"><button type="submit" class="button">Register</button></div>
					<div class="text-center">
						<p>Already have an account? <a href="" class="login-open">Log in</a></p>
						<div class="social">
							<p>Connect with Social Networks</p>
							<a href=""><img src="${pageContext.request.contextPath}/images/facebook.png" alt="facebook"></a>
							<a href=""><img src="${pageContext.request.contextPath}/images/twitter.png" alt="twitter"></a>
							<a href=""><img src="${pageContext.request.contextPath}/images/google-plus.png" alt="google plus"></a>
						</div> <!-- end .social -->
					</div>
				</form>
			</div> <!-- end .signup -->
		</div> <!-- end .signup-wrapper -->

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
		<!-- Bootstrap -->
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<!-- google maps -->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAy-PboZ3O_A25CcJ9eoiSrKokTnWyAmt8"></script>
		<!-- rich marker -->
		<script src="${pageContext.request.contextPath}/js/richmarker.js"></script>
		<!-- Owl Carousel -->
		<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
		<!-- Countdown -->
		<script src="${pageContext.request.contextPath}/js/countdown.js"></script>
		<!-- Sweet Alert -->
		<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
		<!-- Nivo Lightbox -->
		<script src="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/nivo-lightbox.min.js"></script>
		<!-- NoUISlider -->
		<script src="${pageContext.request.contextPath}/js/jquery.nouislider.all.min.js"></script>
		<!-- Bootstrap Select -->
		<script src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script>
		<!-- Nice Scroll -->
		<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
		<!-- Scripts.js -->
		<script src="${pageContext.request.contextPath}/js/scripts.js"></script>

	</body>
</html>