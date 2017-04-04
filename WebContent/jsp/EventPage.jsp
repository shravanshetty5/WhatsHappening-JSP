<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Event Page</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome Icons -->
<link
	href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- PE Icon 7 Stoke -->
<link
	href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="./fonts/pe-icon-7-stroke/css/helper.css" rel="stylesheet">
<!-- PE Icon Social -->
<link
	href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/pe-icon-social.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/helper.css"
	rel="stylesheet">
<!-- Quicksand Dash -->
<link
	href="${pageContext.request.contextPath}/fonts/quicksand-dash/stylesheet.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link href="${pageContext.request.contextPath}/css/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/owl.theme.default.css"
	rel="stylesheet">
<!-- Sweet Alert -->
<link href="${pageContext.request.contextPath}/css/sweetalert.css"
	rel="stylesheet">
<!-- Animate -->
<link href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<!-- Nivo Lightbox -->
<link
	href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/nivo-lightbox.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/themes/default/default.css"
	rel="stylesheet">
<!-- NoUISlider -->
<link
	href="${pageContext.request.contextPath}/css/jquery.nouislider.min.css"
	rel="stylesheet">
<!-- Bootstrap Select -->
<link
	href="${pageContext.request.contextPath}/css/bootstrap-select.min.css"
	rel="stylesheet">
<!-- Style.css -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<script type="text/javascript">
	function sendAction(element) {
		window.Alert(element.id);
		var divID = element.id;
		$('#' + divID).find("form").submit();
	}
</script>

