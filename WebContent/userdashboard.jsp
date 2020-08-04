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
	if(u == null || u.getRole() != 0)
		request.getRequestDispatcher("redirect.to").forward(request, response);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css"
	rel="stylesheet">
<link href="mystyles1.css" rel="stylesheet">
<title>Housing society management system</title>
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
				href="userdashboard.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="viewbill.jsp">View
					Bill </a></li>
			<li class="nav-item"><a class="nav-link" href="billhistory.jsp">Bill
					History </a></li>

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
	<%
		DateFormat df1 = new java.text.SimpleDateFormat("dd/MM/yyyy");
		DateFormat df2 = new java.text.SimpleDateFormat("E");
		User user = (User) session.getAttribute("User");
		int flatno = u.getFlatno();

		List<Transaction> list = Model.getInstance().getPending(flatno);
		int x = list.size();
	%>

	<br>
	<div class="container">
		<h3>
			Hello <i style="color: orange;"><%=((User)session.getAttribute("User")).getName() %>
			</i>, Welcome Back.
		</h3>
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
		<div class="row">
			<div class="col-xl-6 col-lg-4">
				<div class="card shadow mb-4">
					<!-- Card Header - Dropdown -->
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Weather Updates</h6>
					</div>
					<!-- Card Body -->
					<div class="card-body">
						<a class="weatherwidget-io"
							href="https://forecast7.com/en/17d4078d49/narayanguda/"
							data-label_1="NARAYANGUDA" data-label_2="WEATHER"
							data-theme="original">NARAYANGUDA WEATHER</a>
					</div>
				</div>
			</div>
			<div class="col-xl-6 col-lg-4">
				<div class="card shadow mb-4">
					<!-- Card Header - Dropdown -->
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Weather Updates</h6>
					</div>
					<!-- Card Body -->
					<div class="card-body">
						<blockquote class="embedly-card">
							<h4>
								<a
									href="https://news.google.com/topics/CAAqIggKIhxDQkFTRHdvSkwyMHZNREZqY0hsNUVnSmxiaWdBUAE?hl=en-IN&gl=IN&ceid=IN%3Aen">COVID-19
									- Google News</a>
							</h4>
							<p>President Donald Trump criticized Dr. Deborah Birx in a
								Monday tweet after she warned the pandemic is "extraordinarily
								widespread" in the US. With schools in certain states starting
								to open for in-person learning during the the ongoing pandemic,
								Alabama principal Quentin Lee wanted to make sure the ...</p>
						</blockquote>
						<script async src="//cdn.embedly.com/widgets/platform.js"
							charset="UTF-8"></script>
					</div>
				</div>
			</div>
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

	<script>
					!function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (!d.getElementById(id)) {
							js = d.createElement(s);
							js.id = id;
							js.src = 'https://weatherwidget.io/js/widget.min.js';
							fjs.parentNode.insertBefore(js, fjs);
						}
					}(document, 'script', 'weatherwidget-io-js');
				</script>
</body>
</html>