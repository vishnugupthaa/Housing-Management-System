package MVC;

import java.sql.*;

import javax.mail.*;
import javax.mail.internet.*;

import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

import Beans.Log;
import Beans.Transaction;
import Beans.User;

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
	public User login(String username, String password)
	{
		try{
			
			Statement stmt = c.createStatement();
			String query = "select * from " + Query.USERS_TABLE + " where name = '" + username + "' and password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next())
			{
				User u = new User();
				u.setEmail(rs.getString("email"));
				u.setFlatno(rs.getInt("flatno"));
				u.setName(rs.getString("name"));
				u.setPhone(rs.getString("phone"));
				u.setRole(rs.getInt("role"));
				
				return u;
			}
			
		}
		
		catch(Exception e)
		{
			System.out.println("We Have Error" + e);
			return null;
		}
		
		return null;
	}
		
	// This method will add the resident details into the database
	public boolean addUser(User u)
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
	
	public List<User> getCheckers()
	{
		LinkedList<User> checkers = new LinkedList<User>();
		
		try{
			Statement stmt = c.createStatement();
			
			ResultSet rs = stmt.executeQuery(Query.GET_CHECKERS);
			
			while(rs.next())
			{
				User u = new User();
				u.setEmail(rs.getString("email"));
				u.setFlatno(rs.getInt("flatno"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setRole(rs.getInt("role"));
				
				checkers.add(u);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return checkers;
	}
	public List<User> getMembers()
	{
		LinkedList<User> members = new LinkedList<User>();
		
		try{
			Statement stmt = c.createStatement();
			
			ResultSet rs = stmt.executeQuery(Query.GET_MEMBERS);
			
			while(rs.next())
			{
				User u = new User();
				u.setEmail(rs.getString("email"));
				u.setFlatno(rs.getInt("flatno"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setRole(rs.getInt("role"));
				
				members.add(u);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return members;
	}
	public List<Transaction> getreq()
	{
		LinkedList<Transaction> reqs = new LinkedList<Transaction>();
		
		try{
			Statement stmt = c.createStatement();
			
			ResultSet rs = stmt.executeQuery(Query.GET_REQUESTS);
			
			while(rs.next())
			{
				Transaction t = new Transaction();
				t.setFlatno(rs.getInt("flatno"));
				t.setMonth(rs.getInt("month"));
				t.setYear(rs.getInt("year"));
				t.setMaintainance(rs.getInt("maintainance"));
				t.setPayrent(rs.getInt("payrent"));
				t.setParking(rs.getInt("parking"));
				t.setDelay(rs.getInt("delay"));

				reqs.add(t);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return reqs;
	}
	public List<Transaction> getPending(int flatno)
	{
		LinkedList<Transaction> reqs = new LinkedList<Transaction>();
		
		try{
			Statement stmt = c.createStatement();
			String q1="select * from "+ Query.TRANSACTIONS_TABLE+" where flatno = " + flatno;
//			String q1="select * from "+ Query.TRANSACTIONS_TABLE+" where flatno = " + flatno + " and status = 0";
			ResultSet rs = stmt.executeQuery(q1);
			
			while(rs.next())
			{
				Transaction t = new Transaction();
				t.setFlatno(rs.getInt("flatno"));
				t.setMonth(rs.getInt("month"));
				t.setYear(rs.getInt("year"));
				t.setMaintainance(rs.getInt("maintainance"));
				t.setPayrent(rs.getInt("payrent"));
				t.setParking(rs.getInt("parking"));
				t.setDelay(rs.getInt("delay"));
				t.setStatus(rs.getInt("status"));
				reqs.add(t);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return reqs;
	}
	public List<Log> getPaid(int flatno)
	{
		LinkedList<Log> reqs = new LinkedList<Log>();
		
		try{
			Statement stmt = c.createStatement();
			String q1="select * from "+ Query.LOG_TABLE+" where flatno = " + flatno;
			ResultSet rs = stmt.executeQuery(q1);
			
			while(rs.next())
			{
				Log l=new Log();
				l.setFlatno(rs.getInt("flatno"));
				l.setMonth(rs.getInt("month"));
				l.setYear(rs.getInt("year"));
				l.setMaintainance(rs.getInt("maintainance"));
				l.setPayrent(rs.getInt("payrent"));
				l.setParking(rs.getInt("parking"));
				l.setDelay(rs.getInt("delay"));
				reqs.add(l);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return reqs;
	}
	public boolean addBill(Transaction t)
	{
		try {
			Statement stmt=c.createStatement();
			String q1="insert into "+ Query.TRANSACTIONS_TABLE +"(`flatno`, `month`, `year`, `payrent`, `maintainance`, `parking`, `delay`, `status`) values("+
						t.getFlatno()+","+t.getMonth()+","+t.getYear()+","+t.getPayrent()+","+t.getMaintainance()+","+t.getParking()+",0,"+t.getStatus()+")";
			if(stmt.executeUpdate(q1) != 0)
				return true;
			
			else
				return false;	
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	public String getMonth(int month)
	{
		switch(month)
		{
		case 1: return "January";
		case 2:return "Febuary";
		case 3:return "March";
		case 4:return "April";
		case 5:return "May";
		case 6:return "June";
		case 7:return "July";
		case 8:return "August";
		case 9:return "September";
		case 10:return "October";
		case 11:return "November";
		case 12:return "December";
		}
		
		return null;
	}
	
	public Transaction getBill(int flatno, int month, int year)
	{
		try{
			Statement stmt=c.createStatement();
			String q1="select * from "+Query.TRANSACTIONS_TABLE+" t where t.flatno=" + flatno + " and t.month= "+month+" and t.year="+year;
			
			ResultSet rs=stmt.executeQuery(q1);
			while(rs.next()){
				Transaction t=new Transaction();
				t.setFlatno(rs.getInt("flatno"));
				t.setMonth(rs.getInt("month"));
				t.setYear(rs.getInt("year"));
				t.setMaintainance(rs.getInt("maintainance"));
				t.setPayrent(rs.getInt("payrent"));
				t.setParking(rs.getInt("parking"));
				t.setDelay(rs.getInt("delay"));
				
				return t;
			}
			
			
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return null;
	}
	
	public boolean updateBillToBeChecked(Transaction t, int month, int year)
	{
		try {
			Statement stmt = c.createStatement();
			String q1 = "update "+Query.TRANSACTIONS_TABLE+" set status=1, delay="+t.getDelay()+" where flatno="+t.getFlatno()+" and month="+month+" and year="+year;
			
			return stmt.executeUpdate(q1) != 0;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return false;
	}
	public boolean deleteUser(String email)
	{
		try {
			Statement stmt=c.createStatement();
			String q1 = "delete from "+Query.USERS_TABLE+" where email='"+email+"'";
			
			return stmt.executeUpdate(q1) != 0;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return false;
	}
	public boolean finalPayment(int flatno,int month,int year)
	{
		try {
			Statement stmt = c.createStatement();
			String q1 = "delete from "+Query.TRANSACTIONS_TABLE+" where flatno = "+flatno+" and month = "+month+" and year = "+year;
			return stmt.executeUpdate(q1) != 0;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return false;
	}
	public List<Transaction> adminPending()
	{
		LinkedList<Transaction> reqs = new LinkedList<Transaction>();
		
		try{
			Statement stmt = c.createStatement();
			String q1="select * from "+ Query.TRANSACTIONS_TABLE;
			ResultSet rs = stmt.executeQuery(q1);
			
			while(rs.next())
			{
				Transaction t = new Transaction();
				t.setFlatno(rs.getInt("flatno"));
				t.setMonth(rs.getInt("month"));
				t.setYear(rs.getInt("year"));
				t.setMaintainance(rs.getInt("maintainance"));
				t.setPayrent(rs.getInt("payrent"));
				t.setParking(rs.getInt("parking"));
				t.setDelay(rs.getInt("delay"));
				t.setStatus(rs.getInt("status"));
				reqs.add(t);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return reqs;
	}
	public List<Log> adminPaid()
	{
		LinkedList<Log> reqs = new LinkedList<Log>();
		
		try{
			Statement stmt = c.createStatement();
			String q1="select * from "+ Query.LOG_TABLE;
			ResultSet rs = stmt.executeQuery(q1);
			
			while(rs.next())
			{
				Log t=new Log();
				t.setFlatno(rs.getInt("flatno"));
				t.setMonth(rs.getInt("month"));
				t.setYear(rs.getInt("year"));
				t.setMaintainance(rs.getInt("maintainance"));
				t.setPayrent(rs.getInt("payrent"));
				t.setParking(rs.getInt("parking"));
				t.setDelay(rs.getInt("delay"));
				reqs.add(t);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return reqs;
	}
	public void sendMail(String email,String name,String pass)
	{
		   
		  final String user="vilasbusybro143@gmail.com"; 
		  final String password="Vilas@1317";  
		    
		  String to=email;  
		  
		   //Get the session object  
		   Properties prop = new Properties();  
		   prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true");
		     
		   Session session = Session.getDefaultInstance(prop,  
		    new javax.mail.Authenticator() {  
		      protected PasswordAuthentication getPasswordAuthentication() {  
		    return new PasswordAuthentication(user,password);  
		      }  
		    });  
		  
		   //Compose the message  
		    try {  
		     MimeMessage message = new MimeMessage(session);  
		     message.setFrom(new InternetAddress(user));  
		     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		     message.setSubject("Welcome to Vilas");  
		     message.setContent("<h1>Dear "+name+",</h1> <h3>Welcome to our Society Vilas!</h3>"
		     		+ "<code>We extend a warm greeting from our team and hope you will be happy in your new home."
		     		+ "Included in this letter is all of the information you need to know for joining our online society Application.<br>"
		     		+ "<h4><u>Please Find your login details here :</u></h4>"
		     		+ "Username    : "+name+" ,"
     				+ "<br>Secret Code : "+pass
     						+ "<br><br>Please Don't Share Your personal details to anyone.</code>", "text/html");  
		       
		     
		     
		    //send the message  
		     Transport.send(message);  
		  
		     System.out.println("message sent successfully...");  
		   
		     } catch (MessagingException e) {e.printStackTrace();}  
	}
}
