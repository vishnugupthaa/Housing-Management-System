package MVC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/Controller", "*.do"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String URI = request.getRequestURI();
		URI = URI.substring(URI.lastIndexOf('/') + 1);
		System.out.println(URI);
		
		
		// Controller
		switch(URI)
		{
			case "login.do":
				
				// Login based on role
				String username = request.getParameter("username"),
						password = request.getParameter("password");
				
				int role = Model.getInstance().login(username, password);
				
				request.getRequestDispatcher(
						role == 0 ? Pages.USER_DASHBOARD :
							role == 1 ? Pages.CHECKER_DASHBOARD : 
								Pages.ADMIN_DASHBOARD
						).forward(request, response);
				
				break;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
