<%@page import="java.time.chrono.ChronoLocalDate"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Beans.Transaction"%>
<%@page import="MVC.Model"%>
<%@page import="Beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				href="userdashboard.jsp">Home
			</a></li>
			<li class="nav-item"><a class="nav-link"
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
    <%
    	User u = (User)session.getAttribute("User");
    	
    	String name = u.getName();
    	int flatno = u.getFlatno();
    	
    	int month = Integer.parseInt(request.getParameter("month"));
    	int year= Integer.parseInt(request.getParameter("year"));
    	
    	Transaction t = Model.getInstance().getBill(flatno, month, year);
    			
    %>
    <div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                            <img src="images/logo.png" width="70" height="70">
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1"><%=Model.getInstance().getMonth(month)%></p>
                            <p class="text-muted"><%=year %></p>
                        </div>
                    </div>

                    <hr class="my-2">
                    <div class="row pb-3 p-4">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Resident Details:</p>
                            <p class="mb-1">Name : <%=name %></p>
                            <p>Flat No : <%=flatno %></p>
                            <p class="mb-1">Narayanguda,</p>
                            <p class="mb-1">HYD,</p>
                            <p class="mb-1">500004</p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="border-0  small font-weight-bold">St No.</th>
                                        <th class="border-0  small font-weight-bold">Item Details</th>
                                        <th class="border-0  small font-weight-bold">Charges</th>
                                        <th class="border-0  small font-weight-bold">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1.</td>
                                        <td>Pay Rent</td>
                                        <td><%=t.getPayrent() %></td>
                                        <td><%=t.getPayrent() %></td>
                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>Maintanance</td>
                                        <td><%=t.getMaintainance() %></td>
                                        <td><%=t.getMaintainance() %></td>
                                    </tr>
                                    <tr>
                                        <td>3.</td>
                                        <td>Parking</td>
                                        <td><%=t.getParking() %></td>
                                        <td><%=t.getParking() %></td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>Late Payment</td>
                                        <%
                                        	if(LocalDate.now().isAfter(LocalDate.of(year, month, 10)))
                                        	{
                                        		t.setDelay(100);
                                        	}
                                        %>
                                        <td><%=t.getDelay() %></td>
                                        <td><%=t.getDelay() %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
					<% 
						session.setAttribute("Txn", t);
					session.setAttribute("Mth",month);
					session.setAttribute("Yr", year);
					%>
                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Total amount</div>
                            <div class="h2 font-weight-dark"><%=t.getPayrent()+t.getMaintainance()+t.getParking()+t.getDelay() %></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center">
    	<a role="button" class="btn btn-success" href="updateTxn.jsp" >
             Proceed
        </a>
    	<a role="button" class="btn btn-primary" href="#" onclick="javascript:window.print();">
             Print
        </a>
    </div>
</div>
    
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