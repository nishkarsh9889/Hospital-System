package com.entity;

public class Doctor {
	private int id;
	private String fullName;
	private String qualification;
	private String specialist;
	private String email;
	private String mobNo;
	private String password;

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(int id, String fullName, String qualification, String specialist, String email, String mobNo,
			String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}

	public Doctor(String fullName, String qualification, String specialist, String email, String mobNo,
			String password) {
		super();
		this.fullName = fullName;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobNo = mobNo;
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}