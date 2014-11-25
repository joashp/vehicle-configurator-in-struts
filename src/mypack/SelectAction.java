package mypack;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import org.apache.struts2.interceptor.SessionAware;

public class SelectAction implements SessionAware {
	public SelectAction() {
		emf = Persistence.createEntityManagerFactory("VConfigPU");
		manager = emf.createEntityManager();
		trans = manager.getTransaction();
	}

	Map session;
	private EntityManagerFactory emf;
	private EntityManager manager;
	private EntityTransaction trans;

	String type_Of_Car, manufacturer_Name, model_Name;
	int minimum_Quantity;

	// -----getter----------------------------------------------------------------------------------------
	public String getType_Of_Car() {
		return type_Of_Car;
	}

	public int getMinimum_Quantity() {
		return minimum_Quantity;
	}

	public String getManufacturer_Name() {
		return manufacturer_Name;
	}

	public String getModel_Name() {
		return model_Name;
	}

	// ----setter------------------------------------------------------------------------------------------
	public void setType_Of_Car(String type_Of_Car) {
		System.out.println("set type of car");
		this.type_Of_Car = type_Of_Car;
		System.out.println("type_Of_Car is\t" + this.type_Of_Car);
		if (type_Of_Car != null) {
			session.put("type_Of_Car", type_Of_Car);
		}
	}

	public void setMinimum_Quantity(int minimum_Quantity) {
		this.minimum_Quantity = minimum_Quantity;
		System.out.println("minimum_Quantity is\t" + this.minimum_Quantity);
		if (minimum_Quantity != 0) {
			session.put("minimum_Quantity", minimum_Quantity);
		}
	}

	public void setManufacturer_Name(String manufacturer_Name) {
		this.manufacturer_Name = manufacturer_Name;
		System.out.println("manufacturer_Name is\t" + this.manufacturer_Name);
		if (manufacturer_Name != null) {
			session.put("manufacturer_Name", manufacturer_Name);
		}
	}

	public void setModel_Name(String model_Name) {
		this.model_Name = model_Name;
		System.out.println("model_Name is\t" + this.model_Name);
		if (model_Name != null) {
			session.put("model_Name", model_Name);
		}

	}

	// --------list--------------------------------------------------------------------------------------------

	private List toclist;
	private List mannamelist;
	private List modnamelist;

	// ----type of car list
	public List getToclist() {
		System.out.println("in type of car list method");
		try {
			trans.begin();
			Query qry = manager.createQuery("select k.type_Of_Car from Segment k");
			toclist = qry.getResultList();
			trans.commit();
			// session.put("toc", toclist);
			System.out.println(toclist);

		} catch (Exception ee) {
			System.out.println("in get toc list" + ee);
		}
		return toclist;
	}

	// ----manufacture name list

	public List getMannamelist() {
		setMQ();
		System.out.println("in manufacture name list method" + type_Of_Car
				+ session.get("type_Of_Car"));
		if (type_Of_Car != null) {
			try {
				System.out.println("in try");
				trans.begin();
				Query qry = manager
						.createQuery("select distinct k.manufacturer_Name from ModelManufacturer k where k.type_Of_Car=?1");
				qry.setParameter(1, type_Of_Car);
				mannamelist = qry.getResultList();
				trans.commit();
				// session.put("toc", toclist);
				System.out.println(mannamelist);
			} catch (Exception ee) {
				System.out.println("in get man name list" + ee);
			}
		}
		return mannamelist;
	}

	// ---model name list

	public List getModnamelist() {
		System.out.println("in model name list method");
		if (manufacturer_Name != null) {
			try {
				trans.begin();
				Query qry = manager.createQuery("select k.model_Id from ModelManufacturer k where k.type_Of_Car=?1 and k.manufacturer_Name=?2");
				qry.setParameter(1, type_Of_Car);
				qry.setParameter(2, manufacturer_Name);
				List str = qry.getResultList();
				System.out.println(str.get(0));
				session.put("model_Id", str);
				
				Query qry2 = manager.createQuery("select m.model_Name from CarModel m where m.model_Id=?1");
				qry2.setParameter(1, str.get(0));
				modnamelist = qry2.getResultList();
				trans.commit();
				System.out.println(modnamelist);
			} catch (Exception ee) {
				System.out.println("in get mod name list" + ee);
			}
		}
		return modnamelist;
	}

	// -----------------------------------------------------------------------------------------------------------

	@Override
	public void setSession(Map map) {
		// TODO Auto-generated method stub
		session = map;
	}

	// execute
	public String execute() {
		System.out.println("in execute method");
		return "success";
	}

	public String disp() {
		return "final";
	}

	public void setMQ() {
		try {

			trans.begin();
			Query qry = manager.createQuery("select k.minimum_Quantity from Segment k where k.type_Of_Car=?1");
			qry.setParameter(1, type_Of_Car);
			List mlist = qry.getResultList();
			int s = Integer.parseInt(mlist.get(0).toString());
			setMinimum_Quantity(s);
			trans.commit();
			System.out.println(mlist);

		} catch (Exception ee) {
			System.out.println("in get toc list" + ee);
		}
	}

}