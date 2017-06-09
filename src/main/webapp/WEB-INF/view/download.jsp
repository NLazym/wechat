
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
		<h3>下载</h3>
		<form action="" method="post" id="download-form" style="width: 50%;">
			<div class="input-field">
				<input id="documentName" type="text" name="documentName" required maxlength="100">
				<label for="documentName" class="">
					文件名<span></span>
				</label>
			</div>
			<div class="row">
				<div>
					<button id="submit" class="waves-effect waves-light blue accent-2 btn" disabled>下载</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
