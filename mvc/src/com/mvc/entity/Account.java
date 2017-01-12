package com.mvc.entity;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="c_account")
public class Account implements Serializable{
	private static final long serialVersionUID = 1L;
	private int ID;
	private String name;
	private String password;
	private String email;
	private String school;
	private boolean IS_DELETE;
	private int sex;
	
	@Id
	@Basic(optional=false)
	@Column(name="ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	
	@Column(name="NAME")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name="PASSWORD")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name="EMAIL")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="IS_DELETE")
	public boolean isIS_DELETE() {
		return IS_DELETE;
	}
	public void setIS_DELETE(boolean iS_DELETE) {
		IS_DELETE = iS_DELETE;
	}
	@Column(name="SCHOOL")
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	@Column(name="SEX")
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	
}
