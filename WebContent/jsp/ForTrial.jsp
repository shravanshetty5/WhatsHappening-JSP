<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
//for copy

	
		<!-- <header class="header clearfix"> -->
			<div class="left">
				<div class="logo"><a href="index.html"><img src="../images/logo.png" alt="ExploreCity" class="img-responsive"></a></div> <!-- end .logo -->
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
								<li><a href="blog.html">Blog</a></li>
								<li><a href="blog-post.html">Blog Post</a></li>
								<li><a href="blog-post-video.html">Blog Post Video</a></li>
								<li><a href="blog-post-gallery.html">Blog Post Gallery</a></li>
								<li><a href="blog-post-quote.html">Blog Post Quote</a></li>
							</ul>
						</li>
						<li class="menu-item-has-children">
							<a href="shop.html">Shop</a>
							<ul>
								<li><a href="shop.html">Shop</a></li>
								<li><a href="shop-details.html">Shop Details</a></li>
								<li><a href="shop-cart.html">Shop Cart</a></li>
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
					<div class="avatar"><img src="../images/avatar04.jpg" alt="avatar"></div>
					Angelbi88 . <a href="">Log Out</a>
				</div>
			</div> <!-- end .right -->
		</header> <!-- end .header -->
		<!-- <div class="responsive-menu">
			<a href="" class="responsive-menu-close"><i class="fa fa-times"></i></a>
			<nav class="responsive-nav"></nav> end .responsive-nav
		</div> end .responsive-menu
 -->			
<!-- 		<div class="page-header">
			<div class="container">
				<nav class="menu">
					<ul class="list-unstyled">
						<li><a href="dashboard.html">Dashboard</a></li>
						<li><a href="edit-profile.html">Edit Profile</a></li>
						<li><a href="my-listings.html">My Listings</a></li>
						<li class="active"><a href="add-your-listing.html">Add Listings</a></li>
						<li><a href="my-wishlist.html">My Wishlists</a></li>
					</ul>
				</nav> end .menu
			</div> end .container
		</div> end .page-header
 -->
		<div class="page-title" style="background-image: url('../images/background04.jpg');">
			<div class="inner">
				<h2>Add Listing</h2>
				<p>Aliquam ultrices iaculis auctor.</p>
			</div> <!-- end .inner -->
		</div> <!-- end .page-title -->

		<!-- <div class="section boxed-section light"> -->
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
					<div class="logo"><a href="index.html"><img src="../images/logo-dark.png" alt="ExploreCity" class="img-responsive"></a></div> <!-- end .logo -->
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






</body>
</html>