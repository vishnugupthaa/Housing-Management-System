<%@page import="Beans.Log"%>
<%@page import="MVC.Model"%>
<%@page import="Beans.Transaction"%>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
  <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
  <link href="mystyles1.css" rel="stylesheet">
  <title> Housing society management system</title>
  
</head>
<body>

	<nav class="mb-1 navbar navbar-expand-lg navbar-dark default-color fixed-top">
	<a class="navbar-brand" href="#"><img src="images/logo.png" height=41 width=41></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333" aria-controls="navbarSupportedContent-333" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="admindashboard.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Resident
			</a>
				<div class="dropdown-menu dropdown-default"
					aria-labelledby="navbarDropdownMenuLink-333">
					<a class="dropdown-item" href="addmember.jsp">Add Resident</a> <a
						class="dropdown-item" href="editmember.jsp">View Resident
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
						class="dropdown-item" href="editchecker.jsp">View Checker
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
  <h2>Hello <i style="color: orange;"><%=((User)session.getAttribute("User")).getName() %> </i>, Welcome Back.</h2>
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#pending">Pending</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#mpaid">Paid</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#all">All Payments</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="pending" class="container tab-pane active">
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Pending Payments</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable">
                  <thead>
					<tr>
						<th>Flat No</th>
						<th>MM/YY</th>
						<th>Amount/-</th>
					</tr>
				</thead>
                  <%
				List<Transaction> list = Model.getInstance().adminPending();
				for(Transaction t : list){
				
				%>
                  <tbody>
					<tr>
						<td><%=t.getFlatno() %></td>
						<td><%=t.getMonth() %>/<%=t.getYear() %></td>
						<td><%=t.getMaintainance()+t.getParking()+t.getDelay()+t.getPayrent() %>/-</td>
					</tr>
				</tbody>
                  <%
				}
				%>
                </table>
              </div>
            </div>
          </div>
    </div>
    <div id="mpaid" class="container tab-pane fade">
    
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">All Pending Payments</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable1">
				<thead>
					<tr>
						<th>Flat No</th>
						<th>MM/YY</th>
						<th>Amount/-</th>
					</tr>
				</thead>
				<%
				List<Log> list1 = Model.getInstance().adminPaid();
				for(Log t : list1){
				%>
				<tbody>
					<tr>
						<td><%=t.getFlatno() %></td>
						<td><%=t.getMonth() %>/<%=t.getYear() %></td>
						<td><%=t.getMaintainance()+t.getParking()+t.getDelay()+t.getPayrent() %>/-</td>
					</tr>
				</tbody>
				<%
				}
				%>			
			</table>
              </div>
            </div>
          </div>
    </div>
    <div id="all" class="container tab-pane fade"><br>
      
    </div>
  </div>
</div>
    <br>
    <footer class="footer fixed-bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-auto">
                    <p>� Copyright 2020 Vilas</p>
                </div>
            </div>
        </div>
    </footer>


	<script>
 
	$(document).ready(function() {
	    $('#dataTable').DataTable();
	} );
	$(document).ready(function() {
	    $('#dataTable1').DataTable();
	} );
	</script>

</body>
</html>