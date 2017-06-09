<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 20:01
  To change this template use Document | Settings | Document Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>信息管理</title>
	
</head>
<body>
	<c:import url="admin.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>信息管理</h3>
		<div>
			<table id="message-table" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>信息ID</th>
						<th>发送者</th>
						<th>信息内容</th>
						<th>发送时间</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>信息ID</th>
						<th>发送者</th>
						<th>信息内容</th>
						<th>发送时间</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="message" items="${sessionScope.allMessage}">
						<tr>
							<td>${message["messageId"]}</td>
							<td>${message["sendId"]}</td>
							<td>${message["content"]}</td>
							<td>${message["createTime"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<button class="waves-effect waves-light blue accent-2 btn" id="check" type="button">查看</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="edit" type="button">编辑</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="delete" type="button">删除</button>
		<div id="edit-area" style="display:none">
			<form id="edit-form">
				<label for="messageId">信息ID：</label>
				<input type="text" name="messageId" id="messageId" disabled>
				<br/>
				<label for="sendId">发送者：</label>
				<input type="text" name="sendId" id="sendId" disabled>
				<br/>
				<label for="content">内容：</label>
				<input type="text" name="content" id="content">
				<br/>
				<label for="createTime">发送时间：</label>
				<input type="text" name="createTime" id="createTime" disabled>
			</form>
			<button class="waves-effect waves-light blue accent-2 btn" id="save">保存</button>
			<button class="waves-effect waves-light blue accent-2 btn" id="cancel">取消</button>
		</div>
	</div>
	<link rel="stylesheet" href="../../DataTables-1.10.15/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../js/messageManagement.js"></script>
</body>
</html>
