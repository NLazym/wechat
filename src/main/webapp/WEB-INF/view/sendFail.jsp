<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/23
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>出错了</title>
</head>
<body>
	<c:import url="head.jsp"/>
	<div id="fail" style="float: right; width: 78%;">
		<c:choose>
			<c:when test="${sessionScope.fail == '信息创建失败！'}">
				<p>信息创建失败！</p>
			</c:when>
			<c:when test="${sessionScope.fail == '向填写用户发送信息失败！'}">
				<p>向填写用户发送信息失败！请检查学号是否存在或出错！</p>
			</c:when>
			<c:otherwise>
				<p>
					向<span id="userId">${fn:substring(sessionScope.fail, 0, sessionScope.fail.length() - 1)}</span>发送信息失败，请检查学号是否存在或出错！
				</p>
			</c:otherwise>
		</c:choose>
		<a href="sendMessage">
			<button class="waves-effect waves-light blue accent-2 btn">重新发送信息</button>
		</a>
	</div>
</body>
</html>
