package cs.good.dto;

public class SignUpDto {
	private String id;
	private String pwd;
	private String name;
	private String adress;
	private String phone;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public SignUpDto() {}
	public SignUpDto(String id, String pwd, String name, String adress, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.adress = adress;
		this.phone = phone;
	}
	
}
