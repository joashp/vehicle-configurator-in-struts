package mypack;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;


public class AccessAction implements SessionAware,ServletRequestAware
{
	Map session;
	HttpServletRequest request;
	public AccessAction()
	{
		
	}
	public List access;
	public List getAccess() 
	{
		access=new ArrayList();
		access.add("Car Cover");
		access.add("Car Freshner");
		access.add("Utility Box");
		access.add("First Aid Box");
		access.add("Stearing Cover");
		access.add("Wash Kit");
		return access;
	}

	public void setAccess(List access) 
	{
		
		this.access = access;
		session.put("access", access);
	}

	public String execute()
	{
	/*String arr[]=request.getParameterValues("access");
		for(int i=0;i<arr.length;i++)
		{
			System.out.println(arr[i]);
		}
		*/
		return "success";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session=arg0;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) 
	{
		request=arg0;
	}
}
