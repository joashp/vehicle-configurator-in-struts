package mypack;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.sun.org.apache.bcel.internal.generic.NEWARRAY;

public class DummyClass implements SessionAware 
{
	private static List xx=new ArrayList();
	private Map session;
	public DummyClass()
	{
		System.out.println("ctor");
		xx.add("isnide DummyClass");
		session.put("xx",xx);
	}
	public String execute()
	{
		System.out.println("inside execute");
		return "success";
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		session=arg0;
	}
	

}
