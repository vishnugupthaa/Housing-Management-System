<%@page import="Beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	User u = (User)session.getAttribute("User");
	if(u == null || u.getRole() != 1)
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
  <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
  <link href="mystyles1.css" rel="stylesheet">
  <title> Housing society management system</title>
</head>
<body>

<nav
		class="mb-1 navbar navbar-expand-lg navbar-dark default-color fixed-top">
	<a class="navbar-brand" href="#"><img src="images/logo.png"
		height=41 width=41></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent-333"
		aria-controls="navbarSupportedContent-333" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="checkerdashboard.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="viewrequests.jsp">View Requests
			</a></li>			
		</ul>
		<ul class="navbar-nav ml-auto nav-flex-icons">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Hello , <%=((User)session.getAttribute("User")).getName() %> <i
					class="fas fa-user"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-left dropdown-default"
					aria-labelledby="navbarDropdownMenuLink-333">
					<a class="dropdown-item" href="logout.jsp">Logout</a>
				</div></li>
		</ul>
	</div>
	</nav>
    <br>
	<div class="container" align="center" style="background-color: gray;padding-top: 30px;padding-bottom: 30px;">
		<p>Welcome,<%=((User)session.getAttribute("User")).getName() %></p>
		<img src="images/c2.jpg" height=100% width=100%>
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