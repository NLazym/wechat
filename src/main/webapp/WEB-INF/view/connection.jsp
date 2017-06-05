<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/6/3
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>联系我们</title>
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../js/connection.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<div>
			<p>邮箱：1115035458@qq.com</p>
			<p>电话：1115035458</p>
		</div>
		<div style="position:relative;">
			<form id="feedback">
				<label for="content">反馈建议：</label>
				<textarea name="content" id="content" style="position: relative; "></textarea>
			</form>
			<br>
			<input type="button" id="send" value="提交">
		</div>
	</div>
</body>
</html>
