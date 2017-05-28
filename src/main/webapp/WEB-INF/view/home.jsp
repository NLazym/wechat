<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/6
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>主页</title>
</head>
<body>
	<c:import url="head.jsp"/>
	<h1>Welcome!</h1>
	<%--<object type="application/x-shockwave-flash" style="outline:none;" data="http://cdn.abowman.com/widgets/hamster/hamster.swf?" width="288" height="225">
		<param name="movie" value="http://cdn.abowman.com/widgets/hamster/hamster.swf?">
		<param name="AllowScriptAccess" value="always">
		<param name="wmode" value="opaque">
	</object>--%>
	<a href="upload">上传文件</a>
	<a href="download">下载文件</a>
	<a href="unknownMessages" class="">未读信息</a>
	<a href="allMessages">所有信息</a>
	<a href="sendMessage">发送信息</a>
</body>
</html>
