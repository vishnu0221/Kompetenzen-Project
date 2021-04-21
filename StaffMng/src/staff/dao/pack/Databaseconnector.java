package staff.dao.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databaseconnector {
	public Connection connect;
	
	
	public Connection Dbconnect()
	{

	try
	{
		Class.forName("com.mysql.jdbc.Driver");			
	}
	catch(ClassNotFoundException e)
	{
		 e.printStackTrace();
	}
	try
	{
		connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffmngmnt","root","");
		
	}
	catch(SQLException e)
	{
		 e.printStackTrace();
	}
	

return connect;

}
}
