<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>信息管理</title>
	<link rel="stylesheet" href="../../DataTables-1.10.15/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../js/messageManagement.js"></script>
</head>
<body>
	<div style="width: 80%">
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
	<button id="check" type="button">查看</button>
	<button id="edit" type="button">编辑</button>
	<button id="delete" type="button">删除</button>
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
		<input type="button" id="save" value="保存">
		<input type="button" id="cancel" value="取消">
	</div>
</body>
</html>