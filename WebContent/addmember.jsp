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

<style>

body{  
    background:rgba(0,0,0,0.5);
}
.main-reg{
	background:rgba(0,0,0,0.7);
	width:100%;
	max-width: 500px;
	margin:0 auto;
	padding: 20px;
	border-radius: 4px;
	position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}
.main-reg .form-heading{
	font-size: 25px;
	color:#fff;
	font-weight: 600;
	text-align: center;
	padding:5px 0px;
	border-bottom: solid 1px #847E78;
}

.form-reg{
	justify-content: center;
	width: 100%;
	display:flex;
}

.form-group{
	margin: 10px 0px;
	justify-content:center;
}
.form-label{
	width: 100%;
    max-width: 150px;
    min-width: 150px;
	color:#fff;
	padding: 10px 0px;
}
.form-input input{
	padding: 10px 5px;
	border-radius: 4px;
	border:none;
	outline:none;
	width:250px;
}
.form-input1 input{
	padding: 10px 5px;
	border-radius: 4px;
	border:none;
	outline:none;
	width:250px;
	color: coral;
}

.form-input select{
	width: 263px;
   	border-radius: 4px;
    border: none;
    padding: 10px 5px;
}
.form-group textarea{
	height: 40px;
	width:250px;
	resize: none;
	padding:10px 5px;
	border-radius: 4px;
}
.form-group{
	display: flex;
}


.form-reg form{
	margin-top: 20px;
	width:100%;
}
.bottom-footer{
	border-top: 1px solid #847E78;
	text-align: center;
    padding: 10px 0px;
}

button[type="reset"]{
	background:goldenrod;
	border:none;
	border-radius: 4px;
	padding: 8px 15px;
	color: #fff;
	margin-right: 5px;
	cursor: pointer;
}

button[type="submit"]{
	background:rgb(4, 38, 235);
	border:none;
	border-radius: 4px;
	padding:8px 5px;
	color: #fff;
	cursor: pointer;
}
</style>

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
                    <li class="nav-item"><a class="nav-link" href="admindashboard.jsp">Home Page</a></li>
                     
                    <li class="nav-item dropdown">
    					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Member</a>
    						<div class="dropdown-menu">
      							<a class="dropdown-item" href="#">Add Member</a>
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
                    
                </ul>
                <span class="navbar-item">
                    <a role="button" href="login.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
    
    <div class="main-reg">
        <div class="form-heading">Enter the details here</div>

        <div class="form-reg">
            <form>
                <div class="form-group">
                    <div class="form-label">Photo :</div>
                    <div class="form-input1">
                        <input type="file">
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label">First Name :</div>
                    <div class="form-input">
                        <input type="text" name="firstname" id="firstname">
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label">Last Name :</div>
                    <div class="form-input">
                        <input type="text" name="lastname" id="lastname">
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label">Email :</div>
                    <div class="form-input">
                        <input type="text" name="firstname" id="firstname">
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label">Password :</div>
                    <div class="form-input">
                        <input type="Password" name="firstname" id="firstname">
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-label">Block No :</div>
                    <div class="form-input">
                        <select>
                            <option selected="">select Block</option>
                            <option value="a">A</option>
                            <option value="b">B</option>
                            <option value="c">C</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label">Flat No :</div>
                    <div class="form-input">
                        <select>
                            <option selected="">Select flatno</option>
                            <option value="1">101</option>
                            <option value="2">102</option>
                            <option value="3">201</option>
                            <option value="4">202</option>
                            <option value="5">301</option>
                            <option value="6">302</option>
                        </select>
                    </div>
                </div>

                <div class="bottom-footer">
                    <button type="reset">Reset</button>
                    <button type="submit">Submit</button>
                </div>
            </form>

        </div>
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