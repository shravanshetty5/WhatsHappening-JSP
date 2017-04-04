<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WhatsHappening?</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!-- Font Awesome Icons -->
<link
	href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- PE Icon 7 Stoke -->
<link
	href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/fonts/pe-icon-7-stroke/css/helper.css"
	rel="stylesheet">
<!-- PE Icon Social -->
<link type="text/css"
	href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/pe-icon-social.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/fonts/pe-icon-social/css/helper.css"
	rel="stylesheet">
<!-- Quicksand Dash -->
<link type="text/css"
	href="${pageContext.request.contextPath}/fonts/quicksand-dash/stylesheet.css"
	rel="stylesheet">
<!-- Owl Carousel -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/owl.carousel.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/css/owl.theme.default.css"
	rel="stylesheet">
<!-- Sweet Alert -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/sweetalert.css"
	rel="stylesheet">
<!-- Animate -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/animate.min.css"
	rel="stylesheet">
<!-- Nivo Lightbox -->
<link type="text/css"
	href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/nivo-lightbox.css"
	rel="stylesheet">
<link type="text/css"
	href="${pageContext.request.contextPath}/scripts/Nivo-Lightbox/themes/default/default.css"
	rel="stylesheet">
<!-- NoUISlider -->
<link
	href="${pageContext.request.contextPath}/css/jquery.nouislider.min.css"
	rel="stylesheet">
<!-- Bootstrap Select -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-select.min.css"
	rel="stylesheet">
<!-- Style.css -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->


<script>
	function sendAction(element) {
		window.alert(element.id);
		var divID = element.id;
		//document.getElementByID().value=divID;
		$('#' + divID).find("form").submit();
		//document.getElementById("hiddenID").value = clicked_id;
		//window.alert(clicked_id);
		//	window.alert("alerting"+element.form.id);
		//$("#divID :form").submit();
		//element.form.submit();
	}
