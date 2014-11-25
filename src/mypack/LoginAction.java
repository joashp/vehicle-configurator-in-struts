package mypack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Map;

import javax.jms.Session;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware
{
	private String userid;
	private String password;
	private Connection con;
	
	public LoginAction()
	{
		con=SingletonCon.getConnection();	
	}
	
	public String getUserid() 
	{
		return userid;
	}
	public void setUserid(String userid)
	{
		this.userid = userid;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password) 
	
	{
		this.password = password;
	}
	
	
	public String execute() throws SQLException 
	{
		String user=" ";
		String pass=" ";
		int count=0;
		String query="select User_Id,Password from users where User_Id=? and password=?";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setString(1, getUserid());
		pst.setString(2, getPassword());
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			user=rs.getString(1);
			pass=rs.getString(2);
			count++;
		}
		if(count>0)
		{
			session.put("user_Id", user);
			return "success";
		}
		else
		{
			addFieldError("userid", "Invalid Username or Password");
			return "error";
		}	
	}

	Map session;
	@Override
	public void setSession(Map map) 
	{
		session=map;	
	}
	
}
	
