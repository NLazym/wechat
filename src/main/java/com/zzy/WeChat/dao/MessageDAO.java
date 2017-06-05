package com.zzy.WeChat.dao;

import com.zzy.WeChat.model.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzy on 2017/4/22.
 */
@Repository
public interface MessageDAO {
	
	int insertMessage(Message message);
	
	int insertMessageConnection(int messageId, int receiveId);
	
//	List<Integer> selectUnknownMessagesId(int receiveId); 	使用多表查询，不用再单独用一条语句查找messageid
	
	List<Integer> selectUserBeginWith(int userId);
	
	void updateUnknownMessages(int receiveId);
	
	List<Message> selectUnknownMessages(int receiveId);
	
	List<Message> selectOneUserAllMessages(int receiveId);
	
	int updateOneMessageContent(@Param("messageId") int messageId,
								@Param("content") String content);
	
	int deleteOneMessage(int messageId);
	
	int deleteMessageConnection(int messageId);
	
	List<Message> selectAllMessage();
}
