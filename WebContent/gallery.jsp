<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ==" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="mystyles.css" rel="stylesheet">
  <title> Housing society management system</title>  
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><img src="images/logo.png"
			height="41" width="41"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
				</li>
				<li class="nav-item active"><a class="nav-link"
					href="gallery.jsp">Gallery</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<section>
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="row mb-4 mt-5">
				<a href="images/g1.jpg" data-toggle="lightbox"
					data-gallery="example-gallery" class="col-sm-4"> <img
					src="images/g1.jpg" class="img-fluid">
				</a> 
				<a href="images/g2.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g2.jpg" class="img-fluid">
				</a>
				<a href="images/g3.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g3.jpg" class="img-fluid">
				</a>
			</div>
			<div class="row mb-4">
				<a href="images/g4.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g4.jpg" class="img-fluid">
				</a> 
				<a href="images/fixback.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/fixback.jpg" class="img-fluid">
				</a>
				<a href="images/g6.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g6.jpg" class="img-fluid">
				</a>
			</div>
			<div class="row mb-4">
				<a href="images/g7.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g7.jpg" class="img-fluid">
				</a> 
				<a href="images/g8.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g8.jpg" class="img-fluid">
				</a>
				<a href="images/g9.jpg"
					data-toggle="lightbox" data-gallery="example-gallery"
					class="col-sm-4"> <img
					src="images/g9.jpg" class="img-fluid">
				</a>
			</div>
		</div>
	</div>
	</section>
	<footer class="footer">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-auto">
				<p>© Copyright 2020 Vilas</p>
			</div>
		</div>
	</div>
	</footer>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.js"></script>
	<script>
		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
	</script>
</body>
</html>