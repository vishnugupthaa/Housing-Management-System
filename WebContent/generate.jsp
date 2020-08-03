<%@page import="MVC.Model"%>
<%@page import="java.util.List"%>
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
<br>

	<div class="container">
	<input class="form-control" id="myInput" type="text" placeholder="Search.."><br>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>FlatNo</th>
					<th>Name</th>
					<th>Month</th>
					<th>Year</th>
					<th>PayRent</th>
					<th>Parking</th>
					<th>Maintainance</th>
					<th></th>
				</tr>
			</thead>
			<tbody id="myTable">
			
					<%
						List<User> list = Model.getInstance().getMembers();
					
						for(User user : list)
						{
					%>
			
				<tr>
					<td><%=user.getFlatno() %></td>
					<td><%=user.getName() %></td>					
					<td><input type="text" size=4></td>
					<td><input type="text" size=4></td>
					<td><input type="text" size=4></td>
					<td><input type="text" size=4></td>
					<td><input type="text" size=4></td>
					<td><button class="btn btn-info"value="generate">generate</button></td>
				</tr>
				<%
					}
				%>
			</tbody>
				
		</table>
	
	</div>


	<div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-4">
                    <div class="card">
                        <div class="card-header" align="center"><h3><u>Enter the details</u></h3></div>
                        <div class="card-body">
                            <form name="generateform" action="genebill.jsp" method="post">
                            	<div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Month : </label>
                                    <div class="col-md-6">
                                        <select name="gmonth" class="form-control">
            								<option selected="">-Select-</option>
                							<option value="1">Jan</option>
               								<option value="2">Feb</option>
                							<option value="3">Mar</option>
                							<option value="4">Apr</option>
                							<option value="5">May</option>
                							<option value="6">Jun</option>
                							<option value="7">Jul</option>
                							<option value="8">Aug</option>
                							<option value="9">Sep</option>
                							<option value="10">Oct</option>
                							<option value="11">Nov</option>
                							<option value="12">Dec</option>
           								</select>
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Year : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gyear" required>
                                    </div>
                                </div>
                            
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Flat No : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gflatno" required>
                                    </div>
                                </div>
								
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Pay Rent : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="grent" required>
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Maintainance : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gmaintainance" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Parking : </label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gparking" required>
                                    </div>
                                </div>

                                <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        	Generate
                                        </button>
                                </div>
                           </form>
                        </div>
                    </div>
            	</div>
        	</div>
    	</div>
<br><br>
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
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
    
</body>
</html>