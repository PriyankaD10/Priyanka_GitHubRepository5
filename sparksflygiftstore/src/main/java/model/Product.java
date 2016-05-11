package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;



import javax.persistence.Transient;

@Entity
public class Product {

public Product(){
			
	}
	public String toString(){
		
		return id+" "+productname+" "+productdescription+" "+productprice+" "+category+" "+status;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String productname;
	private String productdescription;
	private float productprice;
	private String category;
	private String status;
	@Transient
	private MultipartFile image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	public float getProductprice() {
		return productprice;
	}
	public void setProductprice(float productprice) {
		this.productprice = productprice;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public MultipartFile getImage() {
		return this.image;
	}
	
	public void setImage(MultipartFile file) {
		 this.image=file;
	}
	/*public Product(int productID, String productName, String productDescription, float productPrice, String category,
			String status) {
		
		this.id = productID;
		this.productname = productName;
		this.productdescription = productDescription;
		this.productprice = productPrice;
		this.category = category;
		this.status = status;
	}*/

}
