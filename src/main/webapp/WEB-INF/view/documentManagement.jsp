<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>文章管理</title>

</head>
<body>
	<c:import url="admin.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>文章管理</h3>
		<div>
			<table id="document-table" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>文章ID</th>
						<th>文章名</th>
						<th>发送者</th>
						<th>接收者</th>
						<th>发送时间</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>文章ID</th>
						<th>文章名</th>
						<th>发送者</th>
						<th>接收者</th>
						<th>发送时间</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="document" items="${sessionScope.allDocument}">
						<tr>
							<td>${document["documentId"]}</td>
							<td>${document["documentName"]}</td>
							<td>${document["sendId"]}</td>
							<td>${document["receiveId"]}</td>
							<td>${document["createTime"]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<button class="waves-effect waves-light blue accent-2 btn" id="download" type="button">下载</button>
		<button class="waves-effect waves-light blue accent-2 btn" id="delete" type="button">删除</button>
	</div>
	<link rel="stylesheet" href="../../DataTables-1.10.15/media/css/jquery.dataTables.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../js/documentManagement.js"></script>
</body>
</html>
