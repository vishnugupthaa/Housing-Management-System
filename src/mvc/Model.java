package mvc;
import java.sql.*;

import Beans.User;

public class Model {
	public static int login(String username, String password)
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hsms", "root", "");
			Statement stmt = c.createStatement();
			
			
			String query = "select * from users where name='"+username+"' and password='"+password+"'";
						
			ResultSet rs=stmt.executeQuery(query);
			
			while(rs.next())
			{
				return rs.getInt("role");
			}
		}
		
		catch(Exception e)
		{
			System.out.println("Some Error" + e);
			return -1;
		}
		
		return -1;
	}
		
	public static boolean addResident(User u)
	{
		return true;
	}
}
