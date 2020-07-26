<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="mystyles.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title> Housing society management system</title>
</head>

<body>
	<nav class="navbar navbar-dark navbar-expand-sm fixed-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="images/logo.png" height="30" width="41"></img></a>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp"> Contact</a></li>
                </ul>
                <span class="navbar-item  active">
                    <a role="button" class="btn btn-outline-success" href="#">
                        Login
                    </a>
                </span>
            </div>
        </div>
    </nav>
    
    <header class="jumbotron">
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
    <div class="loginbox" align="center">
    <form class="form-signin" action="login.do" method="post">
      <img class="mb-4" src="images/logo1.png" alt="" width="150" height="100">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="username" class="sr-only">User Name</label>
      <input type="text" name="username" class="form-control" placeholder="Username" required autofocus><br>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"><span class="badge badge-pill badge-light"> Remember me</span>
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
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