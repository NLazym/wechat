<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/28
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>未读信息</title>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>未读信息</h3>
		<div>
			<c:choose>
				<c:when test="${empty(sessionScope.unknownMessages)}">
					<p>没有未读信息</p>
				</c:when>
				<c:otherwise>
					<c:forEach var="message" items="${sessionScope.unknownMessages}">
						<div style="border: 1px skyblue solid; position: relative; margin-top: 10px; width: 50%; border-radius: 10px">
							<p>发送者：${message["sendId"]}</p>
							<p>信息内容：${message["content"]}</p>
							<p>发送时间：${message["createTime"]}</p>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
</body>
</html>
