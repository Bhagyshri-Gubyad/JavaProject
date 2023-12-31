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
 * Servlet implementation class EditContact
 */
@WebServlet("/update")
public class EditContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditContact() {
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
	int cid=Integer.parseInt(request.getParameter("cid"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phno=request.getParameter("phno");
		String about=request.getParameter("about");
		
		Contact c=new Contact();
		c.setName(name);
		c.setEmail(email);
		c.setPhno(phno);
		c.setAbout(about);
		c.setId(cid);
		
	ContactDao dao=new ContactDao(DbConnect.getCon());
	
	HttpSession session=request.getSession();
	boolean f=dao.updateContact(c);
	
	if(f)
	{
		session.setAttribute("successMsg", "Your contact updated");
		response.sendRedirect("viewContact.jsp");
	}
	else
	{
		session.setAttribute("errorMsg", "somethign went wrong");
		 response.sendRedirect("editContact.jsp?cid="+cid); 
	}
		
	}

}
