<%@page import="Beans.User"%>
<%@page import="mvc.Model"%>
<%
	
	//out.println(request.getParameter("mname") + " " + request.getParameter("memail"));
	
	User u =new User();
	u.setName(request.getParameter("mname"));
	u.setEmail(request.getParameter("memail"));
	u.setPassword(request.getParameter("mpass"));
	u.setPhone(request.getParameter("mphno"));
	u.setFlatno(Integer.parseInt(request.getParameter("mflatno")));
	u.setRole(0);
	
	boolean success = Model.addResident(u);
	
	if(success)
		out.println("<script>window.alert('Added Resident Successfully')</script>");
	
	else
		out.println("Failed to add member");
%>