<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/6/3
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>联系我们</title>
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../js/connection.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>联系我们</h3>
		<div>
			<p>邮箱：1115035458@qq.com</p>
			<p>电话：1115035458</p>
		</div>
		<div class="indigo-text" style="width: 50%;">
			<form id="contactForm" novalidate="novalidate">
				<div class="input-field">
					<textarea id="content" name="content" rows="3" required data-schema-key="content" maxlength="300" class="materialize-textarea"></textarea>
					<label for="content" class="">
						反馈建议
					</label>
				</div>
				<div class="row">
					<div class="col s12">
						<button class="waves-effect waves-light blue accent-2 btn">
							Send
							<i class="mdi-content-send right"></i>
						</button>
					</div>
				</div>
			</form>
		
		</div>
	</div>
</body>
</html>
