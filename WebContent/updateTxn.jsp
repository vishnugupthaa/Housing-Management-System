<%@page import="MVC.Model"%>
<%@page import="Beans.Transaction"%>

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
                    <li class="nav-item"><a class="nav-link" href="userdashboard.jsp">Home Page</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewbill.jsp">View Bill</a></li>
                    <li class="nav-item"><a class="nav-link" href="billhistory.jsp">Bill History</a></li>
                </ul>
                <span class="navbar-item">
                    <a role="button" class="btn btn-outline-danger btn-success" href="logout.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
<br><br><br>
<br><br>
<%
	
	Transaction t = (Transaction)session.getAttribute("Txn");
	t.setStatus(1);
	
	int month = (int) session.getAttribute("Mth");
	int year = (int) session.getAttribute("Yr");

	if(Model.getInstance().updateBillToBeChecked(t, month, year))
	{
		%>
			<h1 align="center"> SuccessFully Updated ........... <br>Your Bill has been Processed.</h1>
			<h3 align="center">Now Go Back And Print Your Bill.<br>Thank You.</h3>
		<%
		session.removeAttribute("Txn");
		session.removeAttribute("Mth");
		session.removeAttribute("Yr");
	}
	
	else
	{
		%>
			<h1>Unsucessful.<br> Already Paid Check in your history</h1>
		<%
		out.println("Failure");
	}
%>

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