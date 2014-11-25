package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the feature_master database table.
 * 
 */
@Entity
@Table(name="feature_master")
public class FeatureMaster implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String record_No;
	private String model_Id;
	private String alternate_Features;

	private String feature_Id;

	

	private String price;

    public FeatureMaster() {
    }

	public String getRecord_No() {
		return this.record_No;
	}

	public void setRecord_No(String record_No) {
		this.record_No = record_No;
	}

	public String getAlternate_Features() {
		return this.alternate_Features;
	}

	public void setAlternate_Features(String alternate_Features) {
		this.alternate_Features = alternate_Features;
	}

	public String getFeature_Id() {
		return this.feature_Id;
	}

	public void setFeature_Id(String feature_Id) {
		this.feature_Id = feature_Id;
	}

	public String getModel_Id() {
		return this.model_Id;
	}

	public void setModel_Id(String model_Id) {
		this.model_Id = model_Id;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString()
	{
		return alternate_Features;
		
	}
	
	

}