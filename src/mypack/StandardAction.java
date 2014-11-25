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

public class StandardAction implements SessionAware,ServletRequestAware{
	private EntityManagerFactory emf;
	private EntityManager manager;
	private EntityTransaction trans;
	public static List test = new ArrayList();
	public StandardAction()
	{
		System.out.println("inside ctor");
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
		try
		{
		trans.begin();
		Query q=manager.createQuery("Select k from CarModel k where k.model_Id=?1");
		q.setParameter(1,ses());
		general=q.getResultList();
		trans.commit();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return general;
	}
	//--------------------------execute------------------------------------------------------------------------------------------
	public List mylist;
	public String int1,int2,int3,int4;

	public String execute()
	{
		
		System.out.println("in execute");
		test.add("in execute");
		session.put("test", test);
		List mylist2 = new ArrayList();
		mylist2.add("SBLT");
		mylist2.add("ABG");
		mylist2.add("TRSM");
		mylist2.add("ABS");
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2 and k.is_Configurable=?3");
			q.setParameter(1,ses());
			q.setParameter(2,"Standard");
			q.setParameter(3,1);
			mylist=q.getResultList();
			
			//tran
			System.out.println(mylist); 
			session.put("val", mylist);
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("SBLT"))
				{
					int1=mylist.get(i).toString();
					test.add("in execute int1");
					session.put("test", test);
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("ABG"))
				{
					int2=mylist.get(i).toString();
					test.add("in execute int2");
					session.put("test", test);
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("TRSM"))
				{
					int3=mylist.get(i).toString();
					test.add("in execute int3");
					session.put("test", test);
				}
			}
			for (int i = 0; i < mylist.size(); i++) 
			{
				if(mylist.get(i).toString().equalsIgnoreCase("ABS"))
				{
					int4=mylist.get(i).toString();
					test.add("in execute int4");
					session.put("test", test);
				}
			}
			System.out.println("after execute-------------------------------------------------------------------------");
			/*
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(0).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int1=mylist.get(0).toString();
					System.out.println(mylist.get(0).toString());
					session.put("1", int1);
					System.out.println("int1");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(1).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int2=mylist.get(1).toString();
					System.out.println(mylist.get(1).toString());
					session.put("2", int2);
					System.out.println("int2");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(2).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int3=mylist.get(2).toString();
					System.out.println(mylist.get(2).toString());
					session.put("3", int3);
					System.out.println("int3");
				}
			}
			for (int i = 0; i < mylist2.size(); i++) 
			{
				if(mylist.get(3).toString().equalsIgnoreCase(mylist2.get(i).toString()))
				{
					int4=mylist.get(3).toString();
					System.out.println(mylist.get(3).toString());
					session.put("4", int4);
					System.out.println("int4");
				}
			}
			*/
			transaction.commit();
			
		}
		catch(Exception e)
		{
			System.out.println("In eecute exception"+e);
		}
		
		return "success";
	}
	//---------------------------list----------------------------------------------------
	public List sbltlist;
	public List abglist;
	public List trsmlist;
	public List abslist;
	
	
	public List getSbltlist() {
		try
		{
		//if(int1!=null)
			{
				System.out.println("in sbltlist");
				test.add("in sbltlist");
				session.put("test", test);
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int1);
				sbltlist=q.getResultList();
				System.out.println(sbltlist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in sbltlist"+e);
		}
		return sbltlist;
	}

	public List getAbglist() {
		try
		{
		//if(int2!=null)
			{
				System.out.println("in abglist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int2);
				abglist=q.getResultList();
				System.out.println(abglist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in abglist"+e);
		}
		return abglist;
	}

	public List getTrsmlist() {
		try
		{
		//if(int3!=null)
			{
				System.out.println("in trsmlist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int3);
				trsmlist=q.getResultList();
				System.out.println(trsmlist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in trsmlist"+e);
		}
		return trsmlist;
	}

	public List getAbslist() {
		try
		{
		//if(int4!=null)
			{
				System.out.println("in abslist");
				trans.begin();
				Query q=manager.createQuery("Select k.alternate_Features from FeatureMaster k where k.model_Id=?1 and k.feature_Id=?2");
				q.setParameter(1,ses());
				q.setParameter(2,int4);
				abslist=q.getResultList();
				System.out.println(abslist);
				trans.commit();
			}
		}
		catch(Exception e)
		{
			System.out.println("exception in abslist"+e);
		}
		return abslist;
	}

		//--------------------------values-----------------------------
		public String SBLT,ABG,TRSM,ABS;
		public String getSBLT() {
			return SBLT;
		}

		public void setSBLT(String SBLT) {
			this.SBLT = SBLT;
			if(SBLT!=null)
			{
				session.put("sblt", SBLT);
			}
		}

		public String getABG() {
			return ABG;
		}

		public void setABG(String ABG) {
			this.ABG = ABG;
			if(ABG!=null)
			{
				session.put("abg", ABG);
			}
		}

		public String getTRSM() {
			return TRSM;
		}

		public void setTRSM(String TRSM) {
			this.TRSM = TRSM;
			if(TRSM!=null)
			{
				session.put("trsm", TRSM);
			}
		}

		public String getABS() {
			return ABS;
		}

		public void setABS(String ABS) {
			this.ABS = ABS;
			if(ABS!=null)
			{
				session.put("abs", ABS);
			}
		}
		public String ses()
		{
			
			String str2 = session.get("model_Id").toString();
			String st3 = str2.substring(1,str2.length()-1);
			return st3;
		}
}
