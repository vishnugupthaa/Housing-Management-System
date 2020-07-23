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
                    <li class="nav-item active"><a class="nav-link" href="#"> Contact</a></li>
                </ul>
                <span class="navbar-text">
                    <a role="button" href="login.jsp">
                        Login
                    </a>
                </span>
            </div>
        </div>
    </nav>
    <header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
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
       <div class="row row-content">
           <div class="col-12">
              <h3 align="center">Contact Us</h3>
              <h5 align="center">Feel free to approch us</h5>
           </div>
            <div class="col-12 col-md-7">
                <form>
                    <div class="form-group row">
                        <label for="firstname" class="col-md-2 col-form-label">Full Name</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Full Name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="emailid" class="col-md-2 col-form-label">Email</label>
                        <div class="col-md-10">
                            <input type="email" class="form-control" id="emailid" name="emailid" placeholder="Email">
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-6 offset-md-2">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" name="approve" id="approve" value="">
                                <label class="form-check-label" for="approve">
                                    <strong>May we contact you?</strong>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="feedback" class="col-md-2 col-form-label">Your Feedback</label>
                        <div class="col-md-10">
                            <textarea class="form-control" id="feedback" name="feedback" rows="8"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-md-2 col-md-10">
                            <button type="submit" class="btn btn-primary">Send Feedback</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col_w300 float_r">
            <div class="col_fw">	
            <h4>Mailing Address</h4>
                <h6> housing.vilas32@gmail.com</h6>
                KMIT,Narayanguda <br>
                besides hotel Taj,Narayanguda<br>
                Hyderabad<br>
                Tel: +91 - 9XXX8XXX9<br>
            <br />            
            <div class="col_fw_last">
                <h4>Our Location</h4>
                <div id="map"><a class="pirobox" href="images/map.png" title="Arigatou gosaimas ohaio gosaimas."><img src="images/map1.png" alt="Image" /></a></div>                
            </div>
        </div>
	    <div class="cleaner"></div>
    </div>
	</div>
    <br>
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