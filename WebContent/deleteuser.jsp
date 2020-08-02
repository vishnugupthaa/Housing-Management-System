<%@page import="MVC.Model"%>
<meta http-equiv="refresh" content="0; URL='editmember.jsp'" />
<%
	String email=request.getParameter("email");
	boolean suc=Model.getInstance().deleteUser(email);
	if(suc)
		out.println("<script>window.alert('Deleted Successfully')</script>");

	else
		out.println("Failure");
%>