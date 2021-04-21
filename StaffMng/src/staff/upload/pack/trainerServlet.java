package staff.upload.pack;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import staff.bean.pack.Trainer;
import staff.dao.pack.AdminDao;

/**
 * Servlet implementation class trainerServlet
 */
@WebServlet("/trainerServlet")
public class trainerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trainerServlet() {
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
		

		String tname=null;
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
		
		//HttpSession obj=request.getSession();
	//String pid=	obj.getAttribute("pid").toString();
	//String pname=	obj.getAttribute("pname").toString();
	//String pemail=	obj.getAttribute("pemail").toString();
		Trainer tobj=new Trainer();
		//p.setName(name);
		//p.setType(type);
		//p.setDescription(desc);
		//p.setImage(img);
		//System.out.println("**********"+name+"*******************"+type+desc+img);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		boolean isMultipartContent =ServletFileUpload.isMultipartContent(request);
		if(!isMultipartContent)
		{
			return;
		}
		
		
		FileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		System.out.println("Flag0");
		try
		{
		System.out.println("Flag1");
		List <FileItem> fields=upload.parseRequest(request);
		System.out.println("Flag-Z:");
		Iterator <FileItem> it=fields.iterator();

		while(it.hasNext())
		{
			System.out.println("Flag2");
			FileItem fileItem=it.next();
			System.out.println(fileItem);
			boolean isFormField=fileItem.isFormField();
			
			if(isFormField)
			{
				System.out.println("Flag3");
				if(tname==null || temail==null ||  tphone==null ||  tskills==null ||  html==null ||  sql==null ||  spring==null ||  tphoto==null ||  tuname==null ||  tpword==null ||  tbatch==null) 
				{
					System.out.println("Flag4");
					//for(int i=0;i<5;i++)
					//{
					if(fileItem.getFieldName().equals("namet")) //field name from jsp
					{
						System.out.println("Flag5");
						tname=fileItem.getString();
					
					}
					if(fileItem.getFieldName().equals("emailt")) //field name from jsp
					{
						System.out.println("Flag5");
						temail=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("phonet")) //field name from jsp
					{
						System.out.println("Flag5");
						tphone=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("skillst")) //field name from jsp
					{
						System.out.println("Flag5");
						tskills=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("html")) //field name from jsp
					{
						System.out.println("Flag5");
						html=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("sql")) //field name from jsp
					{
						System.out.println("Flag5");
						sql=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("spring")) //field name from jsp
					{
						System.out.println("Flag5");
						spring=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("unamet")) //field name from jsp
					{
						System.out.println("Flag5");
						tuname=fileItem.getString();
					}
					if(fileItem.getFieldName().equals("pwordt")) //field name from jsp
					{
						System.out.println("Flag5");
						tpword=fileItem.getString();
					}
					
					
					
					//}
				}
			}
			else if(!isFormField)
			{
				if(fileItem.getFieldName().equals("photot"))
				{
					System.out.println("Flag6");
					tphoto=fileItem.getName();
					if(fileItem.getSize()>0)
					{
						fileItem.write(new File("D:\\Kompetenzen\\StaffMng\\WebContent\\imageU"+fileItem.getName()));
					}
				}
			
			
				
			}
		
		
		
			
		}
		}
		catch(Exception e) {e.printStackTrace();}
		
		finally
		{	
			//System.out.println("**********"++"*******************"+desc+img);
		//System.out.println("This file is :"+rname);
		System.out.println("This item is :"+tphoto);
		tobj.setNamet(tname);
		tobj.setEmailt(temail);
		tobj.setPhonet(tphone);
		tobj.setSkillst(tskills);
		tobj.setHtml(html);
		tobj.setSql(sql);
		tobj.setSpring(spring);
		tobj.setPhotot(tphoto);
		tobj.setUnamet(tuname);
		tobj.setPwordt(tpword);
		
		
	
		System.out.println("This file is :"+tobj.getPhotot());
		AdminDao dobj=new AdminDao();
		String valid=dobj.createTrainer(tobj);
		if(valid.equals("SUCCESS"))
			
		{
			System.out.println("Success");
			request.getRequestDispatcher("Admin/index.jsp").forward(request, response);
		}
		out.close();
		}
		}
		
		
		
	

}

