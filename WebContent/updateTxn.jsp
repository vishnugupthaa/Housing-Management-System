<%@page import="MVC.Model"%>
<%@page import="Beans.Transaction"%>
<%
	
	Transaction t = (Transaction)session.getAttribute("Txn");
	t.setStatus(1);
	
	int month = (int) session.getAttribute("Mth");
	int year = (int) session.getAttribute("Yr");

	if(Model.getInstance().updateBillToBeChecked(t, month, year))
	{
		%>
			<h1> This works </h1>
		<%
		session.removeAttribute("Txn");
		session.removeAttribute("Mth");
		session.removeAttribute("Yr");
	}
	
	else
	{
		out.println("Failure");
	}
%>