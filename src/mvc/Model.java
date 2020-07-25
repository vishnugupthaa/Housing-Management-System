package mvc;
import java.sql.*;

public class Model {
	public static int login(String username, String password)
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/housing", "root", "");
			Statement stmt = c.createStatement();
			
			
			String query = "select * from details where name='"+username+"' and pass='"+password+"'";
			System.out.println(query);
			
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
	
}
