package com.zzy.WeChat.filter;

import com.zzy.WeChat.model.User;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zzy on 2017/4/15.
 */
public class MyFilter extends OncePerRequestFilter {
	@Override
	protected void doFilterInternal(HttpServletRequest request,
									HttpServletResponse response,
									FilterChain filterChain) throws ServletException, IOException {
		
		/*if ("GET".equalsIgnoreCase(request.getMethod())) {
			RequestUtil.saveRequest(request);
		}*/
		
		String[] notFilter = new String[]{"login", "register", "home",
				"img", "css", "js", "file", "unknownMessageCheck"};		//不过滤的uri
		
		String uri = request.getRequestURI();	//过滤的uri
		if (uri.endsWith("/")) {		//如果uri以"/"结尾（欢迎页面http://localhost:8080/或者其他的）重定向到home页面
			response.sendRedirect("home");
			return;
		}
		boolean doFilter = true;	//是否过滤
		for (String s: notFilter) {
			if (uri.contains(s)) {
				doFilter = false;
				break;
			}
		}
		if (doFilter) {
			//执行过滤
			//从session中获取登陆者实体
			User user = (User)request.getSession().getAttribute("user");
			if (user == null) {
				//如果session中不存在登陆者实体，则弹框提示
				//设置request和response字符集，防止乱码
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
//				response.sendRedirect("login");
				if (!uri.equals("/favicon.ico")) {		//防止/favicon.ico（浏览器发起的请求，请求图标）进行干扰
					request.getSession().setAttribute("originalUri", uri);
				}
				
				request.getRequestDispatcher("login").forward(request, response);
				/*PrintWriter out = response.getWriter();
				String loginPage = "login";
				StringBuilder builder = new StringBuilder();
				builder.append("<script type=\"text/javascript\">");
				builder.append("alert('网页过期，请重新登录！');");
				builder.append("window.top.location.href='");
				builder.append(loginPage);
				builder.append("';");
				builder.append("</script>");
				out.print(builder);*/
			}else {
				//如果存在登陆者实体则继续
				filterChain.doFilter(request,response);
			}
		}else {
			//如果不过滤，则继续
			filterChain.doFilter(request, response);
		}
	}
	
}
