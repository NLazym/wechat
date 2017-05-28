package com.zzy.WeChat.model;

import net.sf.json.JSONObject;

import java.util.Date;

/**
 * Created by zzy on 2017/5/25.
 */
public class File {
	
	private int fileId;
	private int sendId;
	private String content;
	private Date createTime;
	
	public int getfileId() {
		return fileId;
	}
	
	public void setfileId(int fileId) {
		this.fileId = fileId;
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
	
}
