<%@page import="Beans.User"%>
<%@page import="MVC.Model"%>
<%@page import="Beans.Transaction"%>
<meta http-equiv="refresh" content="0; URL='viewbill.jsp'" />
<%
	
	Transaction t = (Transaction)session.getAttribute("Txn");
	t.setStatus(1);
	
	int month = (int) session.getAttribute("Mth");
	int year = (int) session.getAttribute("Yr");

	if(Model.getInstance().updateBillToBeChecked(t, month, year))
	{
		session.removeAttribute("Txn");
		session.removeAttribute("Mth");
		session.removeAttribute("Yr");
		out.println("<script>window.alert('Your payment details updated<br>Please go back and print/save your bill')</script>");
	}
	
	else
	{
		out.println("Failure");
	}
%>