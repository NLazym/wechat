<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/23
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>发送结果</title>
	<script type="text/javascript" src="../../js/sendSuccess.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<div id="success">
			<p id="time">
				发送成功，
				<span id="num">3</span>
				秒后返回主页
			</p>
			<a href="sendMessage">
				<input class="waves-effect waves-light blue accent-2 btn" type="button" value="点击继续发送信息">
			</a>
		</div>
	</div>
	
</body>
</html>
