<%

	session.invalidate();
	
	request.getRequestDispatcher("redirect.to").forward(request,response);
%>