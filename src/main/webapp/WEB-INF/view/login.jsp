<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/6
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>登录</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../../css/login.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../js/login.js"></script>
</head>
<body>
	<div id="login">
		<form action="login" method="post">
			<input type="text" name="userId" required="required"/>
			<label alt='请输入用户名' placeholder='用户名'></label>
			<input type="password" name="password" required="required"/>
			<label alt='请输入密码' placeholder='密码'></label>
			<input type="submit" value="登录" id="submit"/>
			<a href="register" title="注册账号">
				<input type="button" value="注册账号">
			</a>
		</form>
	</div>
</body>
</html>
