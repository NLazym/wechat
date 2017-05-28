<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/11
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Title</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../../css/head.css">
	<link rel="stylesheet" href="../../materialize-v0.98.2/css/materialize.min.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../materialize-v0.98.2/js/materialize.min.js"></script>
</head>
<body>
	<div id="head">
		<img src="../../img/head.jpg" alt="吉林大学校徽" id="img-head">
		<div id="content">
			<a href="home" title="点击前往主页" id="go-home">主页</a>
			<c:choose>
				<c:when test="${sessionScope.user == null}">
					<a href="login" title="点击登录" id="state">
						请登录
					</a>
				</c:when>
				<c:otherwise>
					<a href="update" title="点击修改个人信息" id="state">
							${sessionScope.user["username"]}
					</a>
				</c:otherwise>
			</c:choose>
			<a href="logout" title="点击退出" id="logout">退出</a>
		</div>
	</div>
</body>
</html>
