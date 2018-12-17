<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<!-- <META HTTP-EQUIV="Refresh" CONTENT="0;URL=index_homeUI"> -->
<!-- 刷新頁面 -->
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<script src="js/scrollReveal.js"></script>
<script src="js/jquery-1.7.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/color.css">
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>

<!-- 后端用的 -->
<script type="text/javascript">
	$(function(){
		$('#cc').combobox({
			onSelect: function(record){
				 open(record.value,'_blank');
			}
		});
    });
</script>

<script type="text/javascript">
	function abc(sobj) {
		var dourl=sobj.options[sobj.selectedIndex].value;
		
	}
</script>


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
		<div class="container">
			<div id="banner">
				<div class="search-header">
					<div class="search-bar">
						<input type="text" name="" id="search-input"> <input
							type="button" name="" value="搜索" id="search-button">
					</div>
				</div>

				<div class="select">
					<table>
						<tr>
							<td id="frist"><select id="cc" style="width:130px;"
								onchange=mbar(this) name="select">
									<option value="goods_findCategory">全部</option>
									<option value="goods_findCategory?category=卡片">卡片</option>
									<option value="goods_findCategory?category=通讯">通讯</option>
									<option value="goods_findCategory?category=包裹">包裹</option>
									<option value="goods_findCategory?category=其他">其他</option>
							</select>
							</td>
							<td id="second">
								<div id="second-div">
									<li><a href="goods_findtypeGoods"><span>默认</span>
									</a></li>
									<!-- <li><a href="/Found_And_Lost/goods_findAllGoods?type=found"><span>时间</span>
									</a></li> -->
									<li><a
										href="goods_findtypeGoods?type=lost"><span>失物招领</span>
									</a></li>
									<li><a
										href="goods_findtypeGoods?type=found"><span>寻物启事</span>
									</a></li>
								</div>
							</td>
						</tr>
					</table>
				</div>


			</div>


			<ul class="cbp_tmtimeline">


				<s:iterator value="list">
					<li><time class="cbp_tmtime">
							<span><s:property value="data" /> </span>
						</time>
						<div class="cbp_tmicon"></div>
						<div class="cbp_tmlabel" data-scroll-reveal="enter right over 1s">
							<h2>
								<s:property value="type" />
							</h2>
							<p>
								<span class="blogpic"><a href="showGoods?indexId=${id}"><img
										src='<s:property value="imgUrl"/>'> </a> </span>
								<s:property value="descriptions" />
							</p>
							<a href="showGoods?indexId=${id} " target="_blank"
								class="readmore">查看详情&gt;&gt;</a>
						</div>
					</li>
				</s:iterator>

			</ul>

		</div>

		<!-- 分页start =======================================-->
		<center>
			<a size="5">共<font><s:property value="totalPage" />
			</a>页 </a>&nbsp;&nbsp; <a size="5">共<a><s:property value="totalCount" />
			</a>条记录</a><br> <br>

			<s:if test="currPage == 1">
            	首页&nbsp;&nbsp;&nbsp;上一页
        	</s:if>

			<s:else>
				<a href="goods_findtypeGoods?type=${type }&&category=${category }&&currPage=1">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a
					href="goods_findtypeGoods?type=${type }&&category=${category }&&currPage=<s:property value="currPage-1" />">上一页</a>
			</s:else>

			<s:if test="currPage != totalPage">
				<a
					href="goods_findtypeGoods?type=${type }&&category=${category }&&currPage=<s:property value="currPage+1" />">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a
					href="goods_findtypeGoods?type=${type }&&category=${category }&&currPage=<s:property value="totalPage" />">尾页</a>
			</s:if>

			<s:else>
            		下一页&nbsp;&nbsp;&nbsp;尾页
        		</s:else>

		</center>
		<!-- 分页end =======================================-->


		<br />
		<!-- 选择第几个页面跳转start -->
		<!-- <center>
			<form action="/Found_And_Lost/Goods_findAllGoods" method="post">
				<font size="4">跳转至</font> <input type="text" size="2" name="page">页
				<input type="submit" value="跳转">
			</form>

		</center> -->


	</article>
	<footer> </footer>
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