</script>
</head>
<body>


	<header class="header fixed clearfix">
		<div class="left">
			<div class="logo">
				<a href=""><img
					src="${pageContext.request.contextPath}/images/WHlogo.png"
					alt="WhatsHappening" class="img-responsive"></a>
			</div>
			<!-- end .logo -->
			<form class="header-search">
				<input type="text" placeholder="I’m searching for ...">
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
					<li class="menu-item-has-children">
						<%-- <!-- div class="avatar"><img src="${pageContext.request.contextPath}/images/avatar04.jpg" alt="avatar"></div> -->
				               <p style="color:black"> Name is ${sessionScope.firstName}</p>				
 --%> <a><img
							src="${pageContext.request.contextPath}/images/avatar04.jpg"
							alt="avatar" width="30px" height="30px">
							${sessionScope.firstName}</a>
						<ul>
							<li><a href="edit-profile.html">Account Settings</a></li>
							<li><a href="MyEvents.jsp">My Listings</a></li>
							<li><a href="Login.jsp">Log out</a></li>
						</ul>

					</li>
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

	<div class="section large transparent dark text-center">

		<div class="inner">

			<div class="container">
				<div class="landing-panda">
					<img src="${pageContext.request.contextPath}/images/panda-1.png">
				</div>
				<div class="event-search-bar">

					<h1>See what's happening around you</h1>
					<form id="event-search-form">
						<div class="row">
							<div class="col-sm-5">
								<div class="form-group">
									<input type="text" placeholder="What are you looking for ?">
								</div>
								<!-- end .form-group -->
							</div>
							<!-- end .col-sm-4 -->
							<div class="col-sm-4">
								<div class="form-group">
									<input type="text" placeholder="Dates"> <i
										class="fa fa-calendar" aria-hidden="true"></i>
								</div>
								<!-- end .form-group -->
							</div>
							<!-- end .col-sm-4 -->
							<button type="submit" class="form-group button">Search
								Events</button>
						</div>
						<!-- end .row -->
					</form>
				</div>
			</div>
			<!-- end .container -->
		</div>
		<!-- end .inner -->
	</div>
	<!-- end .section -->

	<div class="section light">
		<div class="inner">
			<div class="container-fluid">
				<div>
					<div>
						<h2 class="text-center">
							Events Happening Near You<small></small>
						</h2>
						<div class="row event-container">
							<div class="col-md-3 col-sm-6">
								<div class="inner" id="event2" onclick="sendAction(this)">
									<img
										src="${pageContext.request.contextPath}/images/Street_feast_2.jpg"
										class="category-box">
									<form
										action="${pageContext.request.contextPath}/EventsController"
										name="allEventsForm" id="allEventsForm">
										<input type="hidden" value="2" name="hiddenName" id="hiddenID">
										<span class="date">April 20,2017</span> <span class="event">Street
											Feast</span>
									</form>
								</div>
								<!-- end .inner -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<div class="inner" id="event4" onclick="sendAction(this)">
									<img
										src="${pageContext.request.contextPath}/images/Marketing.jpg"
										class="category-box">
									<form
										action="${pageContext.request.contextPath}/EventsController"
										name="allEventsForm1" id="allEventsForm1">
										<input type="hidden" value="4" name="hiddenName" id="hiddenID">
										<span class="date">May 11, 2017</span> <span class="event">Marketing
											Basics</span>
									</form>
								</div>
								<!-- end .inner -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<div class="inner" id="event1" onclick="sendAction(this)">
									<img
										src="${pageContext.request.contextPath}/images/Deloitte_event.jpg"
										class="category-box">
									<!-- div class="directory-item" >-->
									<form
										action="${pageContext.request.contextPath}/EventsController"
										name="allEventsForm2" id="allEventsForm2">
										<input type="hidden" value="1" name="hiddenName" id="hiddenID">
										<span class="date">April 15,2017</span> <span class="event">Deloitte</span>
									</form>
									<!-- </div> -->
								</div>
								<!-- end .inner -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<div class="inner" id="event3" onclick="sendAction(this)">
									<img
										src="${pageContext.request.contextPath}/images/BigEvent.jpg"
										class="category-box">
									<div class="directory-item" id="event4"
										onclick="sendAction(this)">
										<form
											action="${pageContext.request.contextPath}/EventsController"
											name="allEventsForm3" id="allEventsForm3">
											<input type="hidden" value="3" name="hiddenName"
												id="hiddenID"> <span class="date">April
												01,2017</span> <span class="event">Volunteering</span>
										</form>
									</div>
								</div>
								<!-- end .inner -->
								<!-- end .category-box -->
							</div>
							<!-- end .col-md-3 -->
						</div>
						<div class="text-center">
							<a href="" class="button more-margin">More</a>
						</div>
						<!-- end .text-center -->
					</div>
					<div>
						<h2 class="text-center" style="margin-top: 40px">Browse by
							Category</h2>
						<div class="row event-container" style="background-color: #8ae1e1">
							<div class="col-md-3 col-sm-6">
								<a href="" class="category-box"
									style="background-image: url('${pageContext.request.contextPath}/images/panda_drums.jpg');">
									<div class="inner">
										<div class="event-category" style="text-align: center">Social</div>
									</div> <!-- end .inner -->
								</a>
								<!-- end .category-box -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<a href="" class="category-box"
									style="background-image: url('${pageContext.request.contextPath}/images/food.jpg');">
									<div class="inner">
										<div class="event-category" style="text-align: center">Food</div>
									</div> <!-- end .inner -->
								</a>
								<!-- end .category-box -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<a href="" class="category-box"
									style="background-image: url('${pageContext.request.contextPath}/images/Party.jpg');">
									<div class="inner">
										<div class="event-category" style="text-align: center">Adventure</div>
									</div> <!-- end .inner -->
								</a>
								<!-- end .category-box -->
							</div>
							<!-- end .col-md-3 -->
							<div class="col-md-3 col-sm-6">
								<a href="" class="category-box"
									style="background-image: url('${pageContext.request.contextPath}/images/networking.jpg');">
									<div class="inner">
										<div class="event-category" style="text-align: center">Networking</div>
									</div> <!-- end .inner -->
								</a>
								<!-- end .category-box -->
							</div>
							<!-- end .col-md-3 -->
						</div>
					</div>
					<!-- end .container -->
					<div class="text-center">
						<a href="" class="button more-margin">More</a>
					</div>
				</div>
				<!-- end .inner -->
			</div>
			<!-- end .section -->
		</div>
	</div>

	<div class="navbar-inverse" style="margin-top: 100px">
		<div class="row" style="padding-top: 20px">
			<nav class="navbar navbar-inverse border-nav">
				<div class="container ">
					<div class="row ">
						<ul class="nav  col-lg-12" style="text-align: center">

							<li class="col-md-2 "><a href="about.html"
								class="font-footer">About Us</a></li>
							<li class="col-md-2"><a href="services.html"
								class="font-footer">The Team</a></li>
							<li class="col-md-2"><a href="contact.html"
								class="font-footer">Contact Us</a></li>
							<li class="col-md-2"><a href="contact.html"
								class="font-footer">Help</a></li>
							<li class="col-md-4">
								<ul class="col-lg-12">

									<li class="col-md-4 fa fa-facebook-square fa-properties"></li>
									<li class="col-md-4 fa fa-twitter-square fa-properties"></li>
									<li class="col-md-4 fa fa-instagram fa-properties"></li>

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

		<div class="login-wrapper">
			<div class="login">
				<form action="../UserController">
					<div class="form-group">
						<input type="text" placeholder="Email Address*" name="username">
					</div>
					<!-- end .form-group -->
					<div class="form-group">
						<input type="password" placeholder="Password *" name="password">
					</div>
					<!-- end .form-group -->
					<div class="clearfix" style="margin: 0px auto 30px;">
						<div class="checkbox">
							<label> <input type="checkbox"> Remember me
							</label>
						</div>
						<a href="" class="lost-password">Lost your password ?</a>
					</div>
					<!-- end .clearfix -->
					<div class="button-wrapper button-align button-left">
						<button type="submit" class="button">Cancel</button>
					</div>
					<div class="button-wrapper button-align button-right">
						<button type="submit" class="button button-green">Sign In</button>
					</div>
					<div class="text-center">
						<p>
							Don't have an account ? <a href="" class="signup-open">Sign
								up</a>
						</p>
					</div>
					<input type="hidden" value="HiddenLogin" name="HiddenForm" />
				</form>
			</div>
		</div>
		<!-- end .login -->
	</div>
	<!-- end .login-wrapper -->

	<div class="signup-wrapper">
		<div class="signup">
			<form action="../UserController">
				<div class="form-group button-align button-left button-width"
					style="z-index: 1">
					<input type="text" placeholder="First Name" name="firstName"
						value="<c:out value="${user.firstName}"/>">
				</div>
				<!-- end .form-group -->
				<div class="form-group button-align button-right button-width"
					style="z-index: 1">
					<input type="text" placeholder="Last Name" name="lastName"
						value="<c:out value="${user.lastName}"/>">
				</div>
				<!-- end .form-group -->
				<div class="form-group" style="z-index: 0">
					<input type="email" placeholder="Email Address" name="email"
						value="<c:out value="${user.email}"/>">
				</div>
				<!-- end .form-group -->
				<div class="form-group button-align button-left button-width">
					<input type="password" placeholder="Password *" name="password"
						value="<c:out value="${user.password}"/>">
				</div>
				<!-- end .form-group -->
				<div class="form-group button-align button-right button-width">
					<input type="text" placeholder="Confirm Password*">
				</div>
				<div class="button-wrapper button-align button-left">
					<button type="submit" class="button">Cancel</button>
				</div>
				<div class="button-wrapper button-align button-right">
					<button type="submit" class="button button-green">Sign Up</button>
				</div>
				<div class="text-center">
					<p>
						Already have an account? <a href="" class="login-open">Log in</a>
					</p>
				</div>
				<input type="hidden" value="HiddenSignUp" name="HiddenForm" />
			</form>
		</div>
		<!-- end .signup -->
	</div>
	<!-- end .signup-wrapper -->

	<script src="${pageContext.request.contextPath}/js/jquery-3.1.0.min.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- google maps -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAy-PboZ3O_A25CcJ9eoiSrKokTnWyAmt8"></script>
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
	session

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