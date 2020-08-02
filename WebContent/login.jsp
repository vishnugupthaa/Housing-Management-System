<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
	<a class="navbar-brand" href="#"><img src="images/logo.png" height="41" width="41"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
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
			<li class="nav-item active">
				<a class="nav-link"  href="login.jsp">Login</a>
			</li>
		</ul>
	</div>
</div>
</nav>
    <header class="jumbotron" style="background:#3174a6;">
        <div class="container">
            <div class="row row-header">
                <div class="col-10 col-sm-6">
                    <h1>Housing Society</h1>
                    <p>A Home Changes Everything We Assure The Co Operative Society aroud you.
                    Rest Assured citizen of our Society</p>
                </div>
                <div class="col-10 col-sm-2 align-self-center">
						<img src="images/logo.png" class="img-fluid">
                </div>
            </div>
        </div>
    </header>
	<div class="login-form" align="center">
		<form action="login.do" method="post">
			<img class="mb-4" src="images/logo1.png" width="150" height="100">
			<h2>Please Sign In</h2>
			<div class="form-group">
				<input type="text" class="form-control" name="username" placeholder="Username" required autofocus>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="password" placeholder="Password" required>
			</div>
			<div class="clearfix">
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Log in</button>
				</div>

			</div>
		</form>
	</div>
	<footer class="footer">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <p>© Copyright 2020 Vilas</p>
                </div>
            </div>
        </div>
    </footer>
    
</body>
</html>