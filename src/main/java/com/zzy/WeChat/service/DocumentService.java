package com.zzy.WeChat.service;

import com.zzy.WeChat.dao.DocumentDAO;
import com.zzy.WeChat.model.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zzy on 2017/6/3.
 */
@Service
public class DocumentService {
	
	@Autowired
	private DocumentDAO documentDAO;
	
	public void addOneDocument(Document document) {
		documentDAO.insertOneDocument(document);
	}
	
	public Document findOneDocumentByDocumentName(String documentName) {
		return documentDAO.selectOneDocumentByDocumentName(documentName);
	}
	
	public List<Document> findAllDocument() {
		return documentDAO.selectAllDocument();
	}
	
	public boolean removeOneDocument(int documentId) {
		return documentDAO.deleteOneDocument(documentId) > 0;
	}
	
	
}
