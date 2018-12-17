<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<title>LostAndFound</title>
<link href="css/title.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>
</head>
<style type="text/css">
* {
	background: none;
}
</style>
<body>
	<header>
		<nav class="topnav" data-scroll-reveal="enter bottom over 1s after 1s">

			<a href="index_homeUI" target="view_frame"><span>大厅</span><span
				class="en">Home</span> </a>

			<!-- 验证是否登录 start-->
			<c:if test="${empty loginUser }">
				<a href="index_loginUI" target="view_frame"><span>登录</span><span
					class="en">Login</span> </a>
				<a href="index_registerUI" target="view_frame"><span>注册</span><span
					class="en">Register</span> </a>
			</c:if>

			<c:if test="${not empty loginUser }">
				<a href="index_insertUI" target="view_frame"><span>发布</span><span
					class="en">Saying</span> </a>
				<a href="index_myselfUI" target="view_frame"><span>欢迎您，${loginUser.username
						}</span><span class="en">Myself</span> </a>
				<a href="index_exitUI" target="view_frame"><span>退出</span><span
					class="en">Register</span> </a>
			</c:if>
			<!-- 验证是否登录end-->
			<a href="about.jsp" target="view_frame"><span>关于我们</span><span
				class="en">About</span> </a>


		</nav>
	</header>
	<script>
	if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
		(function(){
			window.scrollReveal = new scrollReveal({reset: true});
		})();
	};
</script>
</body>
</html>
