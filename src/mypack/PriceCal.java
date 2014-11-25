package mypack;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;

public class PriceCal implements ServletRequestAware
{
	private HttpServletRequest map;

	@Override
	public void setServletRequest(HttpServletRequest arg0) 
	{
		// TODO Auto-generated method stub
		map=arg0;
		
	}
	
	public void calInterior()
	{
		for (int i = 0; i < 3; i++) 
		{
			
			map.getParameter("val"+i);
		}
	}

}
