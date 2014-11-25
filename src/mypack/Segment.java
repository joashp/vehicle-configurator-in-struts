package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the segment database table.
 * 
 */
@Entity
public class Segment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String type_Of_Car;

	private int minimum_Quantity;

    public Segment() {
    }

	public String getType_Of_Car() {
		return this.type_Of_Car;
	}

	public void setType_Of_Car(String type_Of_Car) {
		this.type_Of_Car = type_Of_Car;
	}

	public int getMinimum_Quantity() {
		return this.minimum_Quantity;
	}

	public void setMinimum_Quantity(int minimum_Quantity) {
		this.minimum_Quantity = minimum_Quantity;
	}

}