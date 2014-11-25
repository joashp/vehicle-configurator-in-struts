package mypack;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.sql.DataSource;

public class SingletonCon 
{
	private static EntityManagerFactory emf;
	private static DataSource ds;
	private static Connection con;
	static
	{
		emf=Persistence.createEntityManagerFactory("VConfigPU");
		
	}
	public static EntityManagerFactory getEntityManagerFactory()
	{
		return emf;
	}
	
	public static Connection getConnection()
	{
		try {
				InitialContext context=new InitialContext();
				ds=(DataSource)context.lookup("Vconfig_Coeus_ds");
				con=ds.getConnection();
		
			} 
		
		catch (Exception e)
			{
				e.printStackTrace();
			}
			
			return con;
	}
}
