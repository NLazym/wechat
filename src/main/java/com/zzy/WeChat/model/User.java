package com.zzy.WeChat.model;

import net.sf.json.JSONObject;

import java.util.Date;

/**
 * Created by zzy on 2017/4/6.
 */
public class User {
	private int userId;
	private int sex;
	private int role;
	private String username;
	private String password;
	private String phone;
	private String email;
	private String introduction;
	private Date createTime;
	private Date updateTime;
	
	public User(){
	
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setSex(int sex) {
		this.sex = sex;
	}
	
	public int getSex() {
		return sex;
	}
	
	public void setRole(int role) {
		this.role = role;
	}
	
	public int getRole() {
		return role;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String  getPhone() {
		return phone;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public String getIntroduction() {
		return introduction;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	public Date getUpdateTime() {
		return updateTime;
	}
	
	public JSONObject toJSON() {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("userId", userId);
		jsonObject.put("password", password);
		return jsonObject;
	}
}
