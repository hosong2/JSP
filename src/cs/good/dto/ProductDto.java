package cs.good.dto;

public class ProductDto {
	private String id;
	private String image;
	private String itemname;
	private String companyname;
	private int price;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public ProductDto() {}
	public ProductDto(String id, String image, String itemname, String companyname, int price) {
		super();
		this.id = id;
		this.image = image;
		this.itemname = itemname;
		this.companyname = companyname;
		this.price = price;
	}
	
	
}
