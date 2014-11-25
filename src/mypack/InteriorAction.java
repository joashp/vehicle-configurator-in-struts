package mypack;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

public class InteriorAction implements SessionAware,ServletRequestAware {

	private EntityManagerFactory emf;
	private EntityManager manager;
	private EntityTransaction trans;
	public InteriorAction()
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
	//----------------execute method----------------------------------------------------------
	public List mylist;
	public String int1,int2,int3,int4;
	
	public String execute()
	{
		System.out.println("in execute");
		List mylist2 = new ArrayList();
		mylist2.add("MSC");
		mylist2.add("ACS");
		mylist2.add("GS");
		mylist2.add("ST");
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2 and k.is_Configurable=?3");
			q.setParameter(1,ses());
			q.setParameter(2,"Interior");
			q.setParameter(3,1);
			mylist=q.getResultList();
			System.out.println(mylist); 
			
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("MSC"))
				{
					int1=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("ACS"))
				{
					int2=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("GS"))
				{
					int3=mylist.get(i).toString();
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("ST"))
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
	public List acslist;
	public List msclist;
	public List gpslist;
	public List stlist;
	
	/*
	public static int cn1=0;
	public int cn2=0;
	public int cn3=0;
	public int cn4=0;
	*/
	
	public List getAcslist() {
		//if(int2!=null)
		{
			System.out.println("in aclist");
			trans.begin();
			Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
			q.setParameter(1,ses());
			q.setParameter(2,int2);
			acslist=q.getResultList();
			trans.commit();
		}
		return acslist;
	}
	/*msclist=new ArrayList();
	msclist.add("one");
	msclist.add("two");
	msclist.add("three");*/
	public List getMsclist() {
		try
		{
		//if(int1!=null)
		{
			System.out.println("in msclist");
			trans.begin();
			Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
			q.setParameter(1,ses());
			q.setParameter(2,int1);
			msclist=q.getResultList();
			System.out.println(msclist);
			trans.commit();
		}
		}
		catch(Exception e)
		{
			System.out.println("exception in mslist"+e);
		}
		return msclist;
		
	}

	public List getGpslist() {
		//if(int3!=null)
		{
			System.out.println("in gpslist");
			trans.begin();
			Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
			q.setParameter(1,ses());
			q.setParameter(2,int3);
			gpslist=q.getResultList();
			trans.commit();
		}
		return gpslist;
	}

	public List getStlist() {
		//if(int4!=null)
		{
			System.out.println("in stlist");
			trans.begin();
			Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
			q.setParameter(1,ses());
			q.setParameter(2,int4);
			stlist=q.getResultList();
			trans.commit();
		}
		return stlist;
	}
	
	//--------------------------values-----------------------------
	public String ACS,GPS,ST,MSC;
	public String getACS() {
		return ACS;
	}

	public void setACS(String ACS) {
		this.ACS = ACS;
		if(ACS!=null)
		{
			session.put("acs", ACS);
		}
	}

	public String getGPS() {
		return GPS;
	}

	public void setGPS(String GPS) {
		this.GPS = GPS;
		if(GPS!=null)
		{
			session.put("gs", GPS);
		}
	}

	public String getST() {
		return ST;
	}

	public void setST(String ST) {
		this.ST = ST;
		if(ST!=null)
		{
			session.put("st", ST);
		}
	}

	public String getMSC() {
		return MSC;
	}

	public void setMSC(String MSC) {
		this.MSC = MSC;
		if(MSC!=null)
		{
			session.put("ms", MSC);
		}
	}
	public String ses()
	{
		
		String str2 = session.get("model_Id").toString();
		String st3 = str2.substring(1,str2.length()-1);
		return st3;
	}
	
}
