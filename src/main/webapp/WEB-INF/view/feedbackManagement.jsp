<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>反馈管理</title>
	
</head>
<body>
	<c:import url="admin.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>反馈管理</h3>
		<div>
			<table id="feedback-table" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>反馈ID</th>
						<th>发送者</th>
						<th>反馈内容</th>
						<th>发送时间</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>反馈ID</th>
						<th>发送者</th>
						<th>反馈内容</th>
						<th>发送时间</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="feedback" items="${sessionScope.allFeedback}">
						<tr>
							<td>${feedback["feedbackId"]}</td>
							<td>${feedback["sendId"]}</td>
							<td>${feedback["content"]}</td>
							<td>${feedback["createTime"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<button class="waves-effect waves-light blue accent-2 btn" id="check" type="button">查看</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="edit" type="button">编辑</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="delete" type="button">删除</button>
		<div id="edit-area" style="display:none; width: 50%;">
			<form id="edit-form">
				<label for="feedbackId">反馈ID：</label>
				<input type="text" name="feedbackId" id="feedbackId" disabled>
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
	<script type="text/javascript" src="../../js/feedbackManagement.js"></script>
</body>
</html>
