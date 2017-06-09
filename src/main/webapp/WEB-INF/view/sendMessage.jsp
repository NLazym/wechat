<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/11
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>发送信息</title>
	<link rel="stylesheet" href="../../css/message.css">
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>发送信息</h3>
		<%--<div id="message">
			<form action="sendMessage" method="post">
				<label for="userId">发送给：</label>
				<input type="text" name="userId" id="userId">
				<br>
				<label for="text">消息内容：</label>
				<textarea name="content" id="text"></textarea>
				<br>
				<input type="submit" value="发送" id="submit">
			</form>
		</div>--%>
		<div class="indigo-text" style="width: 50%;">
			<form action="sendMessage" method="post" novalidate="novalidate">
				<div class="input-field">
					<input id="userId" type="text" name="userId" required="" data-schema-key="userId" maxlength="10">
					<label for="userId" class="">
						发送给
					</label>
				</div>
				<div class="input-field">
					<textarea id="content" name="content" rows="5" required="" data-schema-key="content" maxlength="300" class="materialize-textarea"></textarea>
					<label for="content" class="">
						信息内容
					</label>
				</div>
				<div class="row">
					<div class="col s12">
						<button class="waves-effect waves-light blue accent-2 btn">Send</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
