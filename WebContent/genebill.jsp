
<%@page import="Beans.Transaction"%>
<%@page import="MVC.Model"%>
<meta http-equiv="refresh" content="1; URL='generate.jsp'" />
<%

	System.out.println(request.getParameter("gmonth"));
	System.out.println(request.getParameter("gyear"));
	System.out.println(request.getParameter("gflatno"));
	System.out.println(request.getParameter("grent"));
	System.out.println(request.getParameter("gmaintainance"));
	System.out.println(request.getParameter("gparking"));

	Transaction t=new Transaction();
	t.setMonth(Integer.parseInt(request.getParameter("gmonth")));
	t.setYear(Integer.parseInt(request.getParameter("gyear")));
	t.setFlatno(Integer.parseInt(request.getParameter("gflatno")));
	t.setPayrent(Integer.parseInt(request.getParameter("grent")));
	t.setMaintainance(Integer.parseInt(request.getParameter("gmaintainance")));
	t.setParking(Integer.parseInt(request.getParameter("gparking")));
	t.setStatus(0);
	
	boolean s=Model.getInstance().addBill(t);
	if(s)
		out.println("<script>Window.alert('Bill Generated Successfuly')</script>");
	else
		out.println("Failed");
%>