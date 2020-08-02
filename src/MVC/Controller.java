package MVC;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.User;


@WebServlet(urlPatterns = {"/Controller", "*.do", "*.to"})
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
				
				User loginUser = Model.getInstance().login(username, password);
				System.out.println(username+" "+password);
				if(loginUser != null)
				{
					int role = loginUser.getRole();
					request.getSession(true).setAttribute("User", loginUser);
				}
				
				request.getRequestDispatcher("redirect.to").forward(request, response);;
				
				break;
				
			case "home.do":
				request.getRequestDispatcher(Pages.HOME).forward(request, response);
				break;
				
			case "redirect.to":
				
				User logUser = (User)request.getSession().getAttribute("User");
				
				if(logUser == null)
					request.getRequestDispatcher(Pages.LOGIN).forward(request, response);
				
				else 
					request.getRequestDispatcher(
							logUser.getRole() == 0 ? Pages.USER_DASHBOARD :
								logUser.getRole() == 1 ? Pages.CHECKER_DASHBOARD : 
									Pages.ADMIN_DASHBOARD
							).forward(request, response);
				
				break;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
