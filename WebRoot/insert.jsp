<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>发布</title>
</head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.circliful.min.js"></script>
<link href="css/manager.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>
<script type="text/javascript" src="jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="css/insert.css">
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script language="javascript">
	//
	$(function() {
		$("#image").on("change", function() {
			var file = this.files[0];
			if (this.files && file) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#img1").attr("src", e.target.result);
				}
				reader.readAsDataURL(file);
			}
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<body>
	<header>
		<div class="logo" data-scroll-reveal="enter right over 1s">
			<a href="/"><img src="images/logo.png"> </a>
		</div>
		<iframe src="title.jsp" scrolling="no"
			style="border: 0px; width:100%;"></iframe>
	</header>
	<article>
		<div class="warpper">
			<!-- <form action="/Found_And_Lost/insert_insert" enctype="multipart/form-data" method="post"> -->
			<form action="uploads" method="post" enctype="multipart/form-data">
				<!-- <div> -->
				<div class="left">
					<div>
						<img src="images/label.png"> <select name="type"
							class="easyui-combobox" style="width:200px;">
							<option value="found">我捡到了</option>
							<option value="lost">我丢失了</option>
						</select>
					</div>
					<div>
						<img src="images/goods.png"><input name="goodsname"
							type="text" id="datepicker" placeholder="物品名称">
					</div>
					<div>
						<img src="images/fenlei.png"> <select name="category"
							class="easyui-combobox" style="width:200px;">
							<option value="其他">其他</option>
							<option value="卡片">卡片</option>
							<option value="包包">包包</option>
							<option value="电子">电子</option>
						</select>
					</div>
					<div>
						<img src="images/riqi.png"> <input name="lostdata" id="easyui-date"
							type="text" class="easyui-datebox" ></input>
					</div>
					<div>
						<img src="images/dizhi.png"><input name="address" type="text"
							placeholder="遗失地点">
					</div>
					<div>
						<img src="images/lianxiren.png"><input name="username"
							type="text" placeholder="联系人">
					</div>
					<div>
						<img src="images/shouji.png"><input name="phone" type="text"
							placeholder="联系方式">
					</div>
					<div>
						<img src="images/shuoming.png">
						<textarea placeholder="补充说明" name="descriptions"></textarea>
					</div>

				</div>
				<div class="form-img">
					<img id="img1" src="" style="width:200px;height:160px;"> <input
						id="image"  type="file" name="uploadImage" />
				</div> 
				<!-- </div> -->
				<div class="btn">
					<input type="submit">
				</div>
			</form>
		</div>
		<script>
			if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
				(function() {
					window.scrollReveal = new scrollReveal({
						reset : true
					});
				})();
			};
		</script>
	</article>

</body>
</html>