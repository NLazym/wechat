package com.zzy.WeChat.dao;

import com.zzy.WeChat.model.Document;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zzy on 2017/6/3.
 */
@Repository
public interface DocumentDAO {
	
	void insertOneDocument(Document document);
	
	int selectSendIdByDocumentName(String documentName);
	
	List<Document> selectAllDocument();
	
	int deleteOneDocument(int documentId);
	
}
