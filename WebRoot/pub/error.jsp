<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link href="css/base.css" rel="stylesheet">
<script src="js/scrollReveal.js"></script>
</head>
<body>
<header>
  <div class="logo" data-scroll-reveal="enter right over 1s"><a href="/"><img src="images/logo.png"></a></div>
  
  <iframe src="title.jsp" scrolling="no" style="border: 0px; width:100%;" ></iframe>
</header>
<article>
  <div class="container">
    <h1>失败了</h1>
  </div>
  </aside>
</article>
<script>
	if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
		(function(){
			window.scrollReveal = new scrollReveal({reset: true});
		})();
	};
</script>
</body>
</html>
