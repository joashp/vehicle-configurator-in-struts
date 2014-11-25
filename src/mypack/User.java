package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String user_Id;

	private String address;

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

    public User() {
    }

	public String getUser_Id() {
		return this.user_Id;
	}

	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getHolding() {
		return this.holding;
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

}