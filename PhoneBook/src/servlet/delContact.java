package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DbConnect;
import dao.ContactDao;

/**
 * Servlet implementation class delContact
 */
@WebServlet("/delContact")
public class delContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delContact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cid=Integer.parseInt(request.getParameter("cid"));
		
		ContactDao dao=new ContactDao(DbConnect.getCon());
		
		boolean f=dao.deleteContactById(cid);     
		HttpSession session=request.getSession(); 
		if(f) {
			session.setAttribute("succMsg","contact delete successfully");
			response.sendRedirect("viewContact.jsp");
		}else
		{
			session.setAttribute("errorMsg","somethign went wrong on server");
			response.sendRedirect("viewContact.jsp");
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
