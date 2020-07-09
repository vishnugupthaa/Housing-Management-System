<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title> Home page </title>
</head>
<style>
body {
  margin: 0;
  padding: 0;
  background-color: purple;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 0px solid #9C9C9C;
  background-color: rgba(0,0,0,0.2);
}

#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
  
}
#cont {
  margin-top: -85px;
}
.jumbotron{
 background-image: url("images/hs1.jpg");
 background-size: cover;
 background-repeat: no-repeat;
}
</style>
<body class="jumbotron">
	<div class="text-primary text-danger">
		<h1 align="center"><span class="badge badge-success">Housing Society Management</span></h1>
	</div>
	<div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-white bg-gradiant-success"><span class="badge badge-muted">Login</span></h3>
                            <div class="form-group">
                                <label for="username"></label><br>
                                <input type="text" name="username" id="username" placeholder="UserName" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password"></label><br>
                                <input type="text" name="password" id="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                            	<label for="remember-me" class="text-white bg-gradiant-success"><span class="badge badge-muted">Remember me</span><span><input id="remember-me" name="remember-me" type="checkbox"></span></label>
                                <br><input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>