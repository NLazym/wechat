package com.zzy.WeChat.controller;

import com.zzy.WeChat.model.Message;
import com.zzy.WeChat.model.User;
import com.zzy.WeChat.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/**
 * Created by zzy on 2017/4/22.
 */
@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value = "sendMessage", method = RequestMethod.POST)
	public String sendMessage(@RequestParam("userId") String userId,
							  @RequestParam("content") String content,
							  HttpSession session) {
		
		User userSend = (User)session.getAttribute("user");
		int sendId = userSend.getUserId();
		
		//记录不存在的receiveId和信息发送失败的receiveId
		String fail = "";
		
		//创建message
		Message message = new Message();
		message.setSendId(sendId);
		message.setContent(content);
		boolean result = messageService.createMessage(message);
		if (!result) {
			fail = "信息创建失败！";
		}
		int messageId = message.getMessageId();
		
		//取得userID，以;分割后放入set中消除重复数据
		String[] receives = userId.split(";");
		HashSet<String> set = new HashSet<>(Arrays.asList(receives));
		for (String a: set) {
			
			//根据输入进行模糊查询（a%）查找所有以a开头的用户向其发送信息，若发送失败则记录，然后继续执行下一个循环
			int receiveId = Integer.parseInt(a);
			List<Integer> list = messageService.findUserBeginWith(receiveId);
			for (Integer s : list) {
				boolean result2 = messageService.createMessageConnection(messageId, s);
				if (!result2) {
					fail =fail + receiveId + ",";
				}
			}
		}
		if (fail.equals("")) {
			return "sendSuccess";
		}
		session.setAttribute("fail",fail);
		return "sendFail";
	}
	
	@RequestMapping(value = "sendMessage", method = RequestMethod.GET)
	public String sendMessageGet() {
		return "sendMessage";
	}
	
	@RequestMapping(value = "unknownMessages", method = RequestMethod.GET)
	public String receiveMessages(HttpSession session) {
		
		User user = (User)session.getAttribute("user");
//		List<Integer> messagesId = messageService.findUnknownMessagesId(user.getUserId());
		List<Message> unknownMessages = messageService.findUnknownMessages(user.getUserId());
		/*JSONArray jsonArray = new JSONArray();
		jsonArray.addAll(unknownMessages);
		JSONObject json = new JSONObject();
		json.put("unknownMessages", jsonArray);
		return json.toString();*/
		session.setAttribute("unknownMessages", unknownMessages);
		messageService.setMessage2Known(user.getUserId());	//设为已读
//		session.getAttribute("unknownMessages");
		/*session.putValue("unknownMessages",unknownMessages);
		unknownMessages = (String [])(session.getValue("unknownMessages"));*/
		return "unknownMessages";
	}
	
	/*@RequestMapping(value = "receiveMessage", method = RequestMethod.GET)
	public String receiveMessageGet() {
		return "receiveMessage";
	}*/
	
	@RequestMapping(value = "allMessages", method = RequestMethod.GET)
	public String allMessageGet(HttpSession session) {
		User user = (User)session.getAttribute("user");
		List<Message> messages = messageService.findAllMessages(user.getUserId());
		session.setAttribute("allMessages", messages);
		return "allMessages";
	}
	
}
