package com.zzy.WeChat.service;

import com.zzy.WeChat.dao.FeedbackDAO;
import com.zzy.WeChat.model.Feedback;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzy on 2017/6/3.
 */
@Service
public class FeedbackService {
	
	@Autowired
	private FeedbackDAO feedbackDAO;
	
	public boolean createOneFeedback(Feedback feedback) {
		return feedbackDAO.insertOneFeedback(feedback) > 0;
	}
	
	public boolean editOneFeedback(@Param("feedbackId") int feedbackId,
								   @Param("content") String content) {
		return feedbackDAO.updateOneFeedback(feedbackId, content) > 0;
	}
	
	public boolean removeOneFeedback(int feedbackId) {
		return feedbackDAO.deleteOneFeedback(feedbackId) > 0;
	}
	
	public List<Feedback> findAllFeedback() {
		return feedbackDAO.selectAllFeedback();
	}
	
}
