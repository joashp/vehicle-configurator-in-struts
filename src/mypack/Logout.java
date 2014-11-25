package mypack;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

public class Logout implements SessionAware 
{
		
	public String execute()
	{
		//session.clear();
		return "success";
	}

	Map session;
	@Override
	public void setSession(Map map) 
	{
			session=map;
	}
}
