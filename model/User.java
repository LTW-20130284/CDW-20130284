package com.shopbanquanao.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

// Chúng ta sử dụng các annotation của JPA để định nghĩa đối
 tượng User và cấu hình liên kết với bảng users trong cơ sở dữ liệu.

@Entity //  chỉ định rằng đối tượng User này tương ứng với một bảng trong cơ sở dữ liệu
@Table(name="users") // Chỉ định tên bảng
public class User {
	@Id // Sử dụng để xác định id là khóa chính của bảng
	long id;
	String name,email,
	password,	created_at,
	login_token,
	type,
	address,
	is_email_verified,
	mobile;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getLogin_token() {
		return login_token;
	}
	public void setLogin_token(String login_token) {
		this.login_token = login_token;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getIs_email_verified() {
		return is_email_verified;
	}
	public void setIs_email_verified(String is_email_verified) {
		this.is_email_verified = is_email_verified;
	}
}