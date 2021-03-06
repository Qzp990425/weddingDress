<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
	<% String path = request.getContextPath();%>
    <meta charset="UTF-8">
    <title>婚纱查看</title>
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
    <div class="wrapper" style="width:1250px;height:800px;margin-left:-10px;margin-top:-20px">
        
        <!-- 右侧主体开始 -->
        <div class="page-content">
          <div class="content">
            
            <xblock><button class="layui-btn layui-btn-danger" onclick="recoverAll()">地点查询</button></xblock>
            <table class="layui-table" style="text-align:center">
                <thead >
                	<tr>
                		<th style="text-align:center;">序号</th>
                      <th style="text-align:center;">地点名称</th>
                      <th style="text-align:center;">地点照片</th>
                      <th style="text-align:center;">操作</th>
                 	</tr>
                </thead>
                         
                <tbody>
                	<c:forEach var="place" items="${pageInfo.list}">
                      <tr style="height:120px;">
                      	<td>${place.pid}</td>	           			  
	           			  <td>${place.region.name}</td>
	                      <td><img src="${pageContext.request.contextPath}/placeImg/${place.picture}.jpg" style="width:100px;height:100px;"></td>                      	
	                      <td class="text-center">
	                        <div class="layui-btn-group">
	                        	 <a href="${pageContext.request.contextPath}/place/deletePlace?pid=${place.pid}" class="layui-btn layui-btn-xs layui-btn-danger">删除</a>
	                        </div>
	                      </td>
                      </tr>
                      </c:forEach>
                      <tr>
                      	<td colspan="4" style="text-align:center">
							<a href="${pageContext.request.contextPath}/place/getAllPlace?pageNum=${pageInfo.prePage}">上一页</a>
							<c:forEach begin="1" end="${pageInfo.pages}" varStatus="pageNum">
								<a href="${pageContext.request.contextPath}/place/getAllPlace?pageNum=${pageNum.index}">${pageNum.index}</a>
							</c:forEach>
							<a href="${pageContext.request.contextPath}/place/getAllPlace?pageNum=${pageInfo.nextPage}">下一页</a>
                      	</td>
                      </tr>

                </tbody>
            </table>
            <!-- 右侧内容框架，更改从这里结束 -->
       
          </div>
        </div>
        <!-- 右侧主体结束 -->
    </div>
    <!-- 中部结束 -->
    
    <!-- 页面动态效果 -->
        <input type="hidden" id="msg" value="${msg}">
            <script type="text/javascript">
		$(document).ready(function(){
		        //jQuery代码
		       var msg = $("#msg").val();
		       if(!isEmpty(msg)){
		             alert(msg);
		       }
		});
		function isEmpty(value){
		    if(value == null || value == "" || value == "undefined" || value ==  undefined || value == "null"){
		        return true;
		    }
		    else{
		        value = value.replace(/\s/g,"");
		        if(value == ""){
		            return true;
		        }
		        return false;
		    }
		}
	</script>
        
        
</body>
</html>