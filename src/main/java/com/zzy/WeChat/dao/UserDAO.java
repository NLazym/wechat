package com.zzy.WeChat.dao;

import com.zzy.WeChat.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzy on 2017/4/6.
 */
@Repository
public interface UserDAO {
	
	User selectOneUserByUserId(int userId);
	
	int insertOneUser(User user);
	
	int updateOneUserByUserId(@Param("username")String username,
							  @Param("sex") int sex,
							  @Param("phone")String phone,
							  @Param("email")String email,
							  @Param("introduction")String introduction,
							  int userId);	//mapper中没有对应的userID，因此要用param6来代替
	
	List<User> selectAllUser();
	
	int deleteOneUserByUserId(int userId);
	
	int updateUserMessage(@Param("userId")int userId,
						  @Param("username")String username,
						  @Param("sex")int sex,
						  @Param("role")int role,
						  @Param("introduction")String introduction);
	
	int updateUserRole(int userId, int role);
	
}
