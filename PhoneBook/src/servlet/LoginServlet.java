package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DbConnect;
import dao.UserDao;
import entity.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		System.out.println(email+" "+pwd);
		UserDao dao=new UserDao(DbConnect.getCon());
		User user=dao.loginUser(email, pwd);
		
		HttpSession session=request.getSession();
		
		
		if(user != null)
		{
			session.setAttribute("user", user);
			response.sendRedirect("index.jsp");
			//System.out.println("user is available"+u); 
		}
		else {
			session.setAttribute("invalidMsg", "Invalid Email and Password");
			response.sendRedirect("login.jsp");
			System.out.println("user is not available"+user);
		}
	}

}
