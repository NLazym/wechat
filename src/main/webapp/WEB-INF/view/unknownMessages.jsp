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
	<div>
		<c:forEach var="message" items="${sessionScope.unknownMessages}">
			<p>${message["sendId"]}</p>
			<p>${message["content"]}</p>
			<p>${message["createTime"]}</p>
		</c:forEach>
		<a id="back" href="home" title="点击返回主界面">
			<input type="button" value="返回主界面">
		</a>
	</div>
</body>
</html>
