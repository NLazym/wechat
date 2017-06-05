package com.zzy.WeChat.model;

import java.util.Date;

/**
 * Created by zzy on 2017/6/3.
 */
public class Feedback {
	
	private int feedbackId;
	private int sendId;
	private String content;
	private Date createTime;
	
	
	public int getFeedbackId() {
		return feedbackId;
	}
	
	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
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
