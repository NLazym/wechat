<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/28
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>所有信息</title>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>所有信息</h3>
		<c:choose>
			<c:when test="${empty(sessionScope.allMessages)}">
				<p>未接收到信息</p>
			</c:when>
			<c:otherwise>
				<c:forEach var="message" items="${sessionScope.allMessages}">
					<div style="border: 1px skyblue solid; position: relative; margin-top: 10px; width: 50%; border-radius: 10px">
						<p>发送者：${message["sendId"]}</p>
						<p>信息内容：${message["content"]}</p>
						<p>发送时间：${message["createTime"]}</p>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>
