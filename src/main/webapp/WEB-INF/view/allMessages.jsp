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
		<c:forEach var="message" items="${sessionScope.allMessages}">
			<p>${message["sendId"]}</p>
			<p>${message["content"]}</p>
			<p>${message["createTime"]}</p>
		</c:forEach>
	</div>
	
</body>
</html>
