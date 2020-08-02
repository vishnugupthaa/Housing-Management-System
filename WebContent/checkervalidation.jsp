<%@page import="Beans.User"%>
<%@page import="MVC.Model"%>
<meta http-equiv="refresh" content="0; URL='editchecker.jsp'" />
<%
	User u = new User();
	u.setName(request.getParameter("cname"));
	u.setEmail(request.getParameter("cemail"));
	u.setPassword(request.getParameter("cpass"));
	u.setPhone(request.getParameter("cphno"));
	u.setRole(1);
	u.setFlatno(0);
	
	boolean success = Model.getInstance().addUser(u);
	if(success)
		out.println("<script>window.alert('Added Checker Successfully')</script>");
	
	else
		out.println("Failed to add member");
%>