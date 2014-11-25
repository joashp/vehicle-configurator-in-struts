package mypack;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the model_features database table.
 * 
 */
@Entity
@Table(name="model_features")
public class ModelFeature implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int record_No;

	private String default_Value;

	private String feature_Description;

	private String feature_Id;

	private String feature_Type;

	private int is_Configurable;

	private String model_Id;

    public ModelFeature() {
    }

	public int getRecord_No() {
		return this.record_No;
	}

	public void setRecord_No(int record_No) {
		this.record_No = record_No;
	}

	public String getDefault_Value() {
		return this.default_Value;
	}

	public void setDefault_Value(String default_Value) {
		this.default_Value = default_Value;
	}

	public String getFeature_Description() {
		return this.feature_Description;
	}

	public void setFeature_Description(String feature_Description) {
		this.feature_Description = feature_Description;
	}

	public String getFeature_Id() {
		return this.feature_Id;
	}

	public void setFeature_Id(String feature_Id) {
		this.feature_Id = feature_Id;
	}

	public String getFeature_Type() {
		return this.feature_Type;
	}

	public void setFeature_Type(String feature_Type) {
		this.feature_Type = feature_Type;
	}

	public int getIs_Configurable() {
		return this.is_Configurable;
	}

	public void setIs_Configurable(int is_Configurable) {
		this.is_Configurable = is_Configurable;
	}

	public String getModel_Id() {
		return this.model_Id;
	}

	public void setModel_Id(String model_Id) {
		this.model_Id = model_Id;
	}
	@Override
	public String toString() {
		
		return feature_Id;
	}

}