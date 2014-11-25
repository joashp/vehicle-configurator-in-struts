package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the price_master database table.
 * 
 */
@Entity
@Table(name="price_master")
public class PriceMaster implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="record_no")
	private int recordNo;

	@Column(name="accessories_cost")
	private int accessoriesCost;

	private int base_price;

	private int exterior;

	private int interior;

	private String model_Id;

	@Column(name="model_name")
	private String modelName;

	private int quantity;

	private int standard;

	@Column(name="total_price")
	private int totalPrice;

    public PriceMaster() {
    }

	public int getRecordNo() {
		return this.recordNo;
	}

	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}

	public int getAccessoriesCost() {
		return this.accessoriesCost;
	}

	public void setAccessoriesCost(int accessoriesCost) {
		this.accessoriesCost = accessoriesCost;
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

}