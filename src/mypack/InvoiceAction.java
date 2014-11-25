package mypack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.apache.struts2.interceptor.SessionAware;

public class InvoiceAction  implements SessionAware
{
	
	
	private List users;
	private List cardetails;
	//---------------card details---------------------------------------
	public List getCardetails() 
	{

			System.out.println("getcardetails");
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			Query q1=manager.createQuery("select k from PriceMaster k where k.model_Id=?1");
			q1.setParameter(1,ses());
			cardetails=q1.getResultList();
			transaction.commit();
			return cardetails;
	}
	public void setCardetails(List cardetails) {
		this.cardetails = cardetails;
	}

	private EntityManagerFactory emf;
	private Connection con;
	//------------constructor----------------------------------------
	public InvoiceAction()
	{
		emf=SingletonCon.getEntityManagerFactory();
		con=SingletonCon.getConnection();
		if(emf!=null)
		System.out.println("in sapsdpfop");
	}
	//--------------get users----------------------------------------
	public List getUsers() 

	{	
		try
		{
			System.out.println("getUsers");
		EntityManager manager=emf.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		Query q1=manager.createQuery("select k from User k where k.user_Id=?1");
		q1.setParameter(1,session.get("user_Id"));
		users=q1.getResultList();
		transaction.commit();
		}
		catch(Exception ee)
		{
			System.out.println(ee);
		}
		return users;
	}

	public void setUsers(List users) {
		this.users = users;
	}
	
