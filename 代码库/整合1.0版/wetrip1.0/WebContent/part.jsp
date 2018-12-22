<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ch">
<head>
	<meta charset="UTF-8">
	<title>微旅WeTrip-${tagName}</title>
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
			width: 240px;
   	 		height: 160px;
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
			height: 130px;
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
	
	<script type="text/javascript">
function myfunction(){
	var select = document.getElementById("s1");
	var value = select.value;
	var options = select.options;
	var index = select.selectedIndex;
	var selectedValue = options[index].value;
	if(selectedValue=="Praise"){
		document.location.href="partByPraise?tagName=${tagName}&childTagName=${childTagName}";}
	else if(selectedValue=="Time"){
		document.location.href="part?tagName=${tagName}&childTagName=${childTagName}";}

}

function myfunction1(){
	var select = document.getElementById("_pn1").value;
		document.location.href="part?tagName=${tagName}&travelpageNum="+select;
	
}
function myfunction2(){
	var select = document.getElementById("_pn2").value;
		document.location.href="partByPraise?tagName=${tagName}&travelpageNum="+select;
	
}

</script>

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
			<a href="index.html">
				<img src="detail/img/logo_white.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
				<img src="detail/img/logo_black.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu" class="logo_normal">
			<li><a href="editor.html"><img src="detail/img/add_button.png" width="24" height="24" ></a></li>
			<li><a href="login.html"><img src="detail/img/personal_button.png" width="24" height="24"></a></li>
			<li><a href="cart.html"><img src="detail/img/shopping_button.png" width="24" height="24"></a></li>
			<li><a href="personalinfo.html"><img src="detail/img/config_button.png" width="24" height="24"></a></li>
			
		</ul>

		<ul id="top_menu" class="logo_sticky">
			<li><a href="editor.html"><img src="detail/img/add_button1.png" width="24" height="24"></a></li>
			<li><a href="login.html"><img src="detail/img/personal_button1.png" width="24" height="24"></a></li>
			<li><a href="cart.html"><img src="detail/img/shopping_button1.png" width="24" height="24"></a></li>
			<li><a href="personalinfo.html"><img src="detail/img/config_button1.png" width="24" height="24"></a></li>
			
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
					<li><span><a href="main.jsp">首页</a></span></li>
					<c:forEach items="${tags }" var="t">
					<li><span><a href="part?tagName=${t.tagName}">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="producthot">周边商城</a></span></li>
					<li><span><a href="dailytopic?pageNum=1&topicId=2">今日话题</a></span></li>
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
								<form action="part" method="get">
									<input type="hidden" name="tagName" value="${tagName }">
									<input type="text" class="email" name="childTagName" placeholder="Search Tags">
									<button type="submit" class="submit"></button>
								</form>
							</div>
							<div class="group-title">
								<h2>Hot Tags</h2>
							</div>
							<ul>
								<c:forEach items="${tagList }" var="tag">
								<li><a href="part?tagName=${tagName}&childTagName=${tag.tagName }">${tag.tagName }</a></li>
								</c:forEach>
							</ul>
							<c:if test="${flag==0 }">
								<c:if test="${tagPageNum<3&&tagPageNum!=tagCount }">
									<a href="part?tagName=${tagName}&tagPageNum=${tagPageNum+1}">换一批>></a>
								</c:if>
								<c:if test="${tagPageNum==tagCount&&tagCount<=3 }">
									<a href="part?tagName=${tagName}&tagPageNum=1">换一批>></a>
								</c:if>
								<c:if test="${tagCount>=3&&tagPageNum==3 }">
									<a href="part?tagName=${tagName}&tagPageNum=1">换一批>></a>
								</c:if>
							</c:if>
							<c:if test="${flag==2 }">
								<c:if test="${tagPageNum<3&&tagPageNum!=tagCount }">
									<a href="part?tagName=${tagName}&tagPageNum=${tagPageNum+1}">换一批>></a>
								</c:if>
								<c:if test="${tagPageNum==tagCount&&tagCount<=3 }">
									<a href="part?tagName=${tagName}&tagPageNum=1">换一批>></a>
								</c:if>
								<c:if test="${tagCount>=3&&tagPageNum==3 }">
									<a href="part?tagName=${tagName}&tagPageNum=1">换一批>></a>
								</c:if>
							</c:if>
							
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
								<select class="sorter" id="s1" name="sorter" onchange="myfunction();">
									<option value="null" >请选择</option>
									<option value="Time" >时间</option>
									<option value="Praise">热度</option>
								
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
					<c:if test="${empty travelList}">
						<div class="main-categorie product-area" >
							<div class="tab-content fix">
								<div id="grid-view" class="tab-pane active">
									<div class="row" style="
    											text-align: center;
   												align-items: center;
											    margin: auto;
											    width: 350px;
											    height: 450px;
											    font-family: 幼圆;
											    font-size: 20px;
											    font-weight: 350;">
									<b>
										您搜索的标签还没有发表游记哦，<br>
										谁会是第一个发表的小可爱呢？
									</b>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${not empty travelList}">
					<div class="main-categorie product-area">
						<div class="tab-content fix">
							<div id="grid-view" class="tab-pane active">
								<div class="row">
									<!-- 主体-->                                  
									<div class="box">
										<div class="right">
											<ul>
												<c:forEach items="${travelList}" var="t" varStatus="status">
												<li>
													<img src="part/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="right">
													<img src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="14" align="right" class="like">
									
													<c:if test="${t.getImgs().toArray()[0]!=null}">
														<img class="img" src="${t.getImgs().toArray()[0].getPath() }" alt="" title="封面">
													</c:if>
													<c:if test="${t.getImgs().toArray()[0]==null}">
														<img class="img" src="image/avatar/avatar1.png" alt="" title="封面">
													</c:if>
													
													<p class="p1">${t.getUserDetail().getUsername()}</p>
													<p class="p2"><fmt:formatDate value="${t.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/></p>
													<p class="p3">
														${t.title }
													</p>
													<div class="hide">
													${fn:substring(t.content, 0, 60)}...
													
														
														<div>
															<a href="detail.html" style="color:#fff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多>></a>
														</div>
													</div>
												</li>
												</c:forEach>
												
											</ul>
										</div>
									</div>

								</div>                                    
							</div>
							<!-- #grid view End -->
							<div id="list-view" class="tab-pane">
								<c:forEach items="${travelList}" var="t" varStatus="status">
									<!-- Single Product Start -->
										<div class="single-product" height="200px">
											<!-- Product Image Start -->
											<div class="kiosk-product-img">
												<c:if test="${t.getImgs().toArray()[0]!=null}">
														<img class="img" src="${t.getImgs().toArray()[0].getPath() }" alt="" title="封面">
													</c:if>
													<c:if test="${t.getImgs().toArray()[0]==null}">
														<img class="img" src="image/avatar/avatar1.png" alt="" title="封面">
													</c:if>
													
											</div>
											<!-- Product Image End -->
											<!-- Product Content Start -->
											<div class="kiosk-product-content">           
												<h4><a href="detail?travelid=${t.id}">${t.title }</a></h4>
												<p><span class="price">作者：${t.getUserDetail().getUsername()}</span></p>
												<p><span class="price"><fmt:formatDate value="${t.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/></span>
												<p class="content2">
													${fn:substring(t.content, 0, 100)}...
													<a href="detail?travelid=${t.id}">更多>></a>
												</p>
												<a href="detail?travelid=${t.id}"><img id="like2" src="part/img/like.png" onmouseover="this.src='part/img/like2.png'" onmouseout="this.src='part/img/like.png'"  width="16" height="13" align="left">  喜欢</a>
												<a href="detail?travelid=${t.id}"><img src="part/img/star.png" id="star2" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left" > 收藏</a>
												<!-- <a href="##"><img src="index/img/report.png" width="16px" height="16px"  align="left" style="margin-top:5px;margin-left:7px;">举报</a> -->
											</div>
											<!-- Product Content End -->
										</div>
									</c:forEach>
									
									<!-- #list view End -->
								</div>
								<!-- Grid & List Main Area End -->
							</div>
							
							<!--Breadcrumb and Page Show Start -->
							<c:if test="${flag==0 }">
								<div class="kiosk-pagination-box fix">
									<ul class="blog-pagination ">
										<c:if test="${travelpageNum>1}">
											<li>
												<a href="part?tagName=${tagName}&travelpageNum=${travelpageNum-1}">
													<i class="icon flaticon-left-arrow" title="上一页"></i>
												</a>
											</li>
											</c:if>
												<li>第</li>
													<li>
													<select onchange="myfunction1();" id="_pn1">  
														<c:forEach var="num" begin="1" end="${count}">
															<c:if test="${travelpageNum==num}">
																<option value="${num}" selected="selected">${num}</option>
															</c:if>
															<c:if test="${travelpageNum!=num}">
																<option value="${num}" >${num}</option>
															</c:if>
														</c:forEach>
													</select>
													</li>
													<li>页,</li>
													<li>共</li>
													<li>${count }</li>
													<li>页</li>
											<c:if test="${travelpageNum<count}">
												<li>
													<a href="part?tagName=${tagName}&travelpageNum=${travelpageNum+1}">
														<i class="icon flaticon-right-arrow" title="下一页"></i>
													</a>
												</li>
											</c:if>
										</ul>						
									</div>
							</c:if>
							
							
							<c:if test="${flag==2 }">
								<div class="kiosk-pagination-box fix">
									<ul class="blog-pagination ">
										<c:if test="${travelpageNum>1}">
											<li>
												<a href="partByPraise?tagName=${tagName}&travelpageNum=${travelpageNum-1}">
													<i class="icon flaticon-left-arrow" title="上一页"></i>
												</a>
											</li>
										</c:if>
											
												<li>第</li>
													<li>
													<select onchange="myfunction2();" id="_pn2">  
														<c:forEach var="num" begin="1" end="${count}">
															<c:if test="${travelpageNum==num}">
																<option value="${num}" selected="selected">${num}</option>
															</c:if>
															<c:if test="${travelpageNum!=num}">
																<option value="${num}" >${num}</option>
															</c:if>
														</c:forEach>
													</select>
													</li>
													<li>页,</li>
													<li>共</li>
													<li>${count }</li>
													<li>页</li>
											
											<li>共${count }页</li>
										<c:if test="${travelpageNum<count}">
											<li>
												<a href="partByPraise?tagName=${tagName}&travelpageNum=${travelpageNum+1}">
													<i class="icon flaticon-right-arrow" title="下一页"></i>
												</a>
											</li>
										</c:if>
									</ul>						
								</div>
							</c:if>
						
							
							<!--Breadcrumb and Page Show End -->
					</div>
				</c:if>
					<!-- product Categorie List End -->
				</div>
				<!-- Row End -->
			</div>
			<!-- Container End -->
		</div>
	</div>
		<!-- footer -->
		<footer class="theme-footer">
										<div class="logo1"><a href="index.html"><img src="part/img/footer130.png" alt="" /></a></div>
										<p class="copyright">Copyright &copy; 2018.公司名字 All rights reserved.</p>
									</footer> <!-- /.theme-footer -->
</body>

</html>