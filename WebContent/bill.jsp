<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="mystyles1.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
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
                    <li class="nav-item active"><a class="nav-link" href="viewbill.jsp">View Bill</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Bill History</a></li>
                </ul>
                <span class="navbar-item">
                    <a role="button" class="btn btn-outline-success" href="login.jsp">
                        Logout
                    </a>
                </span>
            </div>
        </div>
    </nav>
    
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
                            <p class="font-weight-bold mb-1">Month <%=request.getParameter("month") %></p>
                            <p class="text-muted">Year <%=request.getParameter("year") %></p>
                        </div>
                    </div>

                    <hr class="my-2">
                    <div class="row pb-3 p-4">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Resident Details:</p>
                            <p class="mb-1">Resident Name?????</p>
                            <p>FlatNO?</p>
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
                                        <td>15,000</td>
                                        <td>15,000</td>
                                    </tr>
                                    <tr>
                                        <td>2.</td>
                                        <td>Maintanance</td>
                                        <td>3,000</td>
                                        <td>3,000</td>
                                    </tr>
                                    <tr>
                                        <td>3.</td>
                                        <td>Parking</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>4.</td>
                                        <td>Late Payment</td>
                                        <td>100</td>
                                        <td>100</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Total amount</div>
                            <div class="h2 font-weight-dark">18,100</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="text-light mt-5 mb-5 text-center">
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