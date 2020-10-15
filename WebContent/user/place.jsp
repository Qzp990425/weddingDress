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
								<li><a href="${pageContext.request.contextPath}/dress/getAllDress">婚纱区域</a></li>
								<li><a href="#blog" class="scroll">拍摄地点</a></li>
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
			 

	<div id="blog" class="blog services agile-blog">
		<div class="container"> 
			<h3 class="w3ls_head">拍摄场景</h3>
			<p class="w3agile" style="margin-bottom:5px;">我们每个拍摄场地都有不同的特色 您可以先进行查看样例模板</p>
			<p class="w3agile">
				<c:forEach var="region" items="${regions}">
					<button value="${region.rid}" class="myBtn">${region.name}</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</c:forEach>
			
			</p>
			
			<div class="w3lsblog-grid">
				<div class="my">
				<c:forEach var="place" items="${places}">
					<img src="${pageContext.request.contextPath}/placeImg/${place.picture}.jpg" style="height:200px;width:240px;">
				</c:forEach> 
				</div>
			</div>
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
    
    <script>
    	$(".myBtn").click(function(){
    		var rid = $(this).val();
    		$.ajax( {
                url:"/weddingDress/place/getPlaceList",
                type:"get",
                data:"rid="+rid,
                async:false,
             success:function(result){
                /* $("#talksub").unbind();   //进行解绑 */
                  var Obj = $("<code></code>").append($(result));//包装数据               
                   var html = $(".my", Obj);
                       $(".w3lsblog-grid").html(html);
                },
           error:function(e){
                  alert("wrong");
                console.log(e);
           }
          });
    	})
    
    
    </script>
</body>
</html>