<%@page import="Beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%

	User u = (User)session.getAttribute("User");
	if(u == null || u.getRole() != 0)
		request.getRequestDispatcher("redirect.to").forward(request, response);
%>
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
                    <li class="nav-item"><a class="nav-link active" href="userdashboard.jsp">Home Page</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewbill.jsp">View Bill</a></li>
                    <li class="nav-item"><a class="nav-link" href="billhistory.jsp">Bill History</a></li>
                </ul>
                <p>Hello</p>
                <span class="navbar-item">
                    <a role="button" class="btn btn-outline-success" href="logout.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
    <br>
    <div class="container" align="center" style="background-color: gray; padding-top: 30px;padding-bottom: 30px;">
		<img src="images/c2.jpg" height=100% width=100%>
	</div>
    <br>
    <footer class="footer sticky-bottom">
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