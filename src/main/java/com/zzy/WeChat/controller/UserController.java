package com.zzy.WeChat.controller;

import com.zzy.WeChat.model.Feedback;
import com.zzy.WeChat.model.Message;
import com.zzy.WeChat.model.User;
import com.zzy.WeChat.service.FeedbackService;
import com.zzy.WeChat.service.MessageService;
import com.zzy.WeChat.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zzy on 2017/4/6.
 */
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private FeedbackService feedbackService;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam("userId") Integer userId,
						@RequestParam("password") String password,
						HttpSession session) {
		User user = userService.getOneUserByUserId(userId);
		if (user != null && password.equals(user.getPassword())) {
			session.setAttribute("user", user);
			
			if (user.getRole() == 3) {
				return "admin";
			}
			
			List<Message> messages = messageService.findUnknownMessages(userId);
			if (!messages.isEmpty()) {
				session.setAttribute("tip", messages.size());
			}
			
			if (session.getAttribute("originalUri") != null) {
				String originalUri = (String) session.getAttribute("originalUri");
				session.removeAttribute("originalUri");    //提取出originalUri后将session中的originalUri置空，防止退出后重新登录时依然返回第一个用户登录时的originalUri
				return "redirect:" + originalUri;        //如果初始url不是login，被filter过滤后返回初始请求页面
			}
			return "redirect:/home";
		}
		return "redirect:/register";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet() {
		return "login";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logoutGet(HttpSession session) {
		session.removeAttribute("user");
		return "home";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@RequestParam("userId") Integer userId,
						   @RequestParam("username") String username,
						   @RequestParam("password") String password) {
		User user = new User();
		user.setUserId(userId);
		user.setUsername(username);
		user.setPassword(password);
		boolean result = userService.addOneUser(user);
		if (result) {
			return "redirect:/login";
		}
		return "register";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String registerGET() {
		return "register";
	}
	
	@RequestMapping(value = "userCheck", method = RequestMethod.GET)
	@ResponseBody
	public String check(@RequestParam("userId") Integer userId) {
		User user = userService.getOneUserByUserId(userId);    //不存在该user时；在jQuery 1.9之前(不含1.9)：如果传入一个空字符串、null或undefined，JSON.parser()函数将返回null，而不是抛出一个错误，即使它不是有效的JSON字符串
		return user == null ? StringUtils.EMPTY : user.toJSON().toString();        //StringUtils.EMPTY工具化的String类型的""
		
	}
	
	/*@RequestMapping(value = "head", method = RequestMethod.GET)
	public String headGET(HttpSession session) {
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			return "redirect:/login";
		}
		return "redirect:/personal";
	}*/
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@RequestParam("username") String username,
						 @RequestParam("sex") Integer sex,
						 @RequestParam("phone") String phone,
						 @RequestParam("email") String email,
						 @RequestParam("introduction") String introduction,
						 HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (!user.getUsername().equals(username)) {
			user.setUsername(username);
		}
		if (user.getSex() != sex) {
			user.setSex(sex);
		}
		if (!user.getPhone().equals(phone)) {
			user.setPhone(phone);
		}
		if (!user.getEmail().equals(email)) {
			user.setEmail(email);
		}
		if (!user.getIntroduction().equals(introduction)) {
			user.setIntroduction(introduction);
		}
		boolean result = userService.modifyOneUser(username, sex, phone, email, introduction, user.getUserId());
		if (result) {
			return "home";
		}
		return "update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String updateGet() {
		return "update";
	}
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String homeGet() {
		return "home";    //不能用redirect,重定向到自己？
	}
	
	@RequestMapping(value = "home", method = RequestMethod.POST)
	public String homePost() {
		return "home";
	}
	
	//admin
	@RequestMapping(value = "userManagement", method = RequestMethod.GET)
	public String userManagement(HttpSession session) {
		List<User> allUser = userService.getAllUser();
		session.setAttribute("allUser", allUser);
		return "userManagement";
	}
	
	@RequestMapping(value = "deleteOneUser", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestParam("userId") Integer userId) {
		return userService.removeOneUser(userId) ? "success" : "fail";
	}
	
	@RequestMapping(value = "editOneUser", method = RequestMethod.POST)
	@ResponseBody
	public String editOneUser(@RequestParam("userId") int userId,
							  @RequestParam("username") String username,
							  @RequestParam("sex") int sex,
							  @RequestParam("role") int role,
							  @RequestParam("introduction") String introduction) {
		
		boolean result = userService.modifyUserMessage(userId, username, sex, role, introduction);
		return result ? "success" : "fail";
	}
	
	@RequestMapping(value = "roleManagement", method = RequestMethod.GET)
	public String roleManagement(HttpSession session) {
		List<User> allUser = userService.getAllUser();
		session.setAttribute("allUser", allUser);
		return "roleManagement";
	}
	
	@RequestMapping(value = "editOneUserRole", method = RequestMethod.POST)
	@ResponseBody
	public String editOneUserRole(@RequestParam("userId") int userId,
								  @RequestParam("role") int role) {
		boolean result = userService.modifyUserRole(userId, role);
		return result ? "success" : "fail";
	}
	
	
	
}
