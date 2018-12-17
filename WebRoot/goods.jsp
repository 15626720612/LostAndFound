<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.aib.domain.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	ActionContext context= ActionContext.getContext();
    Map s = (Map)context.getSession();
    System.out.println(s.get(0));
	//Goods goods=(Goods)s.get(0);
 %>
<!doctype html>
<html>

<head>
  <title>LostAndFound</title>
  <link href="css/base.css" rel="stylesheet">
  <link href="css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="css/goods.css">
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="src/css/mag.css" />
  <link rel="stylesheet" href="src/theme/default.css" />
  <link rel="stylesheet" href="css/img.css" />

  <!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
  <script src="js/scrollReveal.js"></script>
  <script src="js/jquery-1.7.1.min.js"></script>
  <script src="js/jquery.slideBox.js"></script>
  <script src="js/myjquery.js"></script>
  <script src="js/goods.js"></script>
  <script src="js/jquery.bridget.js"></script>
  <script src="js/jquery.mousewheel.min.js"></script>
  <script src="js/jquery.event.drag.js"></script>
  <script src="js/screenfull.js"></script>
  <script src="js/hammer.min.js"></script>
  <script src="js/PreventGhostClick.js"></script>
  <script src="js/index.js"></script>

  <script src="src/js/mag-analytics.js"></script>
  <script src="src/js/mag.js"></script>
  <script src="src/js/mag-jquery.js"></script>
  <script src="src/js/mag-control.js"></script>

</head>

<body>
  <header>
    <div class="logo" data-scroll-reveal="enter right over 1s"><a href="/"><img src="images/logo.png"></a></div>
    <iframe src="title.jsp" scrolling="no"
			style="border: 0px; width:100%;"></iframe>
  </header>
  <article>
    <div class="container">
      <div class="goods-wrap">
        <!-- 左侧图片 -->
        <!-- 建立显示原图窗口 -->
        <div class="orig">
          <!-- 插入要放大的图片
            <img src="./images/03.jpg" alt="" width="400"> -->
          <!-- 加入用于锁定放大区域的小框框 -->
          <!-- <div class="blocks"></div> -->
          <div mag-thumb='inner'>
            <img src="${goods.imgUrl }" width="300px" alt="">
          </div>
          <div mag-zoom='inner'>
            <img src="${goods.imgUrl }" width="800px" alt="">
          </div>
        </div>
        <div class="about_text">
         
        </div>

        <!-- 右侧 -->
        <div class="right">
          <h2>${goods.type}|${goods.goodsname}</h2>
          <div class="person">
            <img src="images/e03.jpg" style="width: 50px;height: 50px;">
            <span class="phone-icon" style="background: url('images/phone.png');background-size:contain;"></span><span>${goods.phone }</span>
          </div>
          <h3>详情：</h3>
          <p>${goods.descriptions}</p>
          <div class="btn">
            <input type="button" name="" class="btn-link" value="联系她">
            <input type="button" name="" class="btn-help" value="帮她找">
          </div>
        </div>
      </div>
      <!-- 评论区 -->
      <!-- <div class="under">

      </div> -->
    </div>
    </aside>
  </article>
  <script>
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
      (function () {
        window.scrollReveal = new scrollReveal({
          reset: true
        });
      })();
    };
    $host = $('[mag-thumb="inner"]');
    $host.mag();
  </script>
</body>

</html>
