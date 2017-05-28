package com.zzy.WeChat.model;

import net.sf.json.JSONObject;

import java.util.Date;

/**
 * Created by zzy on 2017/4/22.
 */
public class Message {
	
	private int messageId;
	private int sendId;
	private String content;
	private Date createTime;
	
	public int getMessageId() {
		return messageId;
	}
	
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	
	public int getSendId() {
		return sendId;
	}
	
	public void setSendId(int sendId) {
		this.sendId = sendId;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public JSONObject toJSON() {
		JSONObject json = new JSONObject();
		json.put("messageId", messageId);
		json.put("sendId", sendId);
		json.put("content", content);
		json.put("createTime", createTime);
		return json;
	}
	
}
