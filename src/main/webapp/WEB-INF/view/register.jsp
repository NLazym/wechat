<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/6
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>注册</title>
	<link rel="stylesheet" href="../../css/register.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../js/register.js"></script>
</head>
<body>
	<h1>注册</h1>
	<div id="register">
		<form action="register" method="post">
			<input type="text" name="userId" id="userId" required="required" />
			<label alt='请输入用户ID' placeholder='用户ID'></label>
			<input type="text" name="username" id="username" required="required" />
			<label alt='请输入用户名' placeholder='用户名'></label>
			<input type="password" name="password" id="password" required="required" />
			<label alt='请输入密码' placeholder='密码'></label>
			<input type="password" name="password2" id="password2" required="required" />
			<label alt='请输入密码' placeholder='密码'></label>
			<input type="submit" value="注册" id="submit"/>
			<a href="login" title="点击登录">
				<input type="button" value="已有账号？点击登录">
			</a>
		</form>
	</div>
</body>
</html>
