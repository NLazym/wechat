<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
	
</head>
<body>
	<c:import url="admin.jsp"/>
	<div style="float: right; width: 76%;">
		<div>
			<table id="user-table" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>账号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>角色</th>
						<th>个人信息</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>账号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>角色</th>
						<th>个人信息</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="user" items="${sessionScope.allUser}">
						<tr>
							<td>${user["userId"]}</td>
							<td>${user["username"]}</td>
							<td>${user["sex"]}</td>
							<td>${user["role"]}</td>
							<td>${user["introduction"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<button id="check" type="button">查看</button>
		<button id="edit" type="button">编辑</button>
		<button id="delete" type="button">删除</button>
		<div id="edit-area" style="display:none">
			<form id="edit-form">
				<label for="userId">账号：</label>
				<input type="text" name="userId" id="userId" disabled>
				<br/>
				<label for="username">姓名：</label>
				<input type="text" name="username" id="username">
				<br/>
				<label for="sex">性别：</label>
				<select name="sex" id="sex">
					<option value="0">女</option>
					<option value="1">男</option>
				</select>
				<br/>
				<label for="role">角色：</label>
				<input type="text" name="role" id="role">
				<br/>
				<label for="introduction">介绍：</label>
				<textarea name="introduction" id="introduction"></textarea>
			</form>
			<input type="button" id="save" value="保存">
			<input type="button" id="cancel" value="取消">
		</div>
	</div>
	<link rel="stylesheet" href="../../DataTables-1.10.15/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../js/userManagement.js"></script>
</body>
</html>
