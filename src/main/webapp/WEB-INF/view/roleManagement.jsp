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
	<title>角色管理</title>
	
</head>
<body>
	<c:import url="admin.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>角色管理</h3>
		<div>
			<table id="role-table" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>账号</th>
						<th>姓名</th>
						<th>角色</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>账号</th>
						<th>姓名</th>
						<th>角色</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="user" items="${sessionScope.allUser}">
						<tr>
							<td>${user["userId"]}</td>
							<td>${user["username"]}</td>
							<td>${user["role"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<button class="waves-effect waves-light blue accent-2 btn" id="check" type="button">查看</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="edit" type="button">编辑</button>
		<div id="edit-area" style="display: none; width: 50%;">
			<form id="edit-form">
				<label for="userId">账号：</label>
				<input type="text" name="userId" id="userId" disabled>
				<br/>
				<label for="username">姓名：</label>
				<input type="text" name="username" id="username" disabled>
				<br/>
				<label for="role">角色：</label>
				<input type="text" name="role" id="role">
			</form>
			<button class="waves-effect waves-light blue accent-2 btn" id="save">保存</button>
			<button class="waves-effect waves-light blue accent-2 btn" id="cancel">取消</button>
		</div>
	</div>
	<link rel="stylesheet" href="../../DataTables-1.10.15/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../js/roleManagement.js"></script>
</body>
</html>
