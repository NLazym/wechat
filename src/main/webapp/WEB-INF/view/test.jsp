<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/3
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
	<meta charset="utf-8">
	<title>Title</title>
	<link rel="stylesheet" type="text/css" href="../../css/test.css" />
	<script src="../../js/jquery-3.1.1.js"></script>
	<script src="../../js/test.js"></script>
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/wx?useUnicode=true&characterEncoding=utf-8"
					   user="root" password="1234"/>
	
	<sql:query dataSource="${snapshot}" var="result">
		SELECT * from t_user;
	</sql:query>
	
	<h1>Test</h1>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>name</th>
				<th>create_time</th>
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.id}"/></td>
					<td><input type="text" value="<c:out value="${row.username}"/>" class="<c:out value="${row.id}"/>"/></td>
					<td><c:out value="${row.create_time}"/></td>
				</tr>
			</c:forEach>
		</table>
		<%--<input type="button" value="更新" id="update">--%>
		<input type="submit" value="确定" id="submit"/>
	
</body>
</html>
