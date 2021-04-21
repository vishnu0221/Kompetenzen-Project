package stsff.servlet.pack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServ
 */
@WebServlet("/AdminServ")
public class AdminServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServ() {
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
		
		String admin=request.getParameter("admin");
		
		if(admin.equals("CreateT"))
		{
		String tname=request.getParameter("namet");
		System.out.println(tname);
		String temail=null;
		String tphone=null;
		String tskills=null;
		String html=null;
		String sql=null;
		String spring=null;
		String tphoto=null;
		String tuname=null;
		String tpword=null;
		String tbatch=null;
		}
		
	}

}
