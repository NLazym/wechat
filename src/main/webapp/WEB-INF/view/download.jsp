
<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/20
  Time: 21:57
  To change this template use Document | Settings | Document Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>下载</title>
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../js/download.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<form action="download" method="post">
			<label for="documentName">文件名：</label>
			<input type="text" name="documentName" id="documentName">
			<br>
			<input type="button" value="检测文件是否存在" id="test">
			<br>
			<input type="submit" value="下载" id="submit" disabled>
		</form>
	</div>
</body>
</html>
