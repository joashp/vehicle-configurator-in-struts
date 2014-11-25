package mypack;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

public class ExteriorAction implements SessionAware,ServletRequestAware {

	private EntityManagerFactory emf;
	private EntityManager manager;
	private EntityTransaction trans;
	public ExteriorAction()
	{
		emf=SingletonCon.getEntityManagerFactory();
		manager = emf.createEntityManager();
		trans = manager.getTransaction();
		if(emf!=null)
			System.out.println("in sa");
	}
	
	//---car model properties----------------------------------------------------
	private String color;

	private String dimension;

	private String displacement;
	
	private String engine;

	private String model_Image;

	private String model_Name;

	private String seating_Capacity;

	private String top_Speed;

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	public String getDisplacement() {
		return displacement;
	}

	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}

	public String getEngine() {
		return engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}

	public String getModel_Image() {
		return model_Image;
	}

	public void setModel_Image(String model_Image) {
		this.model_Image = model_Image;
	}

	public String getModel_Name() {
		return model_Name;
	}

	public void setModel_Name(String model_Name) {
		this.model_Name = model_Name;
	}

	public String getSeating_Capacity() {
		return seating_Capacity;
	}

	public void setSeating_Capacity(String seating_Capacity) {
		this.seating_Capacity = seating_Capacity;
	}

	public String getTop_Speed() {
		return top_Speed;
	}

	public void setTop_Speed(String top_Speed) {
		this.top_Speed = top_Speed;
	}
	//-----------session and request------------------------------------------
	public Map session;
	public HttpServletRequest request;
	@Override
	public void setSession(Map map) 
	{
		session=map;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) 
	{
			request=arg0;
	}
	//----------------------general list----------------------------------------
	private List general;
	public List getGeneral() 
	{	
		System.out.println("in general");
		trans.begin();
		Query q=manager.createQuery("Select k from CarModel k where k.model_Id=?1");
		q.setParameter(1,ses());
		general=q.getResultList();
		trans.commit();
		return general;
	}

	//--------------------------execute------------------------------------------------------------------------------------------
	public List mylist;
	public String int1,int2,int3,int4;

	public String execute()
	{
		System.out.println("in execute");
		List mylist2 = new ArrayList();
		mylist2.add("WH");
		mylist2.add("SS");
		mylist2.add("SR");
		mylist2.add("FFL");
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2 and k.is_Configurable=?3");
			q.setParameter(1,ses());
			q.setParameter(2,"Exterior");
			q.setParameter(3,1);
			mylist=q.getResultList();
			System.out.println(mylist); 
			
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("WH"))
				{
					int1=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("SS"))
				{
					int2=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("SR"))
				{
					int3=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("FFL"))
				{
					int4=mylist.get(i).toString();
				}
			}
			/*
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(0).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int1=mylist.get(0).toString();
					System.out.println(mylist.get(0).toString());
					System.out.println("int1");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(1).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int2=mylist.get(1).toString();
					System.out.println(mylist.get(1).toString());
					System.out.println("int2");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(2).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int3=mylist.get(2).toString();
					System.out.println(mylist.get(2).toString());
					System.out.println("int3");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(3).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int4=mylist.get(3).toString();
					System.out.println(mylist.get(3).toString());
					System.out.println("int4");
				}
			}*/
			transaction.commit();
			
		}
		catch(Exception e)
		{
			System.out.println("In eecute exception"+e);
		}
		
		return "success";
	}
	//---------------------------list----------------------------------------------------
	public List whlist;
	public List sslist;
	public List srlist;
	public List ffllist;
	
	public List getWhlist() {
		try
		{
		//if(int1!=null)
			{
				System.out.println("in whlist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int1);
				whlist=q.getResultList();
				System.out.println(whlist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in whlist"+e);
		}
		return whlist;
	}

	public List getSslist() {
		try
		{
		//if(int2!=null)
			{
				System.out.println("in sslist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int2);
				sslist=q.getResultList();
				System.out.println(sslist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in sslist"+e);
		}
		return sslist;
	}

	public List getSrlist() {
		try
		{
		//if(int3!=null)
			{
				System.out.println("in srlist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int3);
				srlist=q.getResultList();
				System.out.println(srlist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in srlist"+e);
		}
		return srlist;
	}

	public List getFfllist() {
		try
		{
		//if(int4!=null)
			{
				System.out.println("in ffllist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int4);
				ffllist=q.getResultList();
				System.out.println(ffllist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in ffllist"+e);
		}
		return ffllist;
	}
	
	//--------------------------values-----------------------------
			public String WH,SS,SR,FFL;
			public String getWH() {
				return WH;
			}

			public void setWH(String WH) {
				this.WH = WH;
				if(WH!=null)
				{
					session.put("wh", WH);
				}
			}

			public String getSS() {
				return SS;
			}

			public void setSS(String SS) {
				this.SS = SS;
				if(SS!=null)
				{
					session.put("ss", SS);
				}
			}

			public String getSR() {
				return SR;
			}

			public void setSR(String SR) {
				this.SR = SR;
				if(SR!=null)
				{
					session.put("sr", SR);
				}
			}

			public String getFFL() {
				return FFL;
			}

			public void setFFL(String FFL) {
				this.FFL = FFL;
				if(FFL!=null)
				{
					session.put("ffl", FFL);
				}
			}
			public String ses()
			{
				
				String str2 = session.get("model_Id").toString();
				String st3 = str2.substring(1,str2.length()-1);
				return st3;
			}
}
