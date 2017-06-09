<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/4/11
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Title</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../../materialize-v0.98.2/css/materialize.min.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../materialize-v0.98.2/js/materialize.min.js"></script>
	<script type="text/javascript" src="../../js/head.js"></script>
</head>
<body>
	<header>
		<ul class="side-nav fixed" style="transform: translateX(0px);">
			<li>
				<div class="userView center">
					<a href="home"><img src="../../img/head.jpg"></a>
				</div>
			</li>
			<li class="no-padding">
				<ul class="">
					<li class="bold">
						<a href="upload" class="collapsible-header waves-effect waves-teal">上传文件</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="">
					<li class="bold">
						<a href="download" class="collapsible-header waves-effect waves-teal">下载文件</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible">
					<li class="bold">
						<a href="sendMessage" class="collapsible-header waves-effect waves-teal">发送信息</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible">
					<li class="bold">
						<a href="unknownMessages" class="collapsible-header waves-effect waves-teal">未读信息<span class="right" id="n"></span></a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible">
					<li class="bold">
						<a href="allMessages" class="collapsible-header waves-effect waves-teal">所有信息</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible">
					<li class="bold">
						<a href="connection" class="collapsible-header waves-effect waves-teal">联系我们</a>
					</li>
				</ul>
			</li>
		</ul>
	</header>
	<div style="float: right; width: 80%;">
		<nav>
			<div class="nav-wrapper">
				<a href="#" class="brand-logo">&nbsp;&nbsp;机器学习研究室</a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="home" title="点击前往主页">主页</a></li>
					<c:choose>
						<c:when test="${sessionScope.user == null}">
							<li><a href="login" title="点击登录">请登录</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="update" title="点击修改个人信息">${sessionScope.user["username"]}</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="logout" title="点击退出">退出</a></li>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>
