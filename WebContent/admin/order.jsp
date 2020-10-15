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
            
            <xblock><button class="layui-btn layui-btn-danger" onclick="recoverAll()">订单查询</button></xblock>
            <table class="layui-table" style="text-align:center">
                <thead >
					<tr>
                      <th style="text-align:center;">订单号</th>
                      <th style="text-align:center;">婚纱名称</th>
                      <th style="text-align:center;">拍摄地点</th>
                      <th style="text-align:center;">订单状态</th>
                      <th style="text-align:center;">摄影师名称</th>
					  <th style="text-align:center;">接待时间</th>
					  <th style="text-align:center;">完成时间</th>
					  <th style="text-align:center;">预定用户id</th>
					  <th style="text-align:center;">处理管理id</th>			
                      <th style="text-align:center;">操作</th>
                 	</tr>
                </thead>
                         
                <tbody>
                	<c:forEach var="order" items="${pageInfo.list}">
                		<form action="${pageContext.request.contextPath}/orderRecord/preOrder" method="post" class="myForm">
                		<input type="hidden" class="number" value="${order.number}">
                		<input type="hidden" name="oid" value="${order.oid}">
                		<input type="hidden" name="aid" value="${admin.aid}">
                      <tr>
                      	  <td>${order.oid}</td>	           			  
	           			  <td>${order.dress.name}</td>	                                          
						  <td>${order.place}</td>
						  <td>
						  	<c:if test="${order.status==0}">待管理员确认</c:if>		
						  	<c:if test="${order.status==1}">已接受预定</c:if> 
						  	<c:if test="${order.status==2}">拍摄完成</c:if> 
						  </td>		
						  <c:if test="${order.name==null&&order.number!=0}">
						  	<td><input style="color:#000;width:100px;" type="text" name="name"></td>
						  </c:if>
						  <c:if test="${order.name==null&&order.number==0}">
						  	<td>此订单仅为试穿单</td>
						  </c:if>
						  <c:if test="${order.name!=null}">
						  	<td>${order.name}</td>
						  </c:if>
						  <c:if test="${order.preTime==null}">
						  	<td><input style="color:#000" type="date" name="preTime"></td>
						  </c:if>
						  <c:if test="${order.preTime!=null}">
						  	<td>${order.preTime}</td>
						  </c:if>
						  <td>${order.endTime}</td>
						  <td>${order.uid}</td>
						  <td>${order.aid}</td>
	                      <td class="text-center">
	                        <div class="layui-btn-group">
	                        	<c:if test="${order.status==0}">
	                        	 <input type="submit" class="layui-btn layui-btn-xs layui-btn-danger" value="安排">
	                          </c:if>
	                        </div>
	                      </td>
	                      
                      </tr>
                      </form>
                      </c:forEach>
                      <tr>
                      	<td colspan="9" style="text-align:center">
							<a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?pageNum=${pageInfo.prePage}&status=${status}">上一页</a>
							<c:forEach begin="1" end="${pageInfo.pages}" varStatus="pageNum">
								<a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?pageNum=${pageNum.index}&status=${status}">${pageNum.index}</a>
							</c:forEach>
							<a href="${pageContext.request.contextPath}/orderRecord/getOrderByStatus?pageNum=${pageInfo.nextPage}&status=${status}">下一页</a>
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
    <input type="hidden" value="${admin.status}" id="status">
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
    <script type="text/javascript">
	    $(".myForm").submit(function(){
	    	var number = $(this).next().val(); 
	    	
	    	var status = $("#status").val();
			if(status > 2 && number > 2) {
				alert("您的身份权限不够，只有店长才可以接单");
				return false;
			}				
	    })
	</script>
        
</body>
</html>