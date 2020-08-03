<%@page import="MVC.Model"%>
<%@page import="Beans.Log"%>
<meta http-equiv="refresh" content="0; URL='viewrequests.jsp'">
<%
int month=Integer.parseInt(request.getParameter("month"));
int flatno=Integer.parseInt(request.getParameter("flatno"));
int year=Integer.parseInt(request.getParameter("year"));

boolean s=Model.getInstance().finalPayment(flatno, month, year);
if(s)
	out.println();


%>