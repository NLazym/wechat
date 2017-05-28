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
	<link rel="stylesheet" href="../../materialize-v0.98.2/css/materialize.min.css" media="screen,projection"
	">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../materialize-v0.98.2/js/materialize.min.js"></script>
	<script type="text/javascript" src="../../js/login.js"></script>
</head>
<body>
	<div id="login" class="row">
		<form action="login" method="post" class="col s12">
			<div class="row">
				<div class="row">
					<div class="input-field col s12">
						<input id="userId" type="text" class="validate" name="userId">
						<label for="userId">用户账号</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<input id="password" type="password" class="validate" name="password">
						<label for="password">密码</label>
					</div>
				</div>
				<input type="submit" class="btn waves-effect waves-light" value="登录" id="submit"/>
			</div>
		</form>
	</div>
</body>
</html>
