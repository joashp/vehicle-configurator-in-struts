package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the model_manufacturer database table.
 * 
 */
@Entity
@Table(name="model_manufacturer")
public class ModelManufacturer implements Serializable {
	private static final long serialVersionUID = 1L;

	private String manufacturer_Name;
	@Id
	private String model_Id;

	private String type_Of_Car;

    public ModelManufacturer() {
    }

	public String getManufacturer_Name() {
		return this.manufacturer_Name;
	}

	public void setManufacturer_Name(String manufacturer_Name) {
		this.manufacturer_Name = manufacturer_Name;
	}

	public String getModel_Id() {
		return this.model_Id;
	}

	public void setModel_Id(String model_Id) {
		this.model_Id = model_Id;
	}

	public String getType_Of_Car() {
		return this.type_Of_Car;
	}

	public void setType_Of_Car(String type_Of_Car) {
		this.type_Of_Car = type_Of_Car;
	}

}