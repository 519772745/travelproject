<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ch">
<head>
	<meta charset="UTF-8">
	<title>微旅WeTrip-各分页名字</title>
	<link rel="shortcut icon" href="detail/img/icon.ico" type="image/x-icon">
	<link rel="icon" href="detail/img/icon.ico" type="image/x-icon">

	<link href="detail/headcss/style.css" rel="stylesheet">

	<!-- BASE CSS -->
	<link href="detail/headcss/bootstrap.min.css" rel="stylesheet">
	<link href="detail/headcss/style.css" rel="stylesheet">
	<link href="detail/headcss/vendors.css" rel="stylesheet">

	<!-- YOUR CUSTOM CSS -->
	<link href="detail/headcss/custom.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="detail/footcss/style.css">
	<!-- responsive style sheet -->
	<link rel="stylesheet" type="text/css" href="detail/footcss/responsive.css">
	<!-- Theme-Color css -->
	<link rel="stylesheet" id="jssDefault" href="detail/footcss/color.css">

	<!-- mobile menu css -->
	<link rel="stylesheet" href="part/css/meanmenu.min.css">
	<!-- animate css -->
	<link rel="stylesheet" href="part/css/animate.css">
	<!-- nivo slider css -->
	<link rel="stylesheet" href="part/css/nivo-slider.css">
	<!-- owl carousel css -->
	<link rel="stylesheet" href="part/css/owl.carousel.min.css">
	<!-- slick css -->
	<link rel="stylesheet" href="part/css/slick.css">
	<!-- price slider css -->
	<link rel="stylesheet" href="part/css/jquery-ui.min.css">
	<!-- fontawesome css -->
	<link rel="stylesheet" href="part/css/font-awesome.min.css">
	<!-- fancybox css -->
	<link rel="stylesheet" href="part/css/jquery.fancybox.css">     
	<!-- bootstrap css -->
	<link rel="stylesheet" href="part/css/bootstrap.min.css">
	<!-- default css  -->
	<link rel="stylesheet" href="part/css/default.css">
	<!-- style css -->
	<link rel="stylesheet" href="part/style.css">
	<!-- responsive css -->
	<link rel="stylesheet" href="part/css/responsive.css">
	<style>
		*{
			padding: 0;
			margin: 0;
		}
		ul,ol,li{
			list-style: none;
		}
		a{
			text-decoration: none;
		}
		.box{
			width: 1224px;
			height: 750px;
			background-color: #fff;
			margin: 15px auto;
			border: 1px solid #0000;
		}
		.box>div{
			float: left;
		}
		.content2{
			text-indent: 2em;
			text-align: justify;
			overflow: hidden;
			
		}
		.right{
			width: 991px;
			height: 720px;
			background: #fff;
			padding-left: 35px;
			margin-left: 55px;
		}
		.right>ul>li{
			width: 240px;
			height: 350px;
			float: left;
			position: relative;
			text-align: center;
			margin: 0 0 14px 14px;
			background-color: #fff;
			box-shadow: 0px 5px 40px 0px rgba(0, 0, 0, 0.04);
		}
		.img{
			margin: 55px 0 30px;
		}
		.right .p1{
			font-size:12px;
			color: #333;
		}
		.right .p2{
			font-size:12px;
			color: #b0b4be;
		}
		.p3{
			margin-top: 15px;
		}
		.p3 span{
			color: #ff6700;
		}
		.p3 del{
			color: #b0b0b4;
		}
		.hide{
			width: 240px;
			height: 100px;
			background: #a2bfa0;
			position: absolute;
			left: 0;
			bottom: 0;
			display: none;
			padding-left: 7px;
			padding-right: 7px;
			text-indent: 2em;
			text-align: justify;
		}

		.right>ul>li:hover .hide{
			display: block;
		}
		.like{
			margin-top: 12px;
			margin-right: 8px;
		}
		#star{
			margin-top: 10px;
			margin-right: 10px;
		}
		#star2{
			margin-top: 3px;
			margin-left: 10px;
		}
		#like2{
			margin-top: 5px;
		}
		.fa-th{
			margin-top: 1px;
		}

	</style>

	<script src="part/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="part/headjs/jquery-2.2.4.min.js"></script>
	<script src="part/headjs/common_scripts.js"></script>
	<script src="part/headjs/main.js"></script>
	<script src="part/assets/validate.js"></script>
	<!-- jquery 3.12.4 -->
	<script src="part/js/vendor/jquery-1.12.4.min.js"></script>
	<!-- mobile menu js  -->
	<script src="part/js/jquery.meanmenu.min.js"></script>
	<!-- scroll-up js -->
	<script src="part/js/jquery.scrollUp.js"></script>
	<!-- owl-carousel js -->
	<script src="part/js/owl.carousel.min.js"></script>
	<!-- slick js -->
	<script src="part/js/slick.min.js"></script>
	<!-- wow js -->
	<script src="part/js/wow.min.js"></script>
	<!-- price slider js -->
	<script src="part/js/jquery-ui.min.js"></script>
	<script src="part/js/jquery.countdown.min.js"></script>
	<!-- nivo slider js -->
	<script src="part/js/jquery.nivo.slider.js"></script>
	<!-- fancybox js -->
	<script src="part/js/jquery.fancybox.min.js"></script>
	<!-- bootstrap -->
	<script src="part/js/bootstrap.min.js"></script>
	<!-- popper -->
	<script src="part/js/popper.js"></script>
	<!-- stellar -->
	<script src="part/js/jquery.stellar.min.js"></script>
	<script src="part/js/parallax.js"></script>
	<!-- plugins -->
	<script src="part/js/plugins.js"></script>
	<!-- main js -->
	<script src="part/js/main.js"></script>
</head>
<body>
	<header class="header menu_fixed" >
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
		<div id="logo">
			<a href="index.jsp">
				<img src="detail/img/logo_white.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
				<img src="detail/img/logo_black.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu" class="logo_normal">
			<li><a href="editor.jsp"><img src="detail/img/add_button.png" width="24" height="24" ></a></li>
			<li><a href="login.jsp"><img src="detail/img/personal_button.png" width="24" height="24"></a></li>
			<li><a href="cart.jsp"><img src="detail/img/shopping_button.png" width="24" height="24"></a></li>
			<li><a href="personalinfo.jsp"><img src="detail/img/config_button.png" width="24" height="24"></a></li>
			
		</ul>

		<ul id="top_menu" class="logo_sticky">
			<li><a href="editor.jsp"><img src="detail/img/add_button1.png" width="24" height="24"></a></li>
			<li><a href="login.jsp"><img src="detail/img/personal_button1.png" width="24" height="24"></a></li>
			<li><a href="cart.jsp"><img src="detail/img/shopping_button1.png" width="24" height="24"></a></li>
			<li><a href="personalinfo.jsp"><img src="detail/img/config_button1.png" width="24" height="24"></a></li>
			
		</ul>

		<!-- /top_menu -->
		<a href="#menu" class="btn_mobile">
			<div class="hamburger hamburger--spin" id="hamburger">
				<div class="hamburger-box">
					<div class="hamburger-inner"></div>
				</div>
			</div>
		</a>
		<nav id="menu" class="main-menu" style="font-family: 'Roboto';">
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
	</header><!-- #header -->
	<div class="main-shop-page ptb-70">
		<div class="container">
			<!-- Row End -->
			<div class="row">
				<!-- Sidebar Shopping Option Start -->
				<div class="col-lg-3  order-2">
					<div class="sidebar white-bg">
						<div class="single-sidebar category-sidebar">
							<div class="search-box-view">
								<form action="#">
									<input type="text" class="email" placeholder="Search Tags">
									<button type="submit" class="submit"></button>
								</form>
							</div>
							<div class="group-title">
								<h2>Hot Tags</h2>
							</div>
							<ul>
								<li><a href="part.jsp">美食</a></li>
								<li><a href="part.jsp">美景</a></li>
								<li><a href="part.jsp">玩耍</a></li>
								<li><a href="part.jsp">Tips</a></li>
								<li><a href="part.jsp">烧烤</a></li>
								<li><a href="part.jsp">山</a></li>
								<li><a href="part.jsp">海</a></li>
								<li><a href="part.jsp">游乐场</a></li>
								<li><a href="part.jsp">火锅</a></li>
								<li><a href="part.jsp">冰激凌</a></li>
							</ul>

							<a href="##">换一批>></a>
						</div>
					</div>
				</div>
				<!-- Sidebar Shopping Option End -->                    
				<!-- Product Categorie List Start -->
				<div class="col-lg-9 order-lg-2">
					<!-- Grid & List View Start -->
					<div class="grid-list-top fix mb-10">
						<!-- Toolbar Short Area Start -->
						<div class="main-toolbar-sorter f-left">
							<div class="toolbar-sorter">
								<label>排序方式</label>
								<select class="sorter" name="sorter">
									<option value="Position" selected="selected">时间</option>
									<option value="Product Name">热度</option>
								</select>
							</div>
						</div>
						<!-- Toolbar Short Area End -->
						<div class="grid-list-view f-right">
							<ul class="list-inline nav">
								<li><a data-toggle="tab" href="#grid-view"><i class="fa fa-th"></i></a></li>&nbsp;
								<li><a  data-toggle="tab" href="#list-view"><i class="fa fa-list-ul"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- Grid & List View End -->
					<div class="main-categorie product-area">
						<!-- Grid & List Main Area End -->
						<div class="tab-content fix">
							<div id="grid-view" class="tab-pane active">
								<div class="row">
									<!-- 主体-->                                  
									<div class="box">
										<div class="right">
											<ul>
												<li id="first">
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<!-- <img src="index/img/report.png" width="16px" height="16px"  align="right" style="margin-top:10px;margin-right:7px;"> -->
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>

													<p class="p3">
														标题
													</p>
													<div class="hide">
														
														氹仔（氹，音 dang 第四声）是澳门的一个离岛，面积仅6平方公里，是组成澳门三部份之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>
													<p class="p3">
														标题
													</p>
													<div class="hide">
													
														澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>
													<p class="p3">
														标题
													</p>
													<div class="hide">
														澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="" align="center">
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>
													<p class="p3">
														标题
													</p>
													<div class="hide">
														澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>
													<p class="p3">
														标题
													</p>
													<div class="hide">
														澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													<p class="p1">作者</p>
													<p class="p2">发布时间</p>
													<p class="p3">
														标题
													</p>
													<div class="hide">
														澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一。
														<div>
															<a href="detail.jsp" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>

								</div>                                    
							</div>
							<!-- #grid view End -->
							<div id="list-view" class="tab-pane">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product Image Start -->
									<div class="kiosk-product-img">
										<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
									</div>
									<!-- Product Image End -->
									<!-- Product Content Start -->
									<div class="kiosk-product-content">           
										<h4><a href="detail.jsp">游记名称</a></h4>
										<p><span class="price">作者：某某</span></p>
										<p><span class="price">发布时间</span>
											<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。  
												<a href="detail.jsp">更多>></a>
											</p>
											
											
											<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
											<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
											<!-- <a href="##"><img src="index/img/report.png" width="16px" height="16px"  align="left" style="margin-top:5px;margin-left:7px;">举报</a> -->
											
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product Start -->
									<!-- Single Product Start -->
									<div class="single-product">
										<!-- Product Image Start -->
										<div class="kiosk-product-img">
											<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
										</div>
										<!-- Product Image End -->
										<!-- Product Content Start -->
										<div class="kiosk-product-content">            
											<h4><a href="detail.jsp">游记名称</a></h4>
											<p><span class="price">作者：某某</span>
												<p><span class="price">发布时间</span>
													<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。 
														<a href="detail.jsp">更多>></a>
													</p>
													
													<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
													<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
													
												</div>
												<!-- Product Content End -->
											</div>
											<!-- Single Product Start -->
											<!-- Single Product Start -->
											<div class="single-product">
												<!-- Product Image Start -->
												<div class="kiosk-product-img">
													<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
												</div>
												<!-- Product Image End -->
												<!-- Product Content Start -->
												<div class="kiosk-product-content">               
													<h4><a href="detail.jsp">游记名称</a></h4>
													<p><span class="price">作者：某某</span></p>
													<p><span class="price">发布时间</span>
														<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。 
															<a href="detail.jsp">更多>></a>
														</p>
														
														<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
														<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
														
													</div>
													<!-- Product Content End -->
												</div>
												<!-- Single Product Start -->
												<!-- Single Product Start -->
												<div class="single-product">
													<!-- Product Image Start -->
													<div class="kiosk-product-img">
														<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
													</div>
													<!-- Product Image End -->
													<!-- Product Content Start -->
													<div class="kiosk-product-content">               
														<h4><a href="detail.jsp">游记名称</a></h4>
														<p><span class="price">作者：某某</span></p>
														<p><span class="price">发布时间</span>
															<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。 
																<a href="detail.jsp">更多>></a>
															</p>
															<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
															<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
															
														</div>
														<!-- Product Content End -->
													</div>
													<!-- Single Product Start -->
													<!-- Single Product Start -->
													<div class="single-product">
														<!-- Product Image Start -->
														<div class="kiosk-product-img">
															<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
														</div>
														<!-- Product Image End -->
														<!-- Product Content Start -->
														<div class="kiosk-product-content">            
															<h4><a href="detail.jsp">游记名称</a></h4>
															<p><span class="price">作者：某某</span></p>
															<p><span class="price">发布时间</span>
																<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。 <a href="detail.jsp">更多>></a>
																</p>
																<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
																<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
																
															</div>
															<!-- Product Content End -->
														</div>
														<!-- Single Product Start -->
														<!-- Single Product Start -->
														<div class="single-product">
															<!-- Product Image Start -->
															<div class="kiosk-product-img">
																<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
															</div>
															<!-- Product Image End -->
															<!-- Product Content Start -->
															<div class="kiosk-product-content">        
																<h4><a href="detail.jsp">游记名称</a></h4>
																<p><span class="price">作者：某某</span></p>
																<p><span class="price">发布时间</span>
																	<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。 <a href="detail.jsp">更多>></a></p>
																	<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
																	<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
																	
																</div>
																<!-- Product Content End -->
															</div>
															<!-- Single Product Start -->
															<!-- Single Product Start -->
															<div class="single-product">
																<!-- Product Image Start -->
																<div class="kiosk-product-img">
																	<img class="img" src="part/images/blog-posts/post-5.jpg" alt="">
																</div>
																<!-- Product Image End -->
																<!-- Product Content Start -->
																<div class="kiosk-product-content">           
																	<h4><a href="detail.jsp">游记名称</a></h4>
																	<p><span class="price">作者：某某</span></p>
																	<p><span class="price">发布时间</span>
																		<p class="content2">澳门有非常多的教堂，玫瑰堂是最有名的一个，也是澳门最漂亮的教堂之一，这个巴洛克式的教堂供奉玫瑰圣母，所以称为玫瑰堂。教堂主体建筑富丽堂皇，外观米黄色与白色相间，配以绿色的门窗，墙体刻着细小的花纹，巴洛克风格的祭坛典雅精致。教堂旁的“圣物宝库”收藏有三百多件澳门天主教的珍贵文物。<a href="detail.jsp">更多>></a> </p>
																		<a href="##"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
																		<a href="##"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" >&nbsp;收藏</a>
																		
																	</div>
																	<!-- Product Content End -->
																</div>                                  
															</div>
															<!-- #list view End -->
														</div>
														<!-- Grid & List Main Area End -->
													</div>
													<!--Breadcrumb and Page Show Start -->
													<div class="kiosk-pagination-box fix">
														<ul class="blog-pagination ">
															<li><a href="##">< </a></li>  
															<li><a href="##">1</a></li>
															<li><a href="##">2</a></li>
															<li><a href="##"><i class="fa fa-angle-right"></i></a></li>
														</ul>

													</div>
													<!--Breadcrumb and Page Show End -->
												</div>
												<!-- product Categorie List End -->
											</div>
											<!-- Row End -->
										</div>
										<!-- Container End -->
									</div>
									<!-- footer -->
									<footer class="theme-footer">
										<div class="logo1"><a href="index.jsp"><img src="part/img/footer130.png" alt="" /></a></div>
										<p class="copyright">Copyright &copy; 2018.公司名字 All rights reserved.</p>
									</footer> <!-- /.theme-footer -->



								</body>
								<script>
		// 删除元素节点removeChild();
		var list = document.getElementsByTagName('li');
		// list[7].parentNode.removeChild(list[7]);
		// 删除属性节点
		// list[0].removeAttribute('id');
		// list[0].id = "";//把属性的值赋为空，和上面方法效果一样
		
		// 修改文本节点
		list[1].children[1].innerHTML = '小米手机'

	</script>

	</html>