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
<title>LostAndFound</title>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/scrollReveal.js"></script>
<!-- <script type="text/javascript" src="js/register3.js"></script> -->
<script type="text/javascript" src="js/register.js"></script>
<link href="css/base.css" rel="stylesheet">
<link href="css/register3.css" rel="stylesheet">
<script type="text/javascript" src="js/scrollable.js"></script>
<!-- <script type="text/javascript" src="js/usescroll.js"></script> -->
</head>
<body>
	<header>
	<div class="logo" data-scroll-reveal="enter right over 1s">
		<a href="/"><img src="images/logo.png"> </a>
	</div>
	<iframe src="title.jsp" scrolling="no" style="border: 0px; width:100%;"></iframe>
	</header>

	<article>
	<div id="content">
		<form action="register_register" method="post">
			<div id="wizard">
				<ul id="status">
					<li class="active"><strong>1.</strong>创建账户</li>
					<li><strong>2.</strong>填写联系信息</li>
					<li><strong>3.</strong>完成</li>
				</ul>

				<div class="items">
					<div class="page">
						<div id="register_body">
							<span id="error_tip" class="error_tip"
								style="display:none;color:red;font-size:20px;border: 1px solid #ffd797;margin-left: 220px;padding: 5px 10px;"></span>
							</span>
						</div>
						<div id="register_body">
							<img src="images/person.png"> <span id="register_span">
								<input name="username" id="uname" type="text"
								placeholder="请输入用户名" class="input_text" /> </span>
						</div>
						<div id="register_body">
							<img src="images/pwd.png"> <span id="register_span">
								<input name="password" type="password" id="password2"
								class="input_text" placeholder="请输入密码" /> </span>
						</div>
						<div id="register_body">
							<img src="images/number.png"> <span id="register_span">
								<input name="phone" id="uphone" type="text"
								placeholder="请输入手机号码" class="input_text" /> </span>
						</div>
						<div id="register_body">
							<img src="images/pwd.png"> <span id="register_span">
								<input type="password" id="cfpassword2" class="input_text"
								placeholder="请确认密码" /> </span>
						</div>
						<div class="btn_nav">
							<input type="button" class="next right" id="nextbtn1"
								value="下一步&raquo;" />
						</div>
					</div>

					<!-- 第二页 -->
					<div class="page">
						<div id="register_body">
							<span id="error_tip" class="error_tip"
								style="display:none;color:red;font-size:20px;border: 1px solid #ffd797;margin-left: 220px;padding: 5px 10px;"></span>
							</span>
						</div>
						<div id="register_body">
							<img src="images/editor.png"> <span id="register_span">
								<input name="uname" id="rename" type="text"
								placeholder="请输入您的真实姓名" /> </span>
						</div>
						<div id="register_body">
							<span id="register_span"> 性别：<label><select name="sex"
									style="width:50px;height: 30px;">
										<option selected="selected" value="男">男</option>
										<option value="女">女</option>
								</select> </label> </span>
						</div>
						<div id="register_body">
							<img src="images/editor.png"> <span id="register_span">
								<input name="id_number" id="idcard" type="text"
								placeholder="请输入您的身份证号码" /> </span>
						</div>
						<div id="register_body">
							<img src="images/editor.png"> <span id="register_span">
								<input name="code_address" type="text" id="email"
								placeholder="请输入您的电子邮箱地址" /> </span>
						</div>
						<div id="register_body">
							<img src="images/editor.png"> <span id="register_span">
								<input name="password_prompt" type="text" id="tips_q"
								placeholder="请输入忘记密码时要提示的问题" /> </span>
						</div>
						<div id="register_body">
							<img src="images/editor.png"> <span id="register_span">
								<input name="prompt_answer" type="text" id="tips_a"
								placeholder="请输入提示问题的答案" /> </span>
						</div>
						<div class="btn_nav">
							<input type="button" class="prev" style="float:left" id="prebtn1"
								value="&laquo;上一步" /> <input type="button" class="next right"
								id="nextbtn2" value="下一步&raquo;" />
						</div>
					</div>

					<!-- 第三页 -->
					<div class="page">
						<div id="register_body">
							<span id="error_tip" class="error_tip"
								style="display:none;color:red;font-size:20px;border: 1px solid #ffd797;margin-left: 220px;padding: 5px 10px;"></span>
							</span>
						</div>
						<h3>注册成功</h3>
						<h4>Fonud_And_Lost欢迎您！</h4>
						<p>请点击“确定”按钮跳转到登录页面。</p>
						<div class="btn_nav">
							<input type="button" class="prev" style="float:left" id="prebtn2"
								value="&laquo;上一步" /> <input type="submit" class="next right"
							    value="确定" />
						</div>
					</div>
				</div>
			</div>
		</form>
		<br />
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