<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登陆</title>
<link rel="stylesheet" href="css/loginstyle.css" type="text/css" />
<script src="js/jquery-1.7.1.min.js"></script>
</head>
<body>

	<div class="wrap" id="wrap">
		<div class="register-wrap" id="register-wrap">
			<div class="register" id="register">
				<div class="register-top" id="reg-top">
					<h2 class="normal" id="normal">账号登录</h2>
				</div>
				<!--普通登录-->
				<div class="register-con" id="rc">
					<form action="login_login" method="post">
						<ul>
							<li id="rc-inner-num"><i></i> <span>请输入用户名/手机号码</span></li>
							<li id="rc-inner-virity"><i></i> <span>请输入密码</span></li>
							<li id="rc-innerError" class="rc-innerError"
								style="width:300px;
								height:32px;
								padding:0 6px;
								color:#ff1877;
								border:1px solid #ffd797;
								display:none;">
							</li>
							<li class="form-group"><input type="text" name="username"
								id="uname" class="form-control" placeholder="用户名/手机号码" /> <span
								class="fa fa-check success"
								style="display:none;color:green;position:relative;left:-25px;top:5px;"></span>

							</li>
							<li class="form-group"><input type="password"
								name="password" id="pass" class="form-control" placeholder="密码" />

							</li>
							<li class="read"><input type="checkbox" class="ck"
								name="check" value="1" checked="checked" /> <b>2周内自动登录</b> <a
								href="#">忘记密码？</a></li>
							<li>
								<button class="submit1" type="submit" id="login-submit"
									style="border-radius:5px;">立即登录</button></li>
							<li class="hwzc"><a href="#" class="haiwai">海外手机登录</a> <a
								href="#" class="zhuce">新用户注册</a></li>
							<li class="other">其他登录方式：</li>
							<li>
								<div class="qq" style="border-radius:5px;"></div>
								<div class="weixin" style="border-radius:5px;"></div>
								<div class="weibo" style="border-radius:5px;"></div></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/loginstyle.js"></script>
</body>
</html>