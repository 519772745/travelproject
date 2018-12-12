﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ch">
<head>
	<meta charset="UTF-8">
	<!-- For IE -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- For Resposive Device -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- For Window Tab Color -->
	<!-- Chrome, Firefox OS and Opera -->
	<meta name="theme-color" content="#2c2c2c">
	<!-- Windows Phone -->
	<meta name="msapplication-navbutton-color" content="#2c2c2c">
	<!-- iOS Safari -->
	<meta name="apple-mobile-web-app-status-bar-style" content="#2c2c2c">

	<title>微旅WeTrip</title>
	<link rel="shortcut icon" href="dailytopic/images/icon.ico" type="zone/image/x-icon">

	<!-- Main style sheet -->
	<link rel="stylesheet" type="text/css" href="dailytopic/css/style.css">
	<!-- responsive style sheet -->
	<link rel="stylesheet" type="text/css" href="dailytopic/css/responsive.css">
	<!-- Theme-Color css -->
	<link rel="stylesheet" id="jssDefault" href="dailytopic/css/color.css">
	<!-- BASE CSS -->
	<link href="dailytopic/css/bootstrap.min.css" rel="stylesheet">
	<link href="dailytopic/css/banner-style.css" rel="stylesheet">
	<link href="dailytopic/css/vendors.css" rel="stylesheet">


	<!-- Fix Internet Explorer ______________________________________-->

<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script src="vendor/html5shiv.js"></script>
	<script src="vendor/respond.js"></script>
	<![endif]-->


</head>

<body>

	<div class="main-page-wrapper">
	<!-- 
	=============================================
					Banner
	============================================== 
-->
<header class="header menu_fixed">

	<div id="logo">
		<a href="index.html">
			<img src="dailytopic/images/logo_white.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
			<img src="dailytopic/images/logo_black.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
		</a>
	</div>
	<!--这是旁边的三个按钮-->
	<ul id="top_menu">
		<li><a href="editor.html"><img src="dailytopic/images/add_button1.png" width="24" height="24"></a></li>
		<li><a href="login.html"><img src="dailytopic/images/personal_button1.png" width="24" height="24"></a></li>
		<li><a href="cart.html"><img src="dailytopic/images/shopping_button1.png" width="24" height="24"></a></li>
		<li><a href="personalinfo.html"><img src="dailytopic/images/config_button1.png" width="24" height="24"></a></li>

	</ul>
	<ul id="top_menu2">
		<li><a href="editor.html"><img src="dailytopic/images/add_button.png" width="24" height="24"></a></li>
		<li><a href="login.html"><img src="dailytopic/images/personal_button.png" width="24" height="24" ></a></li>
		<li><a href="cart.html"><img src="dailytopic/images/shopping_button.png" width="24" height="24"></a></li>
		<li><a href="personalinfo.html"><img src="dailytopic/images/config_button.png" width="24" height="24"></a></li>

	</ul>
	<!-- /top_menu -->
	<a href="#menu" class="btn_mobile">
		<div class="hamburger hamburger--spin" id="hamburger">
			<div class="hamburger-box">
				<div class="hamburger-inner"></div>
			</div>
		</div>
	</a>
	<nav id="menu" class="main-menu">
			<!--
				------------------------------------------
							这是banner上的分栏
				------------------------------------------
			-->
			<ul>
					<li><span><a href="index.jsp">首页</a></span></li>
					<c:forEach items="${tags }" var="t">
					<li><span><a href="part.html">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="producthot">周边商城</a></span></li>
					<li><span><a href="dailytopic.html">今日话题</a></span></li>
				</ul>
		</nav>
	</header>

	<!-- 
	=============================================
					文章展示页
	============================================== 
