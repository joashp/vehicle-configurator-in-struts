package mypack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import com.opensymphony.xwork2.ActionSupport;

public class RegistrationAction
{

	private static EntityManagerFactory emf;
	private static Connection con;

	public RegistrationAction() {
		emf = SingletonCon.getEntityManagerFactory();
		con = SingletonCon.getConnection();

	}

	private String user_Id;

	private String address;

	private String line1;
	private String line2;
	private String area_city_town;
	private String state;
	private String pincode;

	private String cell;

	private String company_ST_No;

	private String company_VAT_Reg_No;

	private String email_Id;

	private String fax;

	private String holding;

	private String i_Tax_Pan;

	private String name_Of_Authorized_Person;

	private String name_Of_The_Company;

	private String password;

	private String telephone;
	private String repassword;
	private List mylist;

	public String getHolding() {
		return holding;
	}

	public List getMylist() {
		mylist = new ArrayList();
		holdinglist.add("Proprietary");
		holdinglist.add("Pvt.Ltd");
		holdinglist.add("Ltd");
		return holdinglist;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getLine1() {
		return line1;
	}

	public void setLine1(String line1) {
		this.line1 = line1;
	}

	public String getLine2() {
		return line2;
	}

	public void setLine2(String line2) {
		this.line2 = line2;
	}

	public String getArea_city_town() {
		return area_city_town;
	}

	public void setArea_city_town(String area_city_town) {
		this.area_city_town = area_city_town;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	private List holdinglist;

	public String getUser_Id() {
		return this.user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getAddress() {
		return getLine1() + "," + getLine2() + "," + getArea_city_town() + ","
				+ getState() + "," + getPincode();
	}

	public String getCell() {
		return this.cell;
	}

	public void setCell(String cell) {
		this.cell = cell;
	}

	public String getCompany_ST_No() {
		return this.company_ST_No;
	}

	public void setCompany_ST_No(String company_ST_No) {
		this.company_ST_No = company_ST_No;
	}

	public String getCompany_VAT_Reg_No() {
		return this.company_VAT_Reg_No;
	}

	public void setCompany_VAT_Reg_No(String company_VAT_Reg_No) {
		this.company_VAT_Reg_No = company_VAT_Reg_No;
	}

	public String getEmail_Id() {
		return this.email_Id;
	}

	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public static EntityManagerFactory getEmf() {
		return emf;
	}

	public List getHoldinglist() {
		holdinglist = new ArrayList();
		holdinglist.add("Proprietary");
		holdinglist.add("Pvt.Ltd");
		holdinglist.add("Ltd");
		return holdinglist;
	}

	public void setHolding(String holding) {
		this.holding = holding;
	}

	public String getI_Tax_Pan() {
		return this.i_Tax_Pan;
	}

	public void setI_Tax_Pan(String i_Tax_Pan) {
		this.i_Tax_Pan = i_Tax_Pan;
	}

	public String getName_Of_Authorized_Person() {
		return this.name_Of_Authorized_Person;
	}

	public void setName_Of_Authorized_Person(String name_Of_Authorized_Person) {
		this.name_Of_Authorized_Person = name_Of_Authorized_Person;
	}

	public String getName_Of_The_Company() {
		return this.name_Of_The_Company;
	}

	public void setName_Of_The_Company(String name_Of_The_Company) {
		this.name_Of_The_Company = name_Of_The_Company;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public boolean validateUser() throws SQLException 
	{
		boolean flag = true;
		String user=" ";
		String pass=" ";
		int count = 0;
		String query = "select User_Id,Password from users";

		PreparedStatement pst = con.prepareStatement(query);

		ResultSet rs = pst.executeQuery();
		while (rs.next())
		{

			if (getUser_Id().equalsIgnoreCase(rs.getString(1)))
			{
				//addFieldError("user_Id", "user already exits");
				//System.out.println("user already exits");
				count++;
			} 
			//else
				//addFieldError("user_Id","username available");
			
		}

		if (count > 0)
			return false;
		else
			return true;
	}

	public boolean validatePassword() 
	{
		String password = getPassword();
		String repassword = getRepassword();

		if (password.equalsIgnoreCase(repassword)) 
		{
			return true;
		} 
		else
			return false;
	}

	public String execute() throws SQLException 
	{
		try {
			EntityManager manager = emf.createEntityManager();
			EntityTransaction transaction = manager.getTransaction();
			User u = new User();
			u.setUser_Id(getUser_Id());
			u.setPassword(getPassword());
			u.setName_Of_The_Company(getName_Of_The_Company());
			u.setAddress(getAddress());
			u.setTelephone(getTelephone());
			u.setCell(getCell());
			u.setFax(getFax());
			u.setHolding(getHolding());
			u.setEmail_Id(getEmail_Id());
			u.setName_Of_Authorized_Person(getName_Of_Authorized_Person());
			u.setCompany_ST_No(getCompany_ST_No());
			u.setCompany_VAT_Reg_No(getCompany_VAT_Reg_No());
			u.setI_Tax_Pan(getI_Tax_Pan());
			transaction.begin();
			manager.persist(u);
			transaction.commit();

		} 
		catch (Exception ex)
		{
			System.out.println(ex);
		}

		if (validateUser() && validatePassword())
		{
			return "success";
		}
		else
		{
			return "fail";
		}
	}

}
