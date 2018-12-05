﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ch">
<head>

<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
<meta name="author" content="Ansonika">
<title>微旅WeTrip</title>
<!-- Favicons-->
<link rel="shortcut icon" href="good/images/icon.ico"
	type="zone/image/x-icon">
<!-- BASE CSS -->
<!--link href="css/bootstrap.min.css" rel="stylesheet"-->
<link href="good/css/vendors.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,500,700,600,800'
	rel='stylesheet' type='text/css'>
<link href="good/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="good/css/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link href="good/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="good/css/chosen.css" rel="stylesheet">
<!--[if IE 7]>
      
        <link href="css/font-awesome/css/font-awesome-ie7.min.css" rel="stylesheet">
        
        <![endif]-->
<link rel="stylesheet" href="good/css/style.css">
<link rel="stylesheet" href="good/css/cart.css">
<link rel="stylesheet" href="good/css/responsive.css">
</head>
<style type="text/css">
.wrapper {
	margin-top: -100px;
	/*background-color: #ff6666;*/
}

body {
	padding-top: 100px;
}

.cart_all {
	font-size: 50px;
	line-height: 100px;
	/*background-color: #aaa;*/
	height: 100px;
	width: 72%;
	margin-left: 14%;
	font-family: 幼圆;
}
</style>
<body>
	<div class="cart_all">我的购物车</div>
	<div class="wrapper">
		<section class="section-head">
			<header class="header menu_fixed">
				<div id="logo">
					<a href="index.jsp"> <img src="good/images/logo_white.png"
						width="150" height="36" data-retina="true" alt=""
						class="logo_normal"> <img src="good/images/logo_black.png"
						width="150" height="36" data-retina="true" alt=""
						class="logo_sticky">
					</a>
				</div>
				<ul id="top_menu">
					<li><a href="editor.jsp"><img
							src="good/images/add_button1.png" width="24" height="24"></a></li>
					<li><a href="login.jsp"><img
							src="good/images/personal_button1.png" width="24" height="24"></a></li>
					<li><a href="cart.jsp"><img
							src="good/images/shopping_button1.png" width="24" height="24"></a></li>
					<li><a href="personalinfo.jsp"><img
							src="good/images/config_button1.png" width="24" height="24"></a></li>
				</ul>
				<ul id="top_menu2">
					<li><a href="editor.jsp"><img
							src="good/images/add_button.png" width="24" height="24"></a></li>
					<li><a href="login.jsp"><img
							src="good/images/personal_button.png" width="24" height="24"></a></li>
					<li><a href="cart.jsp"><img
							src="good/images/shopping_button.png" width="24" height="24"></a></li>
					<li><a href="personalinfo.jsp"><img
							src="good/images/config_button.png" width="24" height="24"></a></li>
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
					<ul>
						<li><span><a href="index.jsp">首页</a></span></li>
						<li><span><a href="part.jsp">风景</a></span></li>
						<li><span><a href="part.jsp">美食</a></span></li>
						<li><span><a href="part.jsp">玩耍</a></span></li>
						<li><span><a href="part.jsp">周边</a></span></li>
						<li><span><a href="part.jsp">小贴士</a></span></li>
						<li><span><a href="dailytopic.jsp">今日话题</a></span></li>
					</ul>
				</nav>
			</header>
		</section>
		<section class="section-shopping-cart">
			<div class="container">
				<div class="row-fluid">
					<div class="span12">
						<div class="page-content shopping-cart-page ">
							<table class="table ">
								<thead>
									<tr>
										<th class="span2">&nbsp;商品名称</th>
										<th class="span5">&nbsp;</th>
										<th class="span2 price-column">价格</th>
										<th class="span2">&nbsp;&nbsp;&nbsp;&nbsp;数量</th>
										<th class="span1 price-column">总计</th>
										<th class="span2">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cart.container}" var="map">
										<tr>
											<td>
												<div class="thumb">
													<img alt="" src="${map.value.product.pic}" />
												</div>
											</td>
											<td>
												<div class="desc">
													<h3>${map.value.product.name}</h3>
													<div class="tag-line">
														${map.value.product.description}</div>

												</div>
											</td>
											<td>
												<div class="price">¥${map.value.product.price}</div>
											</td>
											<td>
												<div class="quantity">
													<input min="1" type="number" id="quantity" name="quantity"
														value="${map.value.count}" class="quantity_one">
												</div>
											</td>
											<td>
												<div class="price">
													¥${map.value.product.price*map.value.count} </div>
											</td>
											<td>
												<div class="delete">
													<a class="close-btn" href="##"></a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="buttons-holder">
								<a class="cusmo-btn gray narrow" href="product.jsp">继续购物</a> <a
									class="cusmo-btn narrow" href="checkout.jsp">结算</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br> <br>
		<!--   <section class="section-homepage-subscribe">
        <div class="container">

        </div>
    </section> -->
	</div>
	<!--footer-->
	<footer class="theme-footer">
		<div class="container">
			<div class="logo">
				<a href="index.jsp"><img src="good/images/footer130.png" alt=""></a>
			</div>
			<p class="copyright">Copyright &copy; 2018.公司名字 All rights
				reserved.</p>
		</div>
		<!-- /.container -->
	</footer>
	<!-- /.theme-footer -->

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
	<script src="good/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="good/js/jquery-2.2.4.min.js"></script>
	<script src="good/js/common_scripts.js"></script>
	<script src="good/js/main.js"></script>
	<script type="text/javascript" src="good/js/css_browser_selector.js"></script>
	<script type="text/javascript"
		src="good/js/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script type="text/javascript" src="good/js/jquery.easing-1.3.js"></script>
	<script type="text/javascript" src="good/js/jquery.validate.js"></script>
	<script type="text/javascript" src="good/js/jquery.flexslider-min.js"></script>
	<script type="text/javascript"
		src="good/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script type="text/javascript" src="good/js/bootstrap-slider.js"></script>
	<script type="text/javascript" src="good/js/jquery.raty.min.js"></script>
	<script type="text/javascript" src="good/js/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="good/js/script.js"></script>

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
</body>


</html>
