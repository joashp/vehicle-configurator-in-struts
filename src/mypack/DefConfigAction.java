package mypack;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.apache.struts2.interceptor.SessionAware;

public class DefConfigAction implements SessionAware
{
	//private String mid="SD_MR_SDZ";
	EntityManagerFactory emf;
	
	public DefConfigAction()
	{
		
		emf=SingletonCon.getEntityManagerFactory();
		if(emf!=null)
		System.out.println("in sa");
	}
	
	private String model_Id;
	private String accelaration;
	private String color;
	private String dimension;
	private String displacement;
	private String engine;
	private String model_Image;
	private String model_Name;
	private int price;
	private String seating_Capacity;
	private String top_Speed;
	private List mylist;
	
	public final List getMylist()
	{
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2");
			q.setParameter(1,ses());
			q.setParameter(2,"Standard");
			mylist=q.getResultList();
			transaction.commit();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return mylist;
	}

	
	public final void setMylist(List mylist) {
		this.mylist = mylist;
	}

	
	public final List getInterior()
	{
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2");
			q.setParameter(1,ses());
			q.setParameter(2,"Interior");
			interior=q.getResultList();
			transaction.commit();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return interior;
	}

	
	public final void setInterior(List interior) {
		this.interior = interior;
	}

	
	public final List getExterior() 
	{
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			Query q=manager.createQuery("Select k from ModelFeature k where k.model_Id=?1 and k.feature_Type=?2");
			q.setParameter(1,ses());
			q.setParameter(2,"Exterior");
			exterior=q.getResultList();
			transaction.commit();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return exterior;
		
	}

	
	public final void setExterior(List exterior) {
		this.exterior = exterior;
	}

	private List interior;
	private List exterior;


	public String getModel_Id() {
		return this.model_Id;
	}

	public void setModel_Id(String model_Id) {
		this.model_Id = model_Id;
	}

	public String getAccelaration() {
		return this.accelaration;
	}

	public void setAccelaration(String accelaration) {
		this.accelaration = accelaration;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDimension() {
		return this.dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	public String getDisplacement() {
		return this.displacement;
	}

	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}

	public String getEngine() {
		return this.engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}

	public String getModel_Image() {
		return this.model_Image;
	}

	public void setModel_Image(String model_Image) {
		this.model_Image = model_Image;
	}

	public String getModel_Name() {
		return this.model_Name;
	}

	public void setModel_Name(String model_Name) {
		this.model_Name = model_Name;
		session.put("mname", model_Name);
	}

	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
		session.put("bprice", price);
	}

	public String getSeating_Capacity() {
		return this.seating_Capacity;
	}

	public void setSeating_Capacity(String seating_Capacity) {
		this.seating_Capacity = seating_Capacity;
	}

	public String getTop_Speed() {
		return this.top_Speed;
	}

	public void setTop_Speed(String top_Speed) {
		this.top_Speed = top_Speed;
	}

	
	private List general;

	
	public String execute()
	{
		System.out.println("fgfg");
		return "success";
	}
	
	Map session;
	@Override
	public void setSession(Map map)
	{
		session=map;
		
	}

	public List getGeneral() 
	{
		try
		{
			EntityManager manager=emf.createEntityManager();
			EntityTransaction transaction=manager.getTransaction();
			transaction.begin();
			
			
			Query q=manager.createQuery("Select k from CarModel k where k.model_Id=?1");
			q.setParameter(1,ses());
			general=q.getResultList();
			transaction.commit();
		/*	CarModel cc=new CarModel();
			cc.setColor("red");
			cc.setModel_Name("super");
			general=new ArrayList();
			general.add(cc);*/
		}
		catch(Exception e)
		{
			System.out.println("Exception in general list"+e);
		}
		return general;
	}

	public void setGeneral(List general) {
		this.general = general;
	}
	
	public String ses()
	{
		
		String str2 = session.get("model_Id").toString();
		String st3 = str2.substring(1,str2.length()-1);
		return st3;
	}
	
}
