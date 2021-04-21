package staff.dao.pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



import staff.bean.pack.Trainer;

public class AdminDao {
	Databaseconnector dobj=new Databaseconnector();	
	ResultSet rs=null;
	Statement st=null;
	PreparedStatement ps=null;
	Connection con=null;
	
	
	public String createTrainer(Trainer tobj)
	{
		try
		{
			String addTrainer="insert into trainer (namet,emailt,phonet,skillst,html,sqll,spring,photo,unamet,pwordt) values(?,?,?,?,?,?,?,?,?,?)";
			con=dobj.Dbconnect();
			ps=con.prepareStatement(addTrainer);
			ps.setString(1, tobj.getNamet());
			ps.setString(2, tobj.getEmailt());
			ps.setString(3, tobj.getPhonet());
			ps.setString(4, tobj.getSkillst());
			ps.setString(5, tobj.getHtml());
			ps.setString(6, tobj.getSql());
			ps.setString(7, tobj.getSpring());
			ps.setString(8, tobj.getPhotot());
			ps.setString(9, tobj.getUnamet());
			ps.setString(10, tobj.getPwordt());
			System.out.println(tobj.getNamet());
			int i=ps.executeUpdate();
			if(i!=0)
			{
				
				return "SUCCESS";
			}
		}
			catch (Exception e) {
				System.out.println(e);
			
		}
		return "SUCCESS";
		
	}
	}


