<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台管理系统</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/font.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-3.4.1.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/swiper.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/swiper.jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/xadmin.js"></script>
    
</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="#">后台管理系统</a></div>
        <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
        <ul class="layui-nav right" >
          <li class="layui-nav-item">
          	<a href="${pageContext.request.contextPath}/admin/exit"></a>      
          </li>          
        </ul>
    </div>
    <!-- 顶部结束 -->
    
</body>
</html>