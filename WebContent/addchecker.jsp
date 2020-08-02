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
			<li class="nav-item"><a class="nav-link"
				href="admindashboard.jsp">Home
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Resident
			</a>
				<div class="dropdown-menu dropdown-default"
					aria-labelledby="navbarDropdownMenuLink-333">
					<a class="dropdown-item" href="addmember.jsp">Add Resident</a> <a
						class="dropdown-item" href="editmember.jsp">Edit Resident
						Details</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Billing
			</a>
				<div class="dropdown-menu dropdown-default"
					aria-labelledby="navbarDropdownMenuLink-333">
					<a class="dropdown-item" href="generate.jsp">Generate Bill</a> <a
						class="dropdown-item" href="calculate.jsp">Calculate
						Maintainance</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Checker
			</a>
				<div class="dropdown-menu dropdown-default"
					aria-labelledby="navbarDropdownMenuLink-333">
					<a class="dropdown-item" href="addchecker.jsp">Add Checker</a> <a
						class="dropdown-item" href="editchecker.jsp">Edit Checker
						Details</a>
				</div></li>
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
    <br><br>
    <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-5">
                    <div class="card">
                        <div class="card-header" align="center"><h3><u>Enter Details of Checker</u></h3></div>
                        <div class="card-body">
                            <form name="checkerform" action="checkervalidation.jsp" method="post">
                            	
                                
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cname" required autofocus>
                                    </div>
                                </div>
								
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cemail" required>
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Password : </label>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" name="cpass" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Phone Number : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cphno" required>
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
                           </form>
                        </div>
                    </div>
            	</div>
        	</div>
    	</div>

	</main>
    <br><br><br><br>
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