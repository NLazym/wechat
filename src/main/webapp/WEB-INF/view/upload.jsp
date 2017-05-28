<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/19
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%--id名和函数名不能重复（<input type="button" value="添加" id="add" onclick="add()"> ×）；不要用div1，div2，用div_1，div_2；可能有默认函数名，onclick="delete()"不行，del（）可以--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>上传文件</title>
	<script type="text/javascript">
		var i = 1;
		
		function add() {
			document.getElementById("group").innerHTML += ('<div id="div_' + i + '"><input type="file" name="file_' + i + '"><input type="button" value="删除" onclick="del(' + i + ')"></div>');
			i = i + 1;
		}
		
		function del(n) {
			document.getElementById("group").removeChild(document.getElementById('div_' + n));
		}
	</script>
</head>
<body>
	<c:import url="head.jsp"/>
	<h1>上传文件</h1>
	<form action="upload" method="post" enctype="multipart/form-data" id="upload">
		<div id="group">
			<input type="file" name="file">
		</div>
		<input type="button" value="添加" id="append" onclick="add()">
		<input type="submit" value="上传">
	</form>
</body>
</html>
