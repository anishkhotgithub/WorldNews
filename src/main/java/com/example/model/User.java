package com.example.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection = "User")
public class User 
{
	@Id
	private String userid;
	@Field
	private String username;
	@Field
	private String emailID;
	@Field
	private String password;
	@Field
	private boolean enabled=true;
	@Field
	private String authority="user";
	
	public User(String username, String emailID, String authority) {
		super();
		this.username = username;
		this.emailID = emailID;
		this.authority = authority;
	}
	public User(String username, String emailID, String password, boolean enabled, String authority) {
		super();
		this.username = username;
		this.emailID = emailID;
		this.password = password;
		this.enabled = enabled;
		this.authority = authority;
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public User() {
		super();
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
