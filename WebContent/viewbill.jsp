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
				href="userdashboard.jsp">Home
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="viewbill.jsp">View Bill
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="billhistory.jsp">Bill History
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
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header" align="center">
						<h3>
							<u>View Bill</u>
						</h3>
					</div>
					<div class="card-body">
						<form name="viewbillform" action="bill.jsp" method="post">

							<div class="form-group row">
								<div class="col-md-6"></div>
							</div>

							<div class="form-group row">
								<label class="col-md-4 col-form-label text-md-right">Month
									: </label>
								<div class="col-md-6">
									<select name="month" class="form-control">
										<option selected="">-Select-</option>
										<option value="1">1.Jan</option>
										<option value="2">2.Feb</option>
										<option value="3">3.Mar</option>
										<option value="4">4.Apr</option>
										<option value="5">5.May</option>
										<option value="6">6.Jun</option>
										<option value="7">7.Jul</option>
										<option value="8">8.Aug</option>
										<option value="9">9.Sep</option>
										<option value="10">10.Oct</option>
										<option value="11">11.Nov</option>
										<option value="12">12.Dec</option>
									</select>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-md-4 col-form-label text-md-right">Year
									: </label>
								<div class="col-md-6">
									<input type="text" class="form-control" name="year" required>
								</div>
							</div>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	
	
	
	
	<div class="container">
	
	<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-secondary" align="center">Pending Bills.</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover" id="dataTable">
				<thead>
					<tr>
						<th>Flat No.</th>
						<th>Month</th>
						<th>Year</th>
						<th>Amount</th>
						<th>Status</th>
					</tr>
				</thead>
				
				<%
					User user = (User)session.getAttribute("User");
					int flatno=u.getFlatno();
					
					List<Transaction> list = Model.getInstance().getPending(flatno);
					String msg="";
					for(Transaction t : list){
				%>
			
				<tbody>
					<tr>
						<td><%=t.getFlatno() %></td>
						<td><%=t.getMonth() %></td>
						<td><%=t.getYear() %></td>
						<td><%=t.getPayrent()+t.getMaintainance()+t.getParking()+t.getDelay() %></td>
						<%if(t.getStatus()==1)
						{
							msg="Processed Please Print your bill.";
						}
						else
						{
							msg="Yet to see the Bill.";
						}
						%>
						<td><%=msg %></td>
					</tr>
				</tbody>
				<%
					}
				%>
				<tbody>
					<tr>
						<td>&nbsp;</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
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
</body>
</html>