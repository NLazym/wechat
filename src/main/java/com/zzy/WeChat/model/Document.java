package com.zzy.WeChat.model;

import net.sf.json.JSONObject;

import java.util.Date;

/**
 * Created by zzy on 2017/5/25.
 */
public class Document {
	
	private int documentId;
	private String documentName;
	private int sendId;
	private int receiveId;
	private Date createTime;
	
	public int getSendId() {
		return sendId;
	}
	
	public void setSendId(int sendId) {
		this.sendId = sendId;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public int getDocumentId() {
		return documentId;
	}
	
	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}
	
	public String getDocumentName() {
		return documentName;
	}
	
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	
	public int getReceiveId() {
		return receiveId;
	}
	
	public void setReceiveId(int receiveId) {
		this.receiveId = receiveId;
	}
}
