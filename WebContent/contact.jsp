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
			<li class="nav-item active">
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
    <header class="jumbotron" style="background:#3174a6;">
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
    <br>
    <div align="center">
	
	<center><h2>Our Team</h2></center>
		<table width="60%" border="3">
			<tr>
				<td height="50" width="400" >
				<div style="padding: 20px" align="center">
				<img alt="vishnu" height="160px" width="150px" src="images/jerry.jpg"/><br><br>
				<b>Name : Vishnugupthaa</b><br>
				<b>Role : Analysis and Coding</b>
				</div>
				</td>
				<!-- <td height="50" width="400" >
				<div style="padding: 20px;" align="center">
				<img alt="arya" height="160px" width="150px" src="images/tom.jpg"/><br><br>
				<b>Name : Aarya</b><br>
				<b>Role : DBA</b>
				</div>
				</td> -->
			</tr>			
		</table>
	</div>
    <br>
       <div class="row row-content">
           <div class="col-12">
              <h3 align="center">Contact Us</h3>
              <h5 align="center">Feel free to approch us</h5>
           </div>
            <div class="col-12 col-md-7">
                <form style="border: 40% solid ;padding:0% 10% 0% 23%;align:center">
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
                <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3807.303988772609!2d78.48784931470337!3d17.397193188072666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb99c44533324f%3A0x8aa5456a7d836bb5!2sKeshav%20Memorial%20Institute%20Of%20Technology!5e0!3m2!1sen!2sin!4v1596111771862!5m2!1sen!2sin" width="300px" height="220px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>                
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