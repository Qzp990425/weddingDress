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
								<li><a href="#blog" class="scroll">婚纱区域</a></li>
								<li><a href="${pageContext.request.contextPath}/region/getRegionList">拍摄地点</a></li>
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
			<h3 class="w3ls_head">婚纱橱窗</h3>
			<p class="w3agile" style="margin-bottom:5px;">我们有不同颜色的婚纱给您提供，您可以进行选择下单，后续我们将根据您的时间进行预约拍照。</p>
			<p class="w3agile"><a href="${pageContext.request.contextPath}/dress/getAllDressByColorOne?color=0">只看白色</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/dress/getAllDressByColorOne?color=1">只看黑色</a></p>
			<c:forEach var="dress" items="${pageInfo.list}">
			<div class="col-md-6 w3lsblog-grid">
				<div class="blog-w3top">
					<h5>上架时间:${dress.time} </h5>
				</div>
				<div class="blog-left"> 
					<img src="${pageContext.request.contextPath}/dressImg/${dress.uuid}.jpg" style="width:243px;height:220px;">
				</div>
				<div class="blog-right" style="height:220px;">
					<h4><a href="${pageContext.request.contextPath}/dress/getDressByDid?did=${dress.did}" data-toggle="modal">${dress.name}</a></h4>
					<p>剩余数量:${dress.number}</p>
					<a class="w3more" href="${pageContext.request.contextPath}/dress/getDressByDid?did=${dress.did}" data-toggle="modal"><i class="fa fa-mail-forward" aria-hidden="true"></i>查看详情</a>
				</div>
				<div class="clearfix"></div>
			</div>
			</c:forEach>
			<div class="clearfix"></div>
			<div>
				<c:if test="${color==null}">
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item">
				      <a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDress?pageNum=${pageInfo.prePage}">前一页</a>
				    </li>
				    <c:forEach begin="1" end="${pageInfo.pages}" varStatus="pageNum">
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDress?pageNum=${pageNum.index}">${pageNum.index}</a></li>
					</c:forEach>
				    
				    <li class="page-item">
				      <a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDress?pageNum=${pageInfo.prePage}">下一页</a>
				    </li>
				  </ul>
				</nav>
				</c:if>
				<c:if test="${color!=null}">
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item">
				      <a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDressByColorOne?pageNum=${pageInfo.prePage}&color=${color}">前一页</a>
				    </li>
				    <c:forEach begin="1" end="${pageInfo.pages}" varStatus="pageNum">
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDressByColorOne?pageNum=${pageNum.index}&color=${color}">${pageNum.index}</a></li>
					</c:forEach>
				    
				    <li class="page-item">
				      <a class="page-link" href="${pageContext.request.contextPath}/dress/getAllDressByColorOne?pageNum=${pageInfo.prePage}&color=${color}">下一页</a>
				    </li>
				  </ul>
				</nav>
				</c:if>
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
</body>
</html>