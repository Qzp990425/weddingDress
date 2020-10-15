<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<% String path = request.getContextPath();%>
    <meta charset="UTF-8">
    <title>添加婚纱</title>
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
            <!-- 右侧内容框架，更改从这里开始 -->
           <form action="${pageContext.request.contextPath}/admin/addAdmin" method="post" class="layui-form">

                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>用户名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_username" name="username" required="" lay-verify="nikename"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>手机号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_pass" name="tel" required="" lay-verify="pass"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
				<div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_pass" name="password" required="" lay-verify="pass"
                        autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_pass" class="layui-form-label">
                        <span class="x-red">*</span>身份
                    </label>
                    <div class="layui-input-inline">
						<select name="status">
						 	<option value="1">总经理</option>
						 	<option value="2">店长</option>
						 	<option value="3">员工</option>
						</select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <input type="submit"  class="layui-btn" lay-filter="add" lay-submit="" value="添加用户">
                </div>
            </form>
            <input type="hidden" value=<%=request.getAttribute("msg") %> id="msg" >
            <!-- 右侧内容框架，更改从这里结束 -->
          </div>
        </div>
        <!-- 右侧主体结束 -->
    </div>
    <!-- 中部结束 -->
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
</html>