<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link href="homestyle.css" rel="stylesheet">
	<title> Housing society management system</title>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
<div class="container-fluid">
	<a class="navbar-brand" href="#"><img src="images/logo.png" height="41" width="41"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav nl-auto">
			<li class="nav-item active">
				<a class="nav-link"  href="home.jsp">Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link"  href="about.jsp">About</a>
			</li>
			<li class="nav-item">
				<a class="nav-link"  href="contact.jsp">Contact</a>
			</li>
			<li class="nav-item">
				<a class="nav-link"  href="gallery.jsp">Gallery</a>
			</li>
			<li class="nav-item">
				<a class="nav-link"  href="login.jsp">Login</a>
			</li>
		</ul>
	</div>
</div>
</nav>
<!--- Image Slider -->
<div id="slides" class="carousel slide" data-ride="carousel">
<ul class="carousel-indicators">
	<li data-target="#slides" data-slide-to="0" class="active"></li>
	<li data-target="#slides" data-slide-to="1"></li>
	<li data-target="#slides" data-slide-to="2"></li>
</ul>
<div class="carousel-inner">
	<div class="carousel-item active">
		<img src="images/cr3.jpg">
		<div class="carousel-caption">
			<h1 class="display-2">Housing Society</h1>
			<h3>Welcome to our Website</h3>
		</div>
	</div>
	<div class="carousel-item">
		<img src="images/cr1.jpg">
	</div>
	<div class="carousel-item">
		<img src="images/cr2.jpg">
	</div>
</div>
</div>

<!--- Jumbotron -->
<div class="container-fluid">
<div class="row jumbotron">
	<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
		<p class="lead">A Home Changes Everything We Assure The Co-Operative Society aroud you.
                    Rest Assured citizen of our Society.</p>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
        	<a href="#"><button type="button" class="btn btn-outline-warning btn-lg">VIEW DEMO</button></a>
        </div>
	</div>
</div>
</div>

<!--- Welcome Section -->
<div class="container-fluid padding">
<div class="row welcome text-center">
	<div class="col-12">
		<h1 class="display-4">Built Using.</h1>
	</div><hr class="my-4">
	<div class="col-12">
		<p class="lead">Welcome to our Society.
		Our Society is a co-operative and happy living place.</p>
	</div>
</div>
</div>

<!--- Three Column Section -->
<div class="container-fluid padding">
<div class="row text-center padding">
	<div class="col-xs-12 col-sm-6 col-md-4">
		<i class="fas fa-code"></i>
		<h3>HTML5</h3>
		<p>Best version of HTML</p>
	</div>
	<div class="col-xs-12 col-sm-6 col-md-4">
		<i class="fas fa-bold"></i>
		<h3>BOOTSTRAP</h3>
		<p>Best version of Bootstrap,BS4</p>
	</div>
	<div class="col-sm-12 col-md-4">
		<i class="fab fa-css3"></i>
		<h3>CSS</h3>
		<p>Best version of CSS,CSS3</p>
	</div>
</div>
<hr class="my-4">
</div>

<!--- Two Column Section -->
<div class="container-fluid padding">
<div class="row padding">
	<div class="col-lg-6">
		<h2>There are also... &nbsp;Parks</h2>
		<h4>Melkote park.</h4>
		<p>Dr.GS MELKOTE PARK HYDERABAD is a 5.1 mile (12,000-step) route located near Narayanguda, Hyderabad, India. This route has an elevation gain of about 108.2 ft and is rated as easy. Find the best walking trails near you.</p>
		<br>
		<a href="https://www.mypacer.com/routes/8867/walk-trail-narayanguda-hyderabad-india" target="_blank" class="btn btn-primary">Learn More</a>
	</div>
	<div class="col-lg-6">
		<img src="images/p1.jpg" class="img-fluid">
	</div>
</div>
</div>
<hr class="my-4">
<div class="container-fluid padding">
<div class="row padding">
	<div class="col-lg-6">
		<img src="images/p2.jpg" class="img-fluid">
	</div>
	<div class="col-lg-6">
		<h4>Sundarayya Park</h4>
		<p>Located in Bagh Lingampalli, this park, although not huge, has a great atmosphere for an early morning walk. You will witness a lively bunch of people doing Yoga every morning. Being here will motivate you to start giving attention to your health and fitness. It also has a walking track where you can walk and jog. If you live anywhere between Chikkadpally to Nallakunta areas, this park is in close proximity, so get here for a fresh start to your day.</p>
		<br>
		<a href="https://www.justdial.com/Hyderabad/Sundarayya-Park-Bagh-Lingampally/040PXX40-XX40-170711121344-J2E7_BZDET" target="_blank" class="btn btn-primary">Learn More</a>
	</div>
</div>
</div>
<hr class="my-4">
<!--- Fixed background -->
<figure>
	<div class="fixed-wrap">
		<div id="fixed">
		</div>
	</div>
</figure>

<!--- Emoji Section -->
<button class="fun" data-toggle="collapse" data-target="#emoji">Click for some Fun
</button>
<div id="emoji" class="collapse">
<div class="container-fluid padding">
<div class="row text-center">
	<div class="col-sm-6 col-md-3">
		<img class="gif" src="images/gif/g1.gif">
	</div>
	<div class="col-sm-6 col-md-3">
		<img class="gif" src="images/gif/g3.gif">
	</div>
	<div class="col-sm-6 col-md-3">
		<img class="gif" src="images/gif/g.gif">
	</div>
	<div class="col-sm-6 col-md-3">
		<img class="gif" src="images/gif/g2.gif">
	</div>

</div>
</div>
</div>
 <hr class="my-4">
<!--- Connect -->
<div class="container-fluid padding">
<div class="row text-center padding">
	<div class="col-12">
		<h2>Connect Our App</h2>
	</div>
	<div class="col-12 social padding">
		<a href="#"><i class="fab fa-facebook"></i></a>
		<a href="#"><i class="fab fa-twitter"></i></a>
		<a href="#"><i class="fab fa-google-plus-g"></i></a>
		<a href="#"><i class="fab fa-instagram"></i></a>
		<a href="#"><i class="fab fa-youtube"></i></a>
	</div>
</div>
</div>

<!--- Footer -->
<footer>
<div class="container-fluid padding">
<div class="row text-center">
	<div class="col-12">
	<hr class="light">
		<h5>&copy; Copyright 2020 Vilas</h5>
	</div>
</div>
</div>
</footer>



</body>
</html>