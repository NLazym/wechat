<%--
  Created by IntelliJ IDEA.
  User: zzy
  Date: 2017/5/25
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>管理中心</title>
	<link rel="stylesheet" href="../../css/head.css">
	<link rel="stylesheet" href="../../materialize-v0.98.2/css/materialize.min.css">
	<script type="text/javascript" src="../../js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="../../materialize-v0.98.2/js/materialize.min.js"></script>
</head>
<body>
	<header>
		<ul class="side-nav fixed" style="transform: translateX(0px);">
			<li>
				<div class="userView center">
					<img src="../../img/head.jpg" title="吉林大学校徽">
				</div>
			</li>
			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold">
						<a href="userManagement" class="collapsible-header waves-effect waves-teal">用户管理</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold">
						<a href="roleManagement" class="collapsible-header waves-effect waves-teal">角色管理</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold">
						<a href="documentManagement" class="collapsible-header waves-effect waves-teal">文章管理</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold">
						<a href="messageManagement" class="collapsible-header waves-effect waves-teal">信息管理</a>
					</li>
				</ul>
			</li>
			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold">
						<a href="feedbackManagement" class="collapsible-header waves-effect waves-teal">反馈管理</a>
					</li>
				</ul>
			</li>
		</ul>
	</header>
	<div style="float: right; width: 78%;">
		<div id="head">
			<h4 id="title">机器学习研究室</h4>
			<div id="content">
				<a href="home" title="点击前往主页" id="go-home">主页</a>
				<a href="logout" title="点击退出" id="logout">退出</a>
			</div>
		</div>
	</div>
</body>
</html>
