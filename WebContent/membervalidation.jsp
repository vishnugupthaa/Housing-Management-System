<%@page import="Beans.User"%>
<%@page import="MVC.*"%>
<meta http-equiv="refresh" content="0; URL='editmember.jsp'" />
<%	
	User u =new User();
	u.setName(request.getParameter("mname"));
	u.setEmail(request.getParameter("memail"));
	u.setPassword(request.getParameter("mpass"));
	u.setPhone(request.getParameter("mphno"));
	u.setFlatno(Integer.parseInt(request.getParameter("mflatno")));
	u.setRole(0);
	
	boolean success = Model.getInstance().addUser(u);
	if(success)
		out.println("<script>window.alert('Added Resident Successfully')</script>");
	
	else
		out.println("Failed to add member");
%>