<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.circliful.min.js"></script>
<link href="css/manager.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/detail.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>
<script type="text/javascript" src="js/pwd.js"></script>
</head>
<body>
	<header>
		<div class="logo" data-scroll-reveal="enter right over 1s">
			<a href="/"><img src="images/logo.png"> </a>
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
					<form action="changePwd_changePwd" method="post">
						<div id="register_body">
							<span id="error_tip" class="error_tip"
								style="display:none;color:red;font-size:20px;border: 1px solid #ffd797;margin-left: 220px;padding: 5px 10px;"></span>
							</span>
						</div>
						<table class="tb">
							<tr>
								<td class="b_td">旧密码</td>
								<td><input type="text" name="jpassword" value="${loginUser.password }" />
									<p>
										<span>请输入当前密码</span>
									</p>
								</td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td class="b_td">新密码</td>
								<td><input type="text" name="password" id="password2" />
									<p>
										<span>密码强度不能少于8位，可字符、字母、数字结合 </span>
									</p>
								</td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td class="b_td">确认密码</td>
								<td><input type="text" name="checkPassword" id="cfpassword2" />
									<p>
										<span>请确认密码</span>
									</p>
								</td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td class="b_td">提示答案</td>
								<td><input type="text" name="password_prompt" />
									<p>
										<span>请输入密码提示问题的答案</span>
									</p>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="center" colspan="2"><button type="submit">修改</button>
								</td>
							</tr>
						</table>
					</form>
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