-->
<div class="container" style="margin-top: 80px;" style="margin: 0 auto">
	<!--上方标题-->
	<div style="width: 1200px;height: 260px;margin: 0 auto;background-color: #f5f5f5;background-image: url(dailytopic/images/topic/background.png);background-repeat: no-repeat;background-position: 95% 70%">  
		<h2 style="font-size: 36px;font-weight: 700;margin: 60px 0px 20px 50px;padding-top: 20px;">这是个标题啊标题</h2>
		<p style="line-height: 1.75;color: #333;font-size: 14px;margin-left: 50px;width: 700px">
			这是段简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介……</p>
			<div style="margin-left: 50px;height: 20px;line-height: 20px;margin-top: 10px;margin-bottom: 10px;font-size: 12px">
				<span style="float: left;margin-right: 12px;color: #808080;line-height: 20px;font-size: 12px"><a href="##" style="color: #808080">官方嘤</a></span>
				<span style="float: left;margin-right: 12px;color: #808080;line-height: 20px;font-size: 12px">今天 19:00</span>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-12 blog-grid-style hover-effect-one">
				<!--每篇日记的展示-->
				<div class="single-blog-post" style="margin-bottom: 15px;">
					<div class="post-meta-box bg-box">
						<!--图片位置-->
						<div class="image-box"><img src="dailytopic/images/avatar/avatar4.png" alt=""></div>
						<!--文本位置-->
						<div class="post-article">
							<ul class="author-meta clearfix">
								<li class="tag"><a href="zone.html">用户ID</a></li>
								<li class="date"><a href="##">2018  may 15</a></li>
							</ul><p style="text-indent:2em;text-align: justify">氹仔（氹，音 dang 第四声）是澳门的一个离岛，面积仅6平方公里，是组成澳门三部份之一，位于澳门半岛以南，路环岛以北， 位于澳门的中央， 岛上绿树成荫，花木扶疏，环境优美，与澳门半岛有三条跨海大桥连接（澳氹大桥、新大桥、西湾大桥)。澳门大学、澳门科技大学、官也街、赛马场、路氹金光大道都在此岛上，氹仔还有自己的轮渡码头。氹仔是澳门的新城区所在，高档酒店和赌场云集，如银河，威尼斯人，金沙等赌场和超级豪华酒店都在这里。氹仔有自己的轮渡码头，澳门国际机场就坐落在氹仔的东面海边。</p>
							<!--这是下面用来出现照片的部分-->
							<div class="post-img">
								<img src="dailytopic/images/other/img1.jpg">
								<img src="dailytopic/images/other/img2.jpg">
								<img src="dailytopic/images/other/img3.jpg">
								<img src="dailytopic/images/other/img4.jpg">
							</div>
							<ul class="share-meta clearfix">
								<!--标题下面的三个功能按键-->
								<li><a href="##"><i class="icon flaticon-comment"></i>评论(04)</a></li>
								<li><a href="##"><i class="icon flaticon-like-heart"></i>点赞 (02)</a></li>
								<li><a href="##"><img src="dailytopic/images/star.png" id="star" onmouseover="this.src='dailytopic/images/star1.png'" onmouseout="this.src='dailytopic/images/star.png'"  width="16" height="16" title="收藏">&nbsp;&nbsp;收藏 (12)</a>

								</li>
							</ul></div>
							<div style="clear:both"></div>
						</div> <!-- /.post-meta-box -->
					</div> <!--每篇日记的展示-->
					<!--分页 -->
				</div> <!-- /.col- -->
				<!-- ======================== Theme Sidebar =============================== -->
			</div> <!-- /.row -->
			<!--分页-->
			<div class="theme-pagination text-center" >
				<ul class="clearfix">
					<li><a href="##"><i class="icon flaticon-left-arrow"></i></a></li>
					<!--页码-->
					<li class="active"><a href="##">1</a></li>
					<li><a href="##">2</a></li>
					<li><a href="##">3</a></li>
					<li><a href="##"><i class="icon flaticon-right-arrow"></i></a></li>
					<!--页码-->
				</ul>
			</div> <!--分页 -->
			<div style="clear:both"></div>
			<!--这些是超链接啊啊啊呜-->
			<div class="links">
				<span style="color: rgb(204, 51, 51);font-size: 14px;letter-spacing: 1px;">▼</span>
				<p style="margin: 0px;padding: 0px;margin-bottom: 20px;margin-top: 20px;margin-left: -16px;width:343px;height:80px;background-repeat: no-repeat;background-size: 343px 80px;background-image: url(dailytopic/images/topic.png);font-size: 25px;line-height: 70px;">往期话题:</p><a href="##">这是第一个话题</a>
				<a href="##">这是第二个哦！</a>
				<a href="##">(눈_눈)哼唧为啥要凑字数啊</a>
				<a href="##">嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤嘤</a>
				<a href="##">哼！就会欺负人家</a>
				<a href="##">编不出来了告辞！！！</a>
			</div><!--这些是超链接啊啊啊呜-->
		</div> <!-- /.container -->

	<!--
	=====================================================
		Footer
	=====================================================
-->
<!--footer-->
<footer class="theme-footer">
	<div class="container">
		<div class="logo"><a href="index.html"><img src="dailytopic/images/footer130.png" alt=""></a></div>		
		<p class="copyright">Copyright &copy; 2018.公司名字 All rights reserved.</p>
	</div> <!-- /.container -->
</footer> <!-- /.theme-footer -->
<!--/footer-->

<!-- Scroll Top Button -->
<button class="scroll-top tran3s">
	<!-- <i class="fa fa-angle-up" aria-hidden="true"></i> -->
</button>



<!-- Optional JavaScript _____________________________  -->

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!-- Font Awesome -->
<script src="dailytopic/fonts/font-awesome/fontawesome-all.min.js"></script>
<!-- COMMON SCRIPTS -->
<script src="dailytopic/js/jquery-2.2.4.min.js"></script>
<script src="dailytopic/js/common_scripts.js"></script>
<script src="dailytopic/js/main.js"></script>


<!-- Map -->

<!-- DATEPICKER  -->
<script>
	$('input[name="dates"]').daterangepicker({
		"singleDatePicker": true,
		"autoApply": true,
		parentEl:'#input_date',
		"linkedCalendars": false,
		"showCustomRangeLabel": false
	}, function(start, end, label) {
		console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	});	
</script>

<!-- INPUT QUANTITY  -->


<!-- INSTAGRAM FEED  -->
<script>
	$(window).on('load', function() {
		"use strict";
		$.instagramFeed({
			'username': 'restaurantetanit',
			'container': "#instagram-feed-restaurant",
			'display_profile': false,
			'display_biography': false,
			'display_gallery': true,
			'get_raw_json': false,
			'callback': null,
			'styling': true,
			'items': 12,
			'items_per_row': 6,
			'margin': 1
		});
	});
</script>



<!-- Theme js -->
<script src="dailytopic/js/theme.js"></script>
</div> <!-- /.main-page-wrapper -->
</body>
</html>
