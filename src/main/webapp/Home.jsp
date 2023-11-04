<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Car Pool</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Welcome, <%=session.getAttribute("name") %></a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="search.jsp">Search a Ride</a></li>
					<li class="nav-item mx-0 mx-lg-1">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="offer.jsp">Offer a ride</a></li>
					<li class="nav-item mx-0 mx-lg-1">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="history.jsp">History</a></li>
					<li class="nav-item mx-0 mx-lg-1">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="settings.jsp">Settings</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger">
					<a class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/avatar.jpg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To CommuniDrive</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Here we believe in the power of sharing rides to transform transportation. Our mission is to create a sustainable and interconnected community by facilitating convenient, cost-effective, and eco-friendly travel options for everyone.</p>
		</div>
	</header>

	<section class="page-section">
		<div class="container">
			<!-- Search Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Search a Ride</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="section row">
    			<p class="lead">Want a Ride? Here you go!</p>
    			<p class="lead">You can select the destination and time and find available companions for the journey.</p>
    			<p class="lead">Why wait? <a href="search.jsp" class="find-btn">Let's find a ride for you.</a></p>
			</div>

		</div>
	</section>

	<section class="page-section">
		<div class="container">
			<!-- Offer Section Heading-->
			<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Offer a Ride</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="section row">
    			<p class="lead">Want a Companion? Here you go!</p>
    			<p class="lead">You can add the destination and time and find available companions for the journey.</p>
    			<p class="lead">Why wait? <a href="search.jsp" class="find-btn">Let's find a companion for you.</a></p>
			</div>
		</div>
	</section>
	
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-6 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">CommuniDrive </h4>
					<div class="mb-5 mb-lg-0">
						<h6 class="text-uppercase mb-4">Connect With Us</h6>
						<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="footer-list">
    					<li><a href="index.jsp#about">About Us</a></li>
    					<li><a href="index.jsp#contact">Contact Us</a></li>
    					<li><a href="search.jsp">Search A Ride</a></li>
    					<li><a href="offer.jsp">Offer A Ride</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
