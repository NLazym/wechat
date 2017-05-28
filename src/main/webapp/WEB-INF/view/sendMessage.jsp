<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/11
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Title</title>
	<link rel="stylesheet" href="../../css/message.css">
</head>
<body>
	<c:import url="head.jsp"/>
	<h1>Message</h1>
	<div id="message">
		<form action="sendMessage" method="post">
			<label for="userId">发送给：</label>
			<input type="text" name="userId" id="userId">
			<br>
			<label for="text">消息内容：</label>
			<textarea name="content" id="text"></textarea>
			<%--某些ID名(id=content)已定义，不能再用--%>
			<br>
			<input type="submit" value="发送" id="submit">
		</form>
	</div>
</body>
</html>
