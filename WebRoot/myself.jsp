<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.circliful.min.js"></script>
<link href="css/manager.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/myself.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>

</head>
<body>
	<header>
		<div class="logo" data-scroll-reveal="enter right over 1s">
			<a href="/"><img src="images/logo.png">
			</a>
		</div>
		<iframe src="title.jsp" scrolling="no" style="border: 0px; width:100%;" ></iframe>
	</header>
	<article>
		<div class="wrap">
			<div class="vip_cont c100 clearfix">
				<!-- 左侧导航 -->
				<div class="fl vip_left vip_magLeft">
					<dl>
						<dt>个人管理</dt>
						<dd>
							<p>
								<a href="#" target="_blank">我的拾获</a>
							</p>
							<p>
								<a href="#" target="_blank">我的丢失</a>
							</p>
							<p>
								<a href="#" target="_blank">进行中</a>
							</p>
							<p>
								<a href="#" target="_blank">最新活动</a>
							</p>
						</dd>
					</dl>
					<dl>
						<dt>我的账号</dt>
						<dd>
							<p>
								<a href="myself_changeDataUI">修改资料</a>
							</p>
							<p>
								<a href="myself_changePasswordUI">修改密码</a>
							</p>
						</dd>
					</dl>
				</div>
				<!-- 左侧导航结 -->

				<!-- 右侧内容 -->
				<div class="fr vip_right vip_magRight">
					<!-- 用户信息 -->
					<div class="cus01">
						<div class="cusImg">
							<img alt="更换头像" src="images/e03.jpg">
						</div>
						<div class="cusName">
							<p title="用户名称">用户名</p><span>${loginUser.username }</span>
							<span title="入驻时间">注册时间：2018-10-13</span> <span class="bdTell">账号绑定<i></i><em>187****3765</em>
							</span>
						</div>
					</div>
					<ul class="cus02">
						<li>
							<p>
								<span>我的拾获</span><a href="#" target="_blank">点击查看</a>
							</p> <span class="numbers" ><font>66</font>次</span></li>
						<li>
							<p>
								<span>我的丢失</span><a href="#" target="_blank">点击查看</a>
							</p> <span class="numbers"><font>66</font>次</span></li>
						<li>
							<p>
								<span>个人资料</span><a href="#" target="_blank">去完善</a>
							</p> <script>
								$(function() {
									$('#myStat').circliful();
								});
							</script> <span class="numbers mystat">
								<div id="myStat" data-dimension="60" data-text="85%"
									data-info="New Clients" data-width="10" data-fontsize="12"
									data-percent="85" data-fgcolor="#ff6561" data-bgcolor="#eee"
									data-fill="#FFF" class="circliful" style="width: 60px;"></div>
						</span></li>
					</ul>
				</div>
	</article>
	<script>
		if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
			(function() {
				window.scrollReveal = new scrollReveal({
					reset : true
				});
			})();
		};
	</script>
</body>
</html>
