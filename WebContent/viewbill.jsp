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
                    <li class="nav-item"><a class="nav-link" href="userdashboard.jsp">Home Page</a></li>
                    <li class="nav-item active"><a class="nav-link" href="#">View Bill</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Bill History</a></li>
                </ul>
                <span class="navbar-item">
                    <a role="button" class="btn btn-outline-success" href="login.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
    
    <div class="container" align="center">
    <form method="post" action="bill.jsp">
    	<br><br><br><br><br>
    	<h3><u>View Bill</u></h3>
    	<br><br>
    	
    	<label for="month">Month : </label>
        	<select name="month">
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
        <br>
    	Year : <input type="text" name="year">
    	<br><br>
    	<button class="btn btn-primary"> Submit </button>
    </form>

    </div>
    
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