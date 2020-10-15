<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>婚纱摄影登录系统</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/user/css/login.css">
</head>
<body>
<div class="wrapper">

	<div class="container">
     <!--<p class="margin20"><img src="images/logo.png" /></p>-->
		<h2 id="title" >会员登录</h2>
       
		<form action="${pageContext.request.contextPath}/user/login" method="post">
				<div>
					<input id="username" type="text" name="tel" value=""
						placeholder="手机号" />
				</div>
				<div>
					<input id="password" type="password" name="password" value=""
						placeholder="密码" />
				</div>

				<div class="do">
					<a href="${pageContext.request.contextPath}/user/register.jsp">立即注册</a>
				</div>
				<div>
					<input type="submit" id="loginbtn" value="登录">
				</div>
		</form>
		
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/jquery1x.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/jquery.tips.js" ></script>
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