<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="mystyles1.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>

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
                    <li class="nav-item"><a class="nav-link active" href="admindashboard.jsp">Home Page</a></li>
                     
                    <li class="nav-item dropdown">
    					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Member</a>
    						<div class="dropdown-menu">
      							<a class="dropdown-item" href="addmember.jsp">Add Member</a>
      							<a class="dropdown-item" href="#">Edit Member Details</a>
    						</div>
 					</li>
                    <li class="nav-item dropdown">
    					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Bill</a>
    						<div class="dropdown-menu">
      							<a class="dropdown-item" href="#">Generate Bill</a>
     							<a class="dropdown-item" href="#">Calculate Maintainance</a>
    						</div>
 					</li>
 					<li class="nav-item dropdown">
    					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Checker</a>
    						<div class="dropdown-menu">
      							<a class="dropdown-item" href="addchecker.jsp">Add Checker</a>
      							<a class="dropdown-item" href="#">Edit Checker Details</a>
    						</div>
 					</li>
                    
                </ul>
                <ul class="navbar-nav">
                	<span class="navbar-item">
                    	<a role="button" class="btn btn-outline-success" href="login.jsp">
                        	Logout
                    	</a>
                	</span>
                </ul>
            </div>
        </div>
    </nav>
    <br><br>
    <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-5">
                    <div class="card">
                        <div class="card-header" align="center"><h3><u>Enter Details of Checker</u></h3></div>
                        <div class="card-body">
                            <form name="my-form">
                            	<div class="form-group row">
                                    <label for="photo" class="col-md-4 col-form-label text-md-right">Photo : </label>
                                    <div class="col-md-6">
                                        <input type="file" class="form-control" name="cpic">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cname">
                                    </div>
                                </div>
								
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cemail">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cpass">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Phone Number : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cphno">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Address : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="caddress">
                                    </div>
                                </div>
                                    		
                                    <div class="col-md-6 offset-md-4">
                                    	<button type="reset" class="btn btn-warning">
                                        	Reset
                                        </button>
                                        &nbsp;&nbsp;
                                        <button type="submit" class="btn btn-primary">
                                        	Add Checker
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            	</div>
        	</div>
    	</div>

	</main>
    
    <footer class="footer fixed-bottom">
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