package mvc;

import java.io.IOException;
import mvc.Model;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns = {"/Controller", "*.do"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String URI = request.getRequestURI();
		URI = URI.substring(URI.lastIndexOf('/') + 1);
		System.out.println(URI);
		
		
		switch(URI)
		{
			case "login.do":
				if(Model.login(request.getParameter("username"),request.getParameter("password"))==2)
				{
					request.getRequestDispatcher("admindashboard.jsp").forward(request, response);
				}
				else if(Model.login(request.getParameter("username"),request.getParameter("password"))==0)
				{
					request.getRequestDispatcher("userdashboard.jsp").forward(request, response);
				}
				else if(Model.login(request.getParameter("username"),request.getParameter("password"))==1)
				{
					request.getRequestDispatcher("checkerdashboard.jsp").forward(request, response);
				}
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
