package mypack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class ForgetPassword extends ActionSupport 
{

	
private String userid;
private String password;
	private  String repassword;
	private Connection con;
	
public	ForgetPassword()
	{
		con=SingletonCon.getConnection();	
	}
	
	
	public String getUserid() {
		return userid;
	}



	public void setUserid(String userid) {
		this.userid = userid;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRepassword() {
		return repassword;
	}



	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public boolean validateUser() throws SQLException
	{
		boolean flag=true;
		String user=" ";
		String pass=" ";
		int count=0;
		String query="select User_Id,Password from users";
		
		PreparedStatement pst=con.prepareStatement(query);
		
	
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			
			if(getUserid().equalsIgnoreCase(rs.getString(1)))
			{
				System.out.println("equals");
				count++;
			}
			else
				System.out.println("not equals");
		}
		
		if(count>0)
			return true;
		else
			return false;
	} 
	public boolean validatePassword()
	{
		String password=getPassword();
		String repassword=getRepassword();
		
		if(password.equalsIgnoreCase(repassword))
		{
			return true;
		}
		else
			return false;
	}

	public String execute() throws SQLException
	{
		if(validateUser() && validatePassword())
		{
			String query="update users set password=? where user_id=?";
			PreparedStatement pst=con.prepareStatement(query);
			
			pst.setString(1,getRepassword());
			pst.setString(2, getUserid());
			int mod=pst.executeUpdate();
			return "success";
		}
		else
		{
				addFieldError("userid", "Invalid Username");
				return "error";
		}	
	}
}
