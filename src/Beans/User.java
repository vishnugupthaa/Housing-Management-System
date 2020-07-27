package Beans;

public class User {
	
	String name;
	String email;
	String password;
	String phone;
	int role;
	int flatno;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getFlatno() {
		return flatno;
	}
	public void setFlatno(int flatno) {
		this.flatno = flatno;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", password=" + password + ", phone=" + phone + ", role="
				+ role + ", flatno=" + flatno + "]";
	}
	
	
	
}
