package com.zzy.WeChat.service;

import com.zzy.WeChat.dao.UserDAO;
import com.zzy.WeChat.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzy on 2017/4/6.
 */
@Service
public class UserService {
	@Autowired
	private UserDAO userDAO;
	
	public User getOneUserByUserId(int userId) {
		return userDAO.selectOneUserByUserId(userId);
	}
	
	public boolean addOneUser(User user) {
		return userDAO.insertOneUser(user) > 0;
	}
	
	public boolean modifyOneUser(@Param("username") String username,
								 @Param("sex") int sex,
								 @Param("phone") String phone,
								 @Param("email") String email,
								 @Param("introduction") String introduction,
								 int userId) {
		return userDAO.updateOneUserByUserId(username, sex, phone, email, introduction, userId) > 0;
	}    //mapper中没有对应的userID，因此要用param5来代替
	
	public List<User> getAllUser() {
		return userDAO.selectAllUser();
	}
	
	public boolean removeOneUser(int userId) {
		return userDAO.deleteOneUserByUserId(userId) > 0;
	}
	
	public boolean modifyUserMessage(@Param("userId") int userId,
									 @Param("username") String username,
									 @Param("sex") int sex,
									 @Param("role") int role,
									 @Param("introduction") String introduction) {
		return userDAO.updateUserMessage(userId, username, sex, role, introduction) > 0;
	}
	
	public boolean modifyUserRole(int userId, int role) {
		return userDAO.updateUserRole(userId, role) > 0;
	}
	
}