</head>
<body>

	<header class="header fixed clearfix">
		<div class="left">
			<div class="logo">
				<a href="Login.jsp"><img
					src="${pageContext.request.contextPath}/images/WHlogo.png"
					alt="WhatsHappening" class="img-responsive"></a>
			</div>
			<!-- end .logo -->
			<form class="header-search">
				<input type="text" placeholder="Iâ€™m searching for ...">
				<button type="submit">
					<i class="pe-7s-search"></i>
				</button>
			</form>
		</div>
		<!-- end .left -->
		<div class="navigation clearfix">
			<nav class="main-nav">
				<ul class="list-unstyled">
					<li class="menu-item-has-children"><a href="Login.jsp">Home</a>
					</li>
					<li class="menu-item-has-children"><a href="shop.html">About
							Us</a></li>
					<li class="menu-item-has-children"><a href=""
						class="login-open">Sign In/Sign Up</a></li>
					<li class="menu-item-has-children"><a href="" class="border">Create
							Event</a></li>
				</ul>
			</nav>
			<!-- end .main-nav -->
			<a href="" class="responsive-menu-open"><i class="fa fa-bars"></i></a>
		</div>
		<!-- end .navigation -->
	</header>
	<!-- end .header -->
	<div class="responsive-menu">
		<a href="" class="responsive-menu-close"><i class="fa fa-times"></i></a>
		<nav class="responsive-nav"></nav>
		<!-- end .responsive-nav -->
	</div>
	<!-- end .responsive-menu -->

	<div class="section transparent dark">
		<div class="inner" id="event-container">
			<div class="container">
				<div class="row">
					<div class="row event-body">
						<div id="event-Heading">
							<h2 id="event-Date">
								<c:out value="${eventClicked.date}" />
							</h2>
							<h2 id="event-Name">
								<c:out value="${eventClicked.name}" />
							</h2>

						</div>
						<div class="col-md-4 ">
							<div id="event-fig-container">
								<img src="<c:out value="${eventClicked.image_location}"/>"
									alt="Event name" class="img-responsive">
							</div>
						</div>
						<!-- end .col-md-4 -->
						<div class="col-md-8">
							<div id="directory-event" class="directory-single-info">
								<p>
									Where:
									<c:out value="${eventClicked.location}" />
								</p>
								<p>
									Category:
									<c:out value="${eventClicked.category}" />
								</p>
								<p>
									Date:
									<c:out value="${eventClicked.date}" />
								<p>
								<p>
									Time:
									<c:out value="${eventClicked.time}" />
								<p>
								<p>
									<c:out value="${eventClicked.description}" />
								</p>
								<div id="event-register" class="clearfix">
									<button type="submit" class="button">Register</button>
								</div>
							</div>
							<!-- end .directory-single-info -->
						</div>
						<!-- end .col-md-8 -->
					</div>
					<!-- end event-body -->
				</div>
				<!-- end .row -->
			</div>
			<!-- end .container -->
		</div>
		<!-- end .inner -->
	</div>
	<!-- end .section transparent dark -->
	<!-- end .directory-single-slider-wrapper -->

	<div class="navbar-inverse">
		<div class="row" style="padding-top: 20px">
			<nav class="navbar navbar-inverse border-nav">
				<div class="container ">
					<div class="row ">
						<ul class="nav  col-lg-12">

							<li class="col-md-2"><a href="about.html"
								class="font-footer">About Us</a></li>
							<li class="col-md-2"><a href="services.html"
								class="font-footer">The Team</a></li>
							<li class="col-md-2"><a href="contact.html"
								class="font-footer">Contact Us</a></li>
							<li class="col-md-2"><a href="contact.html"
								class="font-footer">Help</a></li>
							<li class="col-md-4">
								<ul>
									<div class="row">
										<li class="col-md-4 fa fa-facebook-square fa-properties"></li>
										<li class="col-md-4 fa fa-twitter-square fa-properties"></li>
										<li class="col-md-4 fa fa-instagram fa-properties"></li>
									</div>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- /.container -->
			</nav>
			<div class="text-center font-footer">
				<span class="fa fa-copyright"></span> 2017 Whatshappening
			</div>
		</div>
		<!-- end .footer -->
	</div>

	<div class="login-wrapper">
		<div class="login">
			<form>
				<div class="form-group">
					<input type="text" placeholder="Username or Email Address *">
				</div>
				<!-- end .form-group -->
				<div class="form-group">
					<input type="text" placeholder="Password *">
				</div>
				<!-- end .form-group -->
				<div class="clearfix">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
					<a href="" class="lost-password">Lost your password ?</a>
				</div>
				<!-- end .clearfix -->
				<div class="button-wrapper">
					<button type="submit" class="button">Login</button>
				</div>
				<div class="text-center">
					<p>
						Don't have an account ? <a href="" class="signup-open">Sign up</a>
					</p>
					<div class="social">
						<p>Connect with Social Networks</p>
						<a href=""><img
							src="${pageContext.request.contextPath}/images/facebook.png"
							alt="facebook"></a> <a href=""><img
							src="${pageContext.request.contextPath}/images/twitter.png"
							alt="twitter"></a> <a href=""><img
							src="${pageContext.request.contextPath}/images/google-plus.png"
							alt="google plus"></a>
					</div>
					<!-- end .social -->
				</div>
			</form>
		</div>
		<!-- end .login -->
	</div>
	<!-- end .login-wrapper -->

	<div class="signup-wrapper">
		<div class="signup">
			<form>
				<div class="form-group">
					<input type="text" placeholder="Username">
				</div>
				<!-- end .form-group -->
				<div class="form-group">
					<input type="email" placeholder="Email Address">
				</div>
				<!-- end .form-group -->
				<div class="text-center">
					<p>A password will be e-mailed to you.</p>
				</div>
				<!-- end .text-center -->
				<div class="button-wrapper">
					<button type="submit" class="button">Register</button>
				</div>
				<div class="text-center">
					<p>
						Already have an account? <a href="" class="login-open">Log in</a>
					</p>
					<div class="social">
						<p>Connect with Social Networks</p>
						<a href=""><img
							src="${pageContext.request.contextPath}/images/facebook.png"
							alt="facebook"></a> <a href=""><img
							src="${pageContext.request.contextPath}/images/twitter.png"
							alt="twitter"></a> <a href=""><img
							src="${pageContext.request.contextPath}/images/google-plus.png"
							alt="google plus"></a>
					</div>
					<!-- end .social -->
				</div>
			</form>
		</div>
		<!-- end .signup -->
	</div>
	<!-- end .signup-wrapper -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- google maps -->
	<script
		src="${pageContext.request.contextPath}/https://maps.googleapis.com/maps/api/js?key=AIzaSyAy-PboZ3O_A25CcJ9eoiSrKokTnWyAmt8"></script>
	<!-- rich marker -->
	<script src="${pageContext.request.contextPath}/js/richmarker.js"></script>
	<!-- Owl Carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Countdown -->
	<script src="${pageContext.request.contextPath}/js/countdown.js"></script>
	<!-- Sweet Alert -->
	<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
	<!-- Nivo Lightbox -->
	<script
		src="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/nivo-lightbox.min.js"></script>
	<!-- NoUISlider -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.nouislider.all.min.js"></script>
	<!-- Bootstrap Select -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script>
	<!-- Nice Scroll -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
	<!-- Scripts.js -->
	<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
</body>
</html>