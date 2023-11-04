<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CommuniDrive</title>
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
<link href="css/section-style.css" rel="stylesheet" />
</head>
<body class="page=top">
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
					<a class="nav-link active py-3 px-0 px-lg-3 rounded" href="search.jsp">Search a Ride</a></li>
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
	<section class="page-section mt-5" id="search">
		<div class="container">
			<!-- Search Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Search a ride</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Search Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form method="post" action="search" id="searchForm" data-sb-form-api-token="API_TOKEN">
        				<label for="from">From:</label>
        				<input class="form-control"  type="text" id="from" name="from" required>
        				<label for="to">To:</label>
        				<input class="form-control"  type="text" id="to" name="to" required>
        				<label for="date">Date:</label>
        				<input class="form-control"  type="date" id="date" name="date" required>
        				<label for="seats">Number of Seats:</label>
        				<select class="form-control"  id="seats" name="seats" required>
            				<option value="1">1</option>
            				<option value="2">2</option>
            				<option value="3">3</option>
            				<option value="4">4</option>
        				</select>
        				<input class="btn" type="submit" value="Search Ride">
					</form>
				</div>
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