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
	<div id="fail">
		<c:choose>
			<c:when test="${sessionScope.fail == '信息创建失败！'}">
				${sessionScope.fail == '信息创建失败！'}
			</c:when>
			<c:otherwise>
				<p>
					向<span id="userId">${fn:substring(sessionScope.fail, 0, sessionScope.fail.length() - 1)}</span>发送信息失败，请检查学号是否存在或出错！
				</p>
				<a href="sendMessage">
					<input type="button" value="继续发送信息" id="continue">
				</a>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>
