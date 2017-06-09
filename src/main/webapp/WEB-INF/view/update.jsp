<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/12
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>个人中心</title>
	<script src="../../js/jquery-3.1.1.js"></script>
	<script src="../../js/update.js"></script>
</head>
<body>
	<c:import url="head.jsp"/>
	<div style="float: right; width: 78%;">
		<h3>个人中心</h3>
		<%--<div id="personal">
			<form action="" method="post">
				<label for="username">姓名：</label>
				<input type="text" name="username" id="username" value="${sessionScope.user['username']}">
				<br/>
				<label for="sex">性别：</label>
				<select name="sex" id="sex">
					<option value="0" ${sessionScope.user['sex'] == 0 ? 'selected':''}>女</option>
					<option value="1" ${sessionScope.user['sex'] == 1 ? 'selected':''}>男</option>
				</select>
				<br/>
				<label for="phone">电话：</label>
				<input type="text" name="phone" id="phone" value="${sessionScope.user['phone']}">
				<br/>
				<label for="email">邮箱：</label>
				<input type="text" name="email" id="email" value="${sessionScope.user['email']}">
				<br/>
				<label for="introduction">介绍：</label>
				<textarea name="introduction" id="introduction">${sessionScope.user['introduction']}</textarea>
				<br/>
				<input type="submit" id="submit">
			</form>
		</div>--%>
		<div class="indigo-text" style="width: 50%;">
			<form action="" method="post" novalidate="novalidate">
				<div class="input-field">
					<input id="username" type="text" name="username" required data-schema-key="username" maxlength="20" value="${sessionScope.user['username']}">
					<label for="username" class="">
						姓名
					</label>
				</div>
				<div class="input-field">
					<label for="sex">性别</label><br><br>
					<select class="browser-default" name="sex" id="sex">
						<option value="0" ${sessionScope.user['sex'] == 0 ? 'selected':''}>女</option>
						<option value="1" ${sessionScope.user['sex'] == 1 ? 'selected':''}>男</option>
					</select>
				</div>
				<div class="input-field">
					<input id="phone" type="text" name="phone" required data-schema-key="phone"  value="${sessionScope.user['phone']}">
					<label for="phone" class="">
						电话
					</label>
				</div>
				<div class="input-field">
					<input id="email" type="text" name="email" required data-schema-key="email"  value="${sessionScope.user['email']}">
					<label for="email" class="">
						邮箱
					</label>
				</div>
				<div class="input-field">
					<textarea id="introduction" name="introduction" rows="5" required data-schema-key="introduction" maxlength="300" class="materialize-textarea">${sessionScope.user['introduction']}</textarea>
					<label for="introduction" class="">
						介绍
					</label>
				</div>
				<div class="row">
					<div class="col s12">
						<button class="waves-effect waves-light blue accent-2 btn">
							Save <i class="mdi-content-send right"></i>
						</button>
					</div>
				</div>
			</form>
		
		</div>
	</div>

</body>
</html>
