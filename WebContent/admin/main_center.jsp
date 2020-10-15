<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<% String path = request.getContextPath();%>
	<meta charset="UTF-8">
	<title>管理系统</title>
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
    
    <!-- 中部开始 -->
    <div class="wrapper">
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
          <div id="side-nav">
            <ul id="nav">
                <li class="list" current>
                    <a href="main_right.jsp" target="right">
                        <i class="iconfont">&#xe761;</i>
                        欢迎页面
                        <i class="iconfont nav_right">></i>
                    </a>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                        订单管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
						<li>
                            <a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?status=0" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                 				 待安排订单
                            </a>
                        </li>

						<li>
                            <a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?status=1" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                              	 待用户确认订单
                            </a>
                        </li>

						<li>
                            <a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?status=2" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                                               已完成订单
                            </a>
                        </li>						
                    </ul>
                </li>                
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                        商品管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">	
						<li>
                            <a href="${pageContext.request.contextPath}/admin/dress_add.jsp" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                添加婚纱
                            </a>
                        </li>
						
                    </ul>
                </li>

                
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                       婚纱类型
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                        <li>
                            <a target="right" href="${pageContext.request.contextPath}/dress/getAllDressByColor?color=0">
                                <i class="iconfont">&#xe6a7;</i>
                              白色
                            </a>
                        </li>
						<li>
                            <a target="right" href="${pageContext.request.contextPath}/dress/getAllDressByColor?color=1">
                                <i class="iconfont">&#xe6a7;</i>
                黑色
                            </a>
                        </li>
                   </ul>			
                </li>
				<li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                        拍摄地点管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                        <li>
                            <a href="${pageContext.request.contextPath}/region/getAllRegion" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                查看地点
                            </a>
                        </li>
                                                <li>
                            <a href="${pageContext.request.contextPath}/admin/region_add.jsp" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                地点添加
                            </a>
                        </li>
                    </ul>
                </li>
               <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                        地点照片管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                        <li>
                            <a href="${pageContext.request.contextPath}/place/getAllPlace" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                查看照片
                            </a>
                        </li>
                                                <li>
                            <a href="${pageContext.request.contextPath}/region/getRegionList1" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                                照片添加
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                      	管理员管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                    	<li>
                            <a href="${pageContext.request.contextPath}/admin/getAllAdmin" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                               	管理员查询
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/admin_add.jsp" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                               	管理员添加
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/admin_update.jsp" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                               	密码管理
                            </a>
                        </li>
                    </ul>                    
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a3;</i>
                      	公告管理
                        <i class="iconfont nav_right">></i>
                    </a>
                    <ul class="sub-menu" style="display:none">
                    	<li>
                            <a href="${pageContext.request.contextPath}/notice/getAllNotice" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                               	公告查询
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/notice/readyAdd" target="right">
                                <i class="iconfont">&#xe6a7;</i>
                              	公告发布
                            </a>
                        </li>
                    </ul>                    
                </li>
            </ul>
          </div>
        </div>
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
			<iframe src="${pageContext.request.contextPath}/admin/main_right.jsp" scrolling="no" width="100%" height="800px" name="right" border="none" frameborder="no"></iframe>
        </div>  
        <!-- 右侧主体结束 -->
    </div>
    <!-- 中部结束 -->

   
</body>
</html>