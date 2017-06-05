package com.zzy.WeChat.dao;

import com.zzy.WeChat.model.Feedback;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzy on 2017/6/3.
 */
@Repository
public interface FeedbackDAO {
	
	int insertOneFeedback(Feedback feedback);
	
	int updateOneFeedback(@Param("feedbackId") int feedbackId,
						  @Param("content") String content);
	
	int deleteOneFeedback(int feedback);
	
	List<Feedback> selectAllFeedback();
	
}
