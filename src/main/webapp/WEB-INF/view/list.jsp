<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/3/24
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%--<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
	<meta charset="utf-8">
	<title>SELECT 操作</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
				   url="jdbc:mysql://localhost:3306/wx?useUnicode=true&characterEncoding=utf-8"
				   user="root" password="1234"/>

<sql:query dataSource="${snapshot}" var="result">
	SELECT * from t_user;
</sql:query>
<h1>JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
	<tr>
		<th>ID</th>
		<th>name</th>
		<th>create_time</th>
	</tr>
	<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><input type="text" value="<c:out value="${row.id}"/>"></td>
			<td><c:out value="${row.username}"/></td>
			<td><c:out value="${row.create_time}"/></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
