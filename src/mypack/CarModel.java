package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the car_models database table.
 * 
 */
@Entity
@Table(name="car_models")
public class CarModel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
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

    public CarModel() {
    }

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
	}

	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
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

}