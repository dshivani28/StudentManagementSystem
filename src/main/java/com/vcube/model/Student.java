package com.vcube.model;

public class Student {
	 private int sid;
	 private String name;
	 private String course;
	 private String email;
	 private long phone;
	 
	 
	 public Student() {
		 
	 }
	 
	 public Student(int sid, String name, String course, String email, long phone) {
			this.sid = sid;
			this.name = name;
			this.course = course;
			this.email = email;
			this.phone = phone;
		}
	 
	 
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	
	 
	

}
