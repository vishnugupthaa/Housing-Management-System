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
  <link href="mystyles1.css" rel="stylesheet">
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
                    <li class="nav-item"><a class="nav-link" href="userdashboard.jsp">Home Page</a></li>
                    <li class="nav-item active"><a class="nav-link" href="viewbill.jsp">View Bill</a></li>
                    <li class="nav-item"><a class="nav-link" href="billhistory.jsp">Bill History</a></li>
                </ul>
                <span class="navbar-item">
                    <a role="button" class="btn btn-outline-success" href="login.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
	<br><br><br>
	<div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-4">
                    <div class="card">
                        <div class="card-header" align="center"><h3><u>View Bill</u></h3></div>
                        <div class="card-body">
                            <form name="viewbillform" action="bill.jsp" method="post">
                            	
                            	<div class="form-group row">
                                    <div class="col-md-6">
                                       
                                    </div>
                                </div>
                            	
                            	<div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Month : </label>
                                    <div class="col-md-6">
                                        <select name="month" class="form-control">
            								<option selected="">-Select-</option>
                							<option value="January">Jan</option>
               								<option value="Febuary">Feb</option>
                							<option value="March">Mar</option>
                							<option value="April">Apr</option>
                							<option value="May">May</option>
                							<option value="June">Jun</option>
                							<option value="July">Jul</option>
                							<option value="Augest">Aug</option>
                							<option value="Septebmer">Sep</option>
                							<option value="October">Oct</option>
                							<option value="November">Nov</option>
                							<option value="December">Dec</option>
           								</select>
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Year : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="year" required>
                                    </div>
                                </div>
                                
                                <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        	Submit
                                        </button>
                                </div>
                           </form>
                        </div>
                    </div>
            	</div>
        	</div>
    	</div>
	<br><br>
     <footer class="footer fixed-bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <p>� Copyright 2020 Vilas</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>