<%@page import="Beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	User u = (User)session.getAttribute("User");
	if(u == null || u.getRole() != 2)
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
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#Navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#"><img src="images/logo.png"
			height="41" width="41"></img></a>
		<div class="collapse navbar-collapse" id="Navbar">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link active"
				href="admindashboard.jsp">Home Page</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Member</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="addmember.jsp">Add Member</a> <a
						class="dropdown-item" href="editmember.jsp">Edit Member
						Details</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Bill</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="generate.jsp">Generate Bill</a> <a
						class="dropdown-item" href="calculate.jsp">Calculate
						Maintainance</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Checker</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="addchecker.jsp">Add Checker</a> <a
						class="dropdown-item" href="editchecker.jsp">Edit Checker
						Details</a>
				</div></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">Welcome, <%=((User)session.getAttribute("User")).getName() %>
			</li>
				<span class="navbar-item"> <a class="nav-link"
					href="logout.jsp"> Logout </a>
				</span>
			</ul>
		</div>
	</div>
	</nav>

	<br>
    <div class="container" align="center" style="background-color: gray; padding-top: 30px; padding-bottom: 30px;">
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