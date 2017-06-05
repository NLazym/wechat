package com.zzy.WeChat.service;

import com.zzy.WeChat.dao.MessageDAO;
import com.zzy.WeChat.model.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zzy on 2017/4/22.
 */
@Service
public class MessageService {
	
	@Autowired
	private MessageDAO messageDAO;
	
	public boolean createMessage(Message message) {
		return messageDAO.insertMessage(message) > 0;
	}
	
	public boolean createMessageConnection(int messageId, int receiveId) {
		return messageDAO.insertMessageConnection(messageId, receiveId) > 0;
	}

//	public List<Integer> findUnknownMessagesId(int receiveId) {
//		return messageDAO.selectUnknownMessagesId(receiveId);
//	}
	
	public List<Integer> findUserBeginWith(int userId) {
		return messageDAO.selectUserBeginWith(userId);
	}
	
	public void setMessage2Known(int receiveId) {
		messageDAO.updateUnknownMessages(receiveId);
	}
	
	public List<Message> findUnknownMessages(int receiveId) {
		return messageDAO.selectUnknownMessages(receiveId);
	}
	
	public List<Message> findOneUserAllMessages(int receiveId) {
		return messageDAO.selectOneUserAllMessages(receiveId);
	}
	
	public boolean editOneMessageContent(@Param("messageId") int messageId,
										 @Param("content") String content) {
		return messageDAO.updateOneMessageContent(messageId, content) > 0;
	}
	
	public boolean removeOneMessage(int messageId) {
		return messageDAO.deleteOneMessage(messageId) > 0;
	}
	
	public boolean removeMessageConnection(int messageId) {
		return messageDAO.deleteMessageConnection(messageId) > 0;
	}
	
	public List<Message> findAllMessage() {
		return messageDAO.selectAllMessage();
	}
	
}
