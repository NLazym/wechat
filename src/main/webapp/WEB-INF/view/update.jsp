<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/12
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>个人中心</title>
	<link rel="stylesheet" href="../../css/update.css">
	<script src="../../js/jquery-3.1.1.js"></script>
	<script src="../../js/update.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<h1>个人中心</h1>
	<div style="float: right; width: 78%;">
		<div id="personal">
			<form action="" method="post">
				<label for="username">姓名：</label>
				<input type="text" name="username" id="username" value="${sessionScope.user['username']}">
				<br/>
				<label for="sex">性别：</label>
				<select name="sex" id="sex">
					<option value="0" ${sessionScope.user['sex'] == 0 ? 'selected':''}>女</option>
					<option value="1" ${sessionScope.user['sex'] == 1 ? 'selected':''}>男</option>
				</select>
				<br/>
				<label for="phone">电话：</label>
				<input type="text" name="phone" id="phone" value="${sessionScope.user['phone']}">
				<br/>
				<label for="email">邮箱：</label>
				<input type="text" name="email" id="email" value="${sessionScope.user['email']}">
				<br/>
				<label for="introduction">介绍：</label>
				<textarea name="introduction" id="introduction">${sessionScope.user['introduction']}</textarea>
				<br/>
				<input type="submit" id="submit">
			</form>
			<a id="back" href="home" title="点击返回主界面">
				<input type="button" value="返回主界面">
			</a>
		</div>
	</div>
	
</body>
</html>