	//---------------update standard price-------------------------------------
	int stdprice=0;
	public void updateStandard() throws SQLException
	{
		/*List standard=new ArrayList();
		standard.add(0, "Y");
		standard.add(1,"zzzz");
		*/
		System.out.println("inside update std "+std);
		
		
		for(int i=0;i<std.size();i++)
		{
			String query="select price from feature_master where alternate_features=?";
			PreparedStatement ps1=con.prepareStatement(query);
			ps1.setString(1,std.get(i).toString());
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				stdprice+=rs.getInt(1);
			}
		}
		System.out.println("std price= "+stdprice);
		/*
		String q2="update price_master set standard=? where model_Id=?";
		PreparedStatement ps2=con.prepareStatement(q2);
		ps2.setInt(1, stdprice);
		ps2.setString(2, "SD_MR_SDZ");
		int i=ps2.executeUpdate();
		if(i>0)
		{
			System.out.println("standard updated");
		}
		else
		{
			System.out.println("not updated");
		}
		*/
	}
	//--------------update interior price-----------------------------------
	int inprice=0;
	public void updateInterior() throws SQLException
	{
		/*List interior=new ArrayList();
		interior.add(0, "Sony");
		interior.add(1,"Garmin Navi");
		*/
		System.out.println("inside update inter "+inter);
	
		for(int i=0;i<inter.size();i++)
		{
			String query="select price from feature_master where alternate_features=?";
			PreparedStatement ps1=con.prepareStatement(query);
			ps1.setString(1,inter.get(i).toString());
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				inprice+=rs.getInt(1);
			}
		}
		System.out.println("inter price= "+inprice);
		/*
		String q2="update price_master set interior=? where model_Id=?";
		PreparedStatement ps2=con.prepareStatement(q2);
		ps2.setInt(1, price);
		ps2.setString(2, "SD_MR_SDZ");
		int i=ps2.executeUpdate();
		if(i>0)
		{
			System.out.println("interior updated");
		}
		else
		{
			System.out.println("interior not updated");
		}
		*/
		
	}
	//--------------update exterior price---------------------------------------------
	int exprice=0;
	public void updateExterior() throws SQLException
	{
		/*List Exterior=new ArrayList();
		Exterior.add(0, "");
		Exterior.add(1,"");
		*/
		System.out.println("inside update exter "+exter);
		for(int i=0;i<exter.size();i++)
		{
			String query="select price from feature_master where alternate_features=?";
			PreparedStatement ps1=con.prepareStatement(query);
			ps1.setString(1,exter.get(i).toString());
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				exprice+=rs.getInt(1);
			}
		}
		System.out.println("exter price= "+exprice);
		/*
		String q2="update price_master set exterior=? where model_Id=?";
		PreparedStatement ps2=con.prepareStatement(q2);
		ps2.setInt(1, price);
		ps2.setString(2, "SD_MR_SDZ");
		int i=ps2.executeUpdate();
		if(i>0)
		{
			System.out.println("Exterior updated");
		}
		else
		{
			System.out.println("Exterior not updated");
		}
		*/
		
	}
	public List std;
	public List inter;
	public List exter;
	public List accessories;
	//-----------------------session of all three lists-------------------------------------
	public void getSessionVal()
	{
		try
		{
			
			System.out.println("in session get");
			std=new ArrayList();
			inter=new ArrayList();
			exter=new ArrayList();
		if(session.get("sblt")!=null)
		{
			std.add(session.get("sblt").toString());
			System.out.println("1");
		}
			if(session.get("abg")!=null)
				std.add(session.get("abg").toString());
			if(session.get("trsm")!=null)
				std.add(session.get("trsm").toString());
			System.out.println("2");
			if(session.get("abs")!=null)
				std.add(session.get("abs").toString());
			System.out.println("3");
			System.out.println(std);
			session.put("standard", std);
			
			if(session.get("msc")!=null)
				inter.add(session.get("msc").toString());
			if(session.get("acs")!=null)
				inter.add(session.get("acs").toString());
			if(session.get("gs")!=null)
				inter.add(session.get("gs").toString());
			if(session.get("st")!=null)
				inter.add(session.get("st").toString());
			System.out.println(inter);
			session.put("interior", inter);
			if(session.get("wh")!=null)
				exter.add(session.get("wh").toString());
			if(session.get("ss")!=null)
				exter.add(session.get("ss").toString());
			if(session.get("sr")!=null)
				exter.add(session.get("sr").toString());
			if(session.get("ffl")!=null)
				exter.add(session.get("ffl").toString());
			System.out.println(exter);
			session.put("exterior",exter);
			
			accessories=new ArrayList();
			if(session.get("access")!=null)
			{
				accessories=(ArrayList)session.get("access");
			}
	
		}
		catch(Exception ee)
		{
			System.out.println(ee);
		}
	}
	
	//------accesories calculation------------------
	private int accessories_cost;
	public void accessoriesCal()
	{
		System.out.println("in acc cost");
		for(int i=0;i<accessories.size();i++)
		{
				if(accessories.get(i).toString().equalsIgnoreCase("Car Cover"))
				{
					accessories_cost+=2000;
					
				}
				if(accessories.get(i).toString().equalsIgnoreCase("Car Freshner"))
				{
					accessories_cost+=500;
					
				}
				if(accessories.get(i).toString().equalsIgnoreCase("Utility Box"))
				{
					accessories_cost+=1000;
					
				}
				if(accessories.get(i).toString().equalsIgnoreCase("First Aid Box"))
				{
					accessories_cost+=700;
					
				}
				if(accessories.get(i).toString().equalsIgnoreCase("Stearing Cover"))
				{
					accessories_cost+=800;
					
				}
				if(accessories.get(i).toString().equalsIgnoreCase("Wash Kit"))
				{
					accessories_cost+=600;
					
				}
		}
		
	}
	
	
	
	
	public void insertPrice()
	{
		System.out.println("inside insert price ");
		PriceMaster pm = new PriceMaster();
		
		EntityManager manager=emf.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		Random r=new Random();
		pm.setRecordNo(r.nextInt());
		pm.setModel_Id(ses());    //session
		pm.setModelName(session.get("mname").toString()); //session
		int bp = getBasePrice();
		pm.setBase_price(bp);		//session
		pm.setStandard(stdprice);
		pm.setInterior(inprice);
		pm.setExterior(exprice);
		pm.setQuantity(Integer.parseInt(session.get("minimum_Quantity").toString()));	
		pm.setAccessoriesCost(accessories_cost);
		
		//session
		
		int tt = (bp + stdprice + inprice + exprice+accessories_cost) * Integer.parseInt(session.get("minimum_Quantity").toString());
		System.out.println(tt);
		pm.setTotalPrice(tt);
		
		
		transaction.begin();
		manager.persist(pm);
		transaction.commit();
		
	}
	
	public int getBasePrice() 
	{
		int bprice=0;
		try
		{
			String query="select price from car_models where model_id=?";
			PreparedStatement ps1=con.prepareStatement(query);
			ps1.setString(1,ses());
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				bprice+=rs.getInt(1);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		System.out.println(bprice);
		return bprice;
	}
	
	public List getStd() 
	{
		return std;
	}
	public List getInter() 
	{
		return inter;
	}
	public List getExter() 
	{
		return exter;
	}
	
	
	//to get standard features
	
	
	private List standardFeatures;
	
	public List getStandardFeatures() 
	{
		try
		{
		System.out.println("in stand fetures");
		EntityManager manager=emf.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		for(int i=0;i<std.size();i++)
		{
		transaction.begin();
	
		Query q=manager.createQuery("Select m,f from ModelFeature m,FeatureMaster f where m.feature_Id=f.feature_Id and m.model_Id=?1 and m.is_Configurable=?2 and m.feature_Type=?3 and f.alternate_Features=?4");
		q.setParameter(1,ses());
		q.setParameter(2,1);
		q.setParameter(3,"standard");
		System.out.println(std.get(i));
		q.setParameter(4,std.get(i));
		List temp=q.getResultList();
		
		Object arr1[]=(Object[])temp.get(0);
		System.out.println("list is"+temp);
		System.out.println(arr1[0]);
		standardFeatures=new ArrayList();
		 for(int j=0;j<arr1.length;j++)
		 {
			 	standardFeatures.add(j);
		 }
		transaction.commit();
		}
		
		}
		catch(Exception ww)
		{
			System.out.println(ww);
		}
		System.out.println(standardFeatures);
		return standardFeatures;
	}
	public void setStd(List std) {
		this.std = std;
	}
	public void setInter(List inter) {
		this.inter = inter;
	}
	public void setExter(List exter) {
		this.exter = exter;
	}
	public void setStandardFeatures(List standardFeatures) {
		this.standardFeatures = standardFeatures;
	}
	public String execute() throws SQLException
	{
		getSessionVal();
		
		System.out.println("-");
		updateStandard();
		System.out.println("--");
		updateInterior();
		System.out.println("---");
		updateExterior();
		System.out.println("----------:");
		accessoriesCal();
		System.out.println("in execute");
		insertPrice();
		
		return "success";
	}
	
	public Map session;
	
	@Override
	public void setSession(Map map) 
	{
		session= map;
	}
	//-----------------------------price master attributes------------------------
	private int recordNo;

	private int base_price;

	private int exterior;

	private int interior;

	private String model_Id;

	private String modelName;

	private int quantity;

	private int standard;
	
	

	private int totalPrice;
	private int accessoriesCost;
	
	public int getAccessoriesCost() {
		return accessoriesCost;
	}
	public void setAccessoriesCost(int accessoriesCost) {
		this.accessoriesCost = accessoriesCost;
	}
	public int getRecordNo() {
		return this.recordNo;
	}

	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}

	public int getBase_price() {
		return this.base_price;
	}

	public void setBase_price(int base_price) {
		this.base_price = base_price;
	}

	public int getExterior() {
		return this.exterior;
	}

	public void setExterior(int exterior) {
		this.exterior = exterior;
	}

	public int getInterior() {
		return this.interior;
	}

	public void setInterior(int interior) {
		this.interior = interior;
	}

	public String getModel_Id() {
		return this.model_Id;
	}

	public void setModel_Id(String model_Id) {
		this.model_Id = model_Id;
	}

	public String getModelName() {
		return this.modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getStandard() {
		return this.standard;
	}

	public void setStandard(int standard) {
		this.standard = standard;
	}

	public int getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
	
	public String ses()
	{
		
		String str2 = session.get("model_Id").toString();
		String st3 = str2.substring(1,str2.length()-1);
		return st3;
	}
	
	

}
