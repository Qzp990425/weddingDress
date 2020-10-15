<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/user/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/user/css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/flexslider.css" type="text/css" media="screen" />  <!-- flexslider-CSS --> 
<link href="${pageContext.request.contextPath}/user/css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->  
<link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/swipebox.css">
<!-- //Custom Theme files -->  
<!-- web-fonts -->   
<link href="http://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>  
	<!-- banner -->
	<div class="agileits-banner jarallax">
		<div class="bnr-agileinfo"> 
			<!-- navigation -->
			<div class="top-nav w3-agiletop">
				<div class="container">
					<div class="navbar-header w3llogo">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>  
						<h1><a href="${pageContext.request.contextPath}/dress/getAllDress">婚纱摄影网</a></h1> 
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<div class="w3menu navbar-right">
							<ul class="nav navbar">
								<li><a href="${pageContext.request.contextPath}/dress/getAllDress" class="active">主页</a></li> 
								<li><a href="#blog" class="scroll">商品详情</a></li>
																<c:if test="${user!=null}">
									<li><a href="${pageContext.request.contextPath}/user/myMsg.jsp">个人主页</a></li>
								</c:if>
								<c:if test="${user==null}">
									<li><a href="${pageContext.request.contextPath}/user/login.jsp">先去登录</a></li>
								</c:if>
							</ul>
						</div> 
						<div class="clearfix"> </div>  
					</div>
				</div>	
			</div>	
			<!-- //navigation -->
			<!-- banner-text -->
			<div class="banner-text agileinfo"> 
				<div class="container">
					<div class="flexslider">
						<ul class="slides">
							<li> 
								<div class="banner-w3lstext">   
									<h3>Dresses & <br> Gowns for Wedding</h3> 
									<h4>MOLESTIAS EXCEPTURI SINT<br>OCCAECATI CUPIDITATE NON PROVIDENT</h4>  
								</div>
							</li> 
							<li>
								<div class="banner-w3lstext">   
									<h3>Exclusive & <br>Designer Jewellery</h3>
									<h4>EXCEPTURI SINT MOLESTIAS <br>OCCAECATI CUPIDITATE NON PROVIDENT</h4>  
								</div>
							</li>
							<li>
								<div class="banner-w3lstext">   
									<h3>Jewellery & <br>Dress Wedding Collection</h3>  
									<h4>CUPIDITATE EXCEPTURI SINT<br> MOLESTIAS OCCAECATI NON PROVIDENT</h4>  
								</div>
							</li>
						</ul> 
					</div> 	 
				</div>
			</div>
			<!-- //banner-text -->  
			<!-- arrow bounce --> 
			<div class="agileits-arrow bounce animated"><a href="#about" class="scroll"><i class="fa fa-angle-down" aria-hidden="true"></i></a></div>
			<!-- //arrow bounce -->  
		</div>
	</div>
	<!-- //banner --> 

	<div id="blog" class="blog services agile-blog">
		<div class="container"> 
			<h3 class="w3ls_head">商品详情</h3>
			<p class="w3agile" style="margin-bottom:5px;">这是您刚刚挑选的婚纱</p>
			<div class="col-md-12 w3lsblog-grid">
				<div class="blog-w3top">
					<h5>上架时间:${dress.time} </h5>
				</div>
				<div class="blog-left"> 
					<img src="${pageContext.request.contextPath}/dressImg/${dress.uuid}.jpg" style="height:750px;">
				</div>
				<div class="blog-right" style="height:750px;">
					<h4><a href="#" data-toggle="modal">${dress.name}</a></h4>
					<p>剩余数量:${dress.number}</p>
					<p>简介:${dress.introduction}</p>
					<p><a href="${pageContext.request.contextPath}/orderRecord/insertOrderOne?did=${dress.did}&uid=${user.uid}" class="btn btn-primary" data-toggle="modal">预定试穿</a></p>
					<p>如果要预定拍摄，请选择下面的拍摄地点</p>
					<form action="${pageContext.request.contextPath}/orderRecord/insertOrder">
						<input type="hidden" value="${dress.did}" name="did">
						<input type="hidden" value="${user.uid}" name="uid">
						<p>
							<c:forEach var="region" items="${regions}">
							  <input type="checkbox" name="rid" value="${region.rid}" />${region.name}
							</c:forEach>
						</p>
						<p><input type="submit" class="btn btn-primary" data-toggle="modal" value="预定拍摄"></p>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			
		</div>
	</div>
	<!--- //blog -->  


	<div class="w3l-footer">

	</div>
	<!-- //footer --> 
	<!-- js --> 
	<script src="${pageContext.request.contextPath}/user/js/jquery-2.2.3.min.js"></script> 
	<script src="${pageContext.request.contextPath}/user/js/SmoothScroll.min.js"></script> 
	<script src="${pageContext.request.contextPath}/user/js/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>  
	<!-- //js --> 
	<!-- FlexSlider --> 
	<script defer src="${pageContext.request.contextPath}/user/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
	<!-- //End-FlexSlider -->  
	<!-- swipe box js -->
	<script src="${pageContext.request.contextPath}/user/js/jquery.swipebox.min.js"></script> 
		<script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
	</script>
	<!-- //swipe box js -->
	<!-- start-smooth-scrolling --> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <script src="${pageContext.request.contextPath}/user/js/bootstrap.js"></script>
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