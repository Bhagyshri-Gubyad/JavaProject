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
import entity.Contact;

/**
 * Servlet implementation class AddContact
 */
@WebServlet("/save")
public class AddContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddContact() {
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
		int userId=Integer.parseInt(request.getParameter("userId"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phno=request.getParameter("phno");
		String about=request.getParameter("about");
		
		Contact c=new Contact(name,email,phno,about,userId);
	ContactDao dao=new ContactDao(DbConnect.getCon());
	
	HttpSession session=request.getSession();
	boolean f=dao.saveContact(c);
	
	if(f)
	{
		session.setAttribute("successMsg", "Your contact saved Successfully");
		response.sendRedirect("addContact.jsp");
	}
	else
	{
		session.setAttribute("errorMsg", "somethign went wrong");
		response.sendRedirect("addContact.jsp");
	}
		
	}

}
