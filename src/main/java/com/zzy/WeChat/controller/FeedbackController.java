package com.zzy.WeChat.controller;

import com.zzy.WeChat.model.Feedback;
import com.zzy.WeChat.model.User;
import com.zzy.WeChat.service.FeedbackService;
import com.zzy.WeChat.service.UserService;
import org.apache.logging.log4j.core.net.server.UdpSocketServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zzy on 2017/6/3.
 */
@Controller
public class FeedbackController {
	
	@Autowired
	private FeedbackService feedbackService;
	
	//反馈建议
	@RequestMapping(value = "connection", method = RequestMethod.GET)
	public String connection() {
		return "connection";
	}
	
	@RequestMapping(value = "feedback", method = RequestMethod.POST)
	@ResponseBody
	public String feedback(@RequestParam("content") String content,
						   HttpSession session) {
		User user = (User) session.getAttribute("user");
		Feedback feedback = new Feedback();
		feedback.setSendId(user.getUserId());
		feedback.setContent(content);
		boolean result = feedbackService.createOneFeedback(feedback);
		return result ? "success" : "fail";
	}
	
	@RequestMapping(value = "feedbackManagement", method = RequestMethod.GET)
	public String feedbackManagement(HttpSession session) {
		List<Feedback> allFeedback = feedbackService.findAllFeedback();
		session.setAttribute("allFeedback", allFeedback);
		return "feedbackManagement";
	}
	
	@RequestMapping(value = "editOneFeedback", method = RequestMethod.POST)
	@ResponseBody
	public String editOneFeedback(@RequestParam("feedbackId") int feedbackId,
								  @RequestParam("content") String content) {
		boolean result = feedbackService.editOneFeedback(feedbackId, content);
		return result ? "success" : "fail";
	}
	
	@RequestMapping(value = "deleteOneFeedback", method = RequestMethod.POST)
	@ResponseBody
	public String deleteOneFeedback(@RequestParam("feedbackId") int feedbackId) {
		boolean result = feedbackService.removeOneFeedback(feedbackId);
		return result ? "success" : "fail";
	}
	
}
