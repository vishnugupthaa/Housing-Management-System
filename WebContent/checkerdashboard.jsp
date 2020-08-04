<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="MVC.Model"%>
<%@page import="Beans.Transaction"%>
<%@page import="java.util.List"%>
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
  <style>
   body {
     background: #83B2B2;
}
  	#circle {
    position: absolute;
    top: 78%;
    left: 50%;
    transform: translate(-50%,-50%);
	width: 150px;
    height: 150px;	
}

.loader {
    width: calc(100% - 0px);
	height: calc(100% - 0px);
	border: 8px solid #162534;
	border-top: 8px solid #09f;
	border-radius: 50%;
	animation: rotate 5s linear infinite;
}

@keyframes rotate {
100% {transform: rotate(360deg);}
} 
  
  </style>
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

	<%
		DateFormat df1 = new java.text.SimpleDateFormat("dd/MM/yyyy");
		DateFormat df2 = new java.text.SimpleDateFormat("E");
		List<Transaction> list = Model.getInstance().getreq();
		int x = list.size();
	%>

	<br>
	<div class="container">
		<h2>
			Hello <i style="color: orange;"><%=((User)session.getAttribute("User")).getName() %>
			</i>, Welcome Back.
		</h2>
		<div class="row">
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-left-warning shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div
									class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending
									Payments</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800"><%=x %></div>
							</div>
							<div class="col-auto">
								<i class="fas fa-bell fa-2x text-gray-300"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-left-primary shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div
									class="text-xs font-weight-bold text-primary text-uppercase mb-1"><%= df2.format(new Date()) %>
								</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800"><%= df1.format(new Date()) %></div>
							</div>
							<div class="col-auto">
								<i class="fas fa-calendar fa-2x text-gray-300"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<div class="container">
		<div id="circle">
			<div class="loader">
				<div class="loader">
					<div class="loader">
						<div class="loader"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
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