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
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
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
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		User user=new User(name, email,pwd);
		
		UserDao dao=new UserDao(DbConnect.getCon());
		boolean f=dao.userRegister(user);
		
		HttpSession s=request.getSession();
		
		if(f)
		{
			s.setAttribute("successMsg","user Registered Successfully..." );
			response.sendRedirect("register.jsp");
		}
		else {
			s.setAttribute("errorMsg","something went worng.." );
			response.sendRedirect("register.jsp");
		
		}
	}

}
