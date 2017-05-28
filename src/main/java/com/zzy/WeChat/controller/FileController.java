package com.zzy.WeChat.controller;

import com.zzy.WeChat.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Iterator;

/**
 * Created by zzy on 2017/4/19.
 */
@Controller
public class FileController {
	
	@RequestMapping(value = "upload", method = RequestMethod.POST)
	public String upload(HttpServletRequest request,
						 HttpSession session) throws IllegalMonitorStateException, IOException {
		//创建一个通用的多部分解析器
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		//判断 request 是否有文件上传,即多部分请求
		if (multipartResolver.isMultipart(request)) {
			//转换成多部分request
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			//取得request中的所有文件名
			Iterator<String> iterator = multiRequest.getFileNames();
			while (iterator.hasNext()) {
				//取得上传文件
				MultipartFile file = multiRequest.getFile(iterator.next());
				if (file != null) {
					//取得当前上传文件的文件名称
					String fileName = file.getOriginalFilename();
					//如果名称不为“”,说明该文件存在，否则说明该文件不存在
					if (!fileName.trim().equals("")) {
						//重命名上传后的文件名
						//定义上传路径
						User user = (User) session.getAttribute("user");
						String pathPersonal = String.valueOf(user.getUserId());
						String path = "G:/Util/Project/WeChat/src/main/webapp/file/"
								+ pathPersonal + File.separator + fileName;
						File localFile = new File(path);
						File fileParent = localFile.getParentFile();
						if (!fileParent.exists()) {
							fileParent.mkdirs();		//mkdir(),只能在已经存在的目录中创建创建文件夹;mkdirs(),可以在不存在的目录中创建文件夹。返回值boolean
						}
						file.transferTo(localFile);
					}
				}
			}
		}
		return "home";
	}
	
	@RequestMapping(value = "upload", method = RequestMethod.GET)
	public String uploadGet() {
		return "upload";
	}
	
	@RequestMapping(value = "download", method = RequestMethod.GET)
	public String downloadGet() {
		return "download";
	}
	
	@RequestMapping(value = "download", method = RequestMethod.POST)
	public void download(@RequestParam("fileName") String fileName,
						 HttpServletRequest request,
						 HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("multipart/form-data");
		response.setHeader("Content-Disposition", "attachment;fileName=" + fileName);
		try {
//			String path = Thread.currentThread().getContextClassLoader().getResource("").getPath() + "download";
			
			User user = (User) request.getSession().getAttribute("user");
			String pathPersonal = String.valueOf(user.getUserId());
			String path = "G:/Util/Project/WeChat/src/main/webapp/file/"
					+ pathPersonal;
			InputStream is = new FileInputStream(
					new File(path + File.separator + fileName));
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[2048];
			int length;
			while ((length = is.read(b)) > 0) {
				os.write(b, 0, length);
			}
			os.close();
			is.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "fileCheck", method = RequestMethod.GET)
	@ResponseBody
	public String fileCheck(@RequestParam("fileName") String fileName,
							HttpSession session) {
		User user = (User) session.getAttribute("user");
		String pathPersonal = String.valueOf(user.getUserId());
		String path = "G:/Util/Project/WeChat/src/main/webapp/file/"
				+ pathPersonal;
		File file = new File(path + File.separator + fileName);
		if (file.exists()) {
			return "y";
		}
		return "n";
	}
}
