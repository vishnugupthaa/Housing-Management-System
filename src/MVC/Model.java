package MVC;
import java.sql.*;

import Beans.*;

public class Model {
	
	// Private Variables
	private static Connection c;
	private static Model m;
	
	// Static Initialization 
	{
	try {
			Class.forName(Parameters.DRIVER);
			c = DriverManager.getConnection(Parameters.URL, Parameters.USER, Parameters.PASS);
		}
		
		catch(Exception e)
		{
			System.out.println("Connection Error - " + e.getLocalizedMessage());
		}
	}
	
	// Private Class - so no instance can be made - for security purpose
	private Model()
	{
		
	}
	
	// Public Class - gets instance of the Model and only one instance is made
	public static Model getInstance()
	{
		if(m == null)
			m = new Model();
		
		return m;
	}
	
	// This method checks if the user is a authentic user and returns the role
	public int login(String username, String password)
	{
		try{
			
			Statement stmt = c.createStatement();
			String query = "select * from " + Query.USERS_TABLE + " where name = '" + username + "' and password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
				return rs.getInt("role");
			
		}
		
		catch(Exception e)
		{
			System.out.println("We Have Error" + e);
			return -1;
		}
		
		return -1;
	}
		
	// This method will add the resident details into the database
	public boolean addResident(User u)
	{
		try {		
			Statement stmt = c.createStatement();
			
			String query="INSERT INTO " + Query.USERS_TABLE + "(name, email, password, phone, role, flatno) VALUES ('"+u.getName()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getPhone()+"','"+u.getRole()+"','"+u.getFlatno()+"')";
			if(stmt.executeUpdate(query) != 0)
				return true;
			
			else
				return false;			
			
		}
		catch (Exception e) {
			System.out.println("We Have Error" + e);
			return false;
		}
	}
}
