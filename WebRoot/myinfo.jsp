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
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.circliful.min.js"></script>
<link href="css/base.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/myself.css" rel="stylesheet">
<link href="css/update.css" rel="stylesheet">
<link href="css/manager.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>

</head>
<body>
	<header>
		<div class="logo" data-scroll-reveal="enter right over 1s">
			<a href="/"><img src="images/logo.png"> </a>
		</div>
		<iframe src="title.jsp" scrolling="no"
			style="border: 0px; width:100%;"></iframe>
	</header>
	<article>
		<div class="wrap">
			<div class="vip_cont c100 clearfix">
				<!-- 左侧导航 -->
				<div class="fl vip_left vip_magLeft" id="left">
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
					<form action="changeInfo_changeInfo" method="post">
						<table class="center-table" width="100%">
							<tr>
								<td rowspan="5" colspan="4" align="center"><img alt="头像"
									src="images/e03.jpg" />
								</td>
							</tr>
							<tr>
								<td class="r-td">用户名称</td>
								<td><input type="text" name="uname"
									value="${loginUser.uname }" />
								</td>
							</tr>
							<tr>
								<td class="r-td">密码提示</td>
								<td><input type="text" name="password_prompt"
									value="${loginUser.password_prompt }" />
								</td>
							</tr>
							<tr>
								<td class="r-td">身份证号</td>
								<td><input type="text" name="id_number"
									value="${loginUser.id_number }" />
								</td>
							</tr>
							<tr>
								<td class="r-td" align="center">性别</td>
								<td><select name="sex" style="width:50px;height: 30px;">
										<option selected="selected" value="男">男</option>
										<option value="女">女</option>
								</select>
								</td>
							</tr>
							<tr>
								<td colspan="4" rowspan="4" align="center"><span
									style="font-size: 24px;">${loginUser.username }</span>
								</td>
							</tr>
							<tr>

								<td class="r-td">邮箱地址</td>
								<td><input type="text" name="code_address"
									value="${loginUser.code_address }" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td colspan="6" align="center"><button type="submit">修改资料</button>
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
