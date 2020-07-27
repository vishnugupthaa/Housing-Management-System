<%@page import="Beans.User"%>
<%@page import="mvc.Model"%>
<%
	User u =new User();
	u.setName(request.getParameter("cname"));
	u.setEmail(request.getParameter("cemail"));
	u.setPassword(request.getParameter("cpass"));
	u.setPhone(request.getParameter("cphno"));
	u.setRole(1);
	
	boolean success = Model.addChecker(u);
	if(success)
		out.println("<script>window.alert('Added Checker Successfully')</script>");
	
	else
		out.println("Failed to add member");
%>