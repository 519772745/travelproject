<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ch">
<head>
<!--< taglib prefix="s" uri="/struts-tags" %>-->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>微旅WeTrip</title>

	<link href="${pageContext.request.contextPath }/index/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/index/css/index.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/index/css/iconfont.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath }/index/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/index/js/common.js"></script>
	<script src="${pageContext.request.contextPath }/index/js/index.js"></script>
	<!-- Favicons-->
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/index/img/icon.ico" type="image/x-icon">
	<!-- BASE CSS -->
	<link href="${pageContext.request.contextPath }/index/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/index/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/index/css/vendors.css" rel="stylesheet">

	<!-- YOUR CUSTOM CSS -->
	<link href="${pageContext.request.contextPath }/index/css/custom.css" rel="stylesheet">
	<script type="text/javascript">
		
	</script>
</head>

<body>	
		
	<div id="page" class="theia-exception">
		
		<header class="header menu_fixed">

			<div id="logo">
				<a href="main.jsp">
					<img src="${pageContext.request.contextPath }/index/img/logo_white.png" width="163" height="36" data-retina="true" alt="" class="logo_normal">
					<img src="${pageContext.request.contextPath }/index/img/logo_black.png" width="163" height="36" data-retina="true" alt="" class="logo_sticky">
				</a>
			</div>
			<ul id="top_menu">
				<li><a href="editor.html"><img src="${pageContext.request.contextPath }/index/img/add_button.png" width="24" height="24" class="logo_sticky"></a></li>
				<c:if test="${not empty userEmail}">
				<li><a href="user/login"><img src="${pageContext.request.contextPath }/index/img/personal_button.png" width="24" height="24" class="logo_sticky" onmouseover="over(this)" onclick="openUser(event)"></a></li>
				</c:if>
				<c:if test="${empty userEmail}">
				<li><a href="user/login"><img src="${pageContext.request.contextPath }/index/img/personal_button.png" width="24" height="24" class="logo_sticky"  onclick="openUser(event)"></a></li>
				</c:if>
				<li><a href="cart.html"><img src="${pageContext.request.contextPath }/index/img/shopping_button.png" width="24" height="24" class="logo_sticky"></a></li>
				<li><a href="personalinfo.html"><img src="${pageContext.request.contextPath }/index/img/config_button.png" width="24" height="24" class="logo_sticky"></a></li>

				<li><a href="editor.html"><img src="${pageContext.request.contextPath }/index/img/add_button1.png" width="24" height="24" class="logo_normal"></a></li>
				<c:if test="${not empty userEmail}">				
				<li><a href="user/login"><img src="${pageContext.request.contextPath }/index/img/personal_button1.png" width="24" height="24" class="logo_normal" onmouseover="over(this)" onclick="openUser(event)"></a></li>
				</c:if>
				<c:if test="${empty userEmail}">				
				<li><a href="user/login"><img src="${pageContext.request.contextPath }/index/img/personal_button1.png" width="24" height="24" class="logo_normal"></a></li>
				</c:if>
				<li><a href="cart.html"><img src="${pageContext.request.contextPath }/index/img/shopping_button1.png" width="24" height="24" class="logo_normal"></a></li>
				<li><a href="personalinfo.html"><img src="${pageContext.request.contextPath }/index/img/config_button1.png" width="24" height="24" class="logo_normal"></a></li>
			</ul>
			<div id="User">
				<a href="">${userEmail },已登录</a><br>
				<a href="zone.html" >我的空间</a><br>
				<a href="cancel">注销</a>
			</div>
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
					<c:forEach items="${tags }" var="t">
					<li><span><a href="part.html">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="part.html">周边商城</a></span></li>
					<li><span><a href="dailytopic.html">今日话题</a></span></li>
				</ul>
			</nav>

		</header>	
		<!-- /header -->

		<main>
			<!--banner å¼å§-->

			<div class="banner">   
				<div class="banner1">
					<ul>
						<li><img src="${pageContext.request.contextPath }/index/img/banner6.jpg" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/index/img/banner8.jpg" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/index/img/banner5.jpg" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/index/img/banner6.jpg" alt=""></li>
					</ul>    	
				</div>
				<div class="nav_right fr">
					<div class="search fl clearfix">
						<form>
							<input type="text" class="search_box fl" value="城市查询" onclick="openDialog(event)" 
							onblur="if(this.value==''){this.value='城市查询'}" onfocus="if(this.value=='城市查询'){this.value=''}"/>
							<input type="submit" class="search_btn fr" value="">
						</form>
						<div id="dialog" style="display:none">	
						</div>
					</div>
				</div>
				<div class="bannerText">
					<p class="bt1">省</p>
					<p class="bt2">城市</p>
					<i></i>
					
				</div>   
				<ul class="arrows">
					<li class="prev"><img src="${pageContext.request.contextPath }/index/img/prev.png" alt=""></li>
					<li class="next"><img src="${pageContext.request.contextPath }/index/img/next.png" alt=""></li>
				</ul>
			</div>

			<!--banner ç»æ-->
			<!--今日话题 -->
			<div class="topic">
		
				<div class="main_title_2">
					<span><em></em></span>
				</div>
				<div class="topic_left">
					<div class="topic_left1">
						<h1>今日</h1>
						<h1>话题</h1>
					</div>
					<div class="topic_left2">
						<img src="${pageContext.request.contextPath }/index/img/line3.png" height="250px">
					</div>
				</div>

			<c:forEach items="${travelList}" var="t1">
				<div class="topic_middle">
					<!-- 话题 -->
					<div class="topic_middle_title">
						<a href="dailytopic.html"><div class="topic_middle_title_1"><h3>${t1.getTopic().name}</h3></div></a>
						<div class="topic_middle_title_2"><p>@ ${ud.username}&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${t1.getTopic().topictime}" pattern="yyyy年MM月dd日  HH:mm"/></p></div>

					</div>
					<div class="topic_middle_content">
						<!-- 头像 -->
						<div class="topic_middle_content_1">
							<a href="zone.html">
								<img src="${pageContext.request.contextPath }/${ud.userhead }"> 
							</a>
						</div>
						<div class="topic_middle_content_2">
							<ul class="author-meta clearfix">

								<li class="tag">${t1.key.getUserDetail().getUsername()} <a href="zone.html"></a></li>
								<li class="date"><a href="##"><fmt:formatDate value="${t1.key.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/></a></li>
							</ul>
							<p>${t1.key.content }</p>

								<li class="tag">${t1.getUserDetail().getUsername()} <a href="zone.html"></a></li>
								<li class="date"><a href="##"><fmt:formatDate value="${t1.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/></a></li>
							</ul>
							<p>${t1.content }</p>

							<!--这是下面用来出现照片的部分-->
							<div class="post-img">
							<c:forEach items="${topicImg }" var="i">
								<img src="${pageContext.request.contextPath }/${i.getPath()}">
								</c:forEach>
								
							</div>
							<ul class="share-meta clearfix">
								<!--标题下面的三个功能按键-->
			
								<li><a href="##"><img src="${pageContext.request.contextPath }/index/img/star.png" id="star" onmouseover="this.src='${pageContext.request.contextPath }/index/img/star1.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/star.png'"  width="16" height="16" title="收藏">&nbsp;&nbsp;收藏 (${t1.getCollectTravels().size()})</a></li>

								<li><a href="reportindex?TopicpageNum=${TopicpageNum}&pageNumshort=${pageNumshort}&travelid=${t1.id}"><img src="${pageContext.request.contextPath }/index/img/report2.png" width="12px" height="12px" style="margin-left:-1px">&nbsp;&nbsp;举报</a></li>
>>>>>>> 2f055931c308b2556118a060a18a255aa01c0663
							</ul>
						</div>
					</div>
				</div>
			</c:forEach>
			
				<div class="topic_right"> 
					<div class="topic_right_img">
						<a href="dailytopic.html">
							<div class="topic_right_readmore"></div>
						</a>
					</div>
				<!--分页 -->
					<div class="page">
						<c:if test="${TopicpageNum==null||TopicpageNum<=1 }">
							<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=1&pageNumshort=${pageNumshort}" class="a1"><img src="${pageContext.request.contextPath }/index/img/left.png" onmouseover="this.src='${pageContext.request.contextPath }/index/img/left2.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/left.png'"></a>	
							<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=${TopicpageNum+1 }&pageNumshort=${pageNumshort}" class="a2"><img src="${pageContext.request.contextPath }/index/img/right.png" onmouseover="this.src='index/img/right2.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/right.png'"></a>	
						</c:if>
					</div>
					
					<div class="page">
						<c:if test="${TopicpageNum<count&&TopicpageNum>1}">
								<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=${TopicpageNum-1}&pageNumshort=${pageNumshort}" class="a1"><img src="${pageContext.request.contextPath }/index/img/left.png" onmouseover="this.src='index/img/left2.png'" onmouseout="this.src='index/img/left.png'"></a>	
								<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=${TopicpageNum+1}&pageNumshort=${pageNumshort}" class="a2"><img src="${pageContext.request.contextPath }/index/img/right.png" onmouseover="this.src='index/img/right2.png'" onmouseout="this.src='index/img/right.png'"></a>	
						</c:if>
					</div>
					<div class="page">
						<c:if test="${TopicpageNum==count}">
								<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=${TopicpageNum-1 }&pageNumshort=${pageNumshort}" class="a1"><img src="${pageContext.request.contextPath }/index/img/left.png" onmouseover="this.src='${pageContext.request.contextPath }/index/img/left2.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/left.png'"></a>	
								<a href="${pageContext.request.contextPath }/indexs?TopicpageNum=${count}&pageNumshort=${pageNumshort}" class="a2"><img src="${pageContext.request.contextPath }/index/img/right.png" onmouseover="this.src='${pageContext.request.contextPath }/index/img/right2.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/right.png'"></a>	
						</c:if>
					</div>
						
				</div>
					
			</div>
			<!-- 今日话题结束 -->
			<!-- 热门说说 -->
			<div class="shuo">
				<div class="main_title_2">
					<span><em></em></span>
				</div>
				<div class="shuo_right">
					<div class="shuo_right2">
						<img src="${pageContext.request.contextPath }/index/img/line4.png" height="250px">
					</div>
					<div class="shuo_right1">
						<h1>热门</h1>
						<h1>说说</h1>
					</div>
					
					
				</div>

				<c:forEach items="${shortList}" var="shorti">
				<div class="shuo_middle">
					<!--用户名 -->
					<div class="shuo_middle_title">
						<div class="shuo_middle_title_1"><a href="zone.html"><h3>${shorti.getUserDetail().getUsername()}</h3></a></div>

					</div>
					<div class="shuo_middle_content">
						<!--头像-->
						<div class="shuo_middle_content_1">
							<a href="zone.html">

								<img src="${pageContext.request.contextPath }/${shorti.getUserDetail().getUserhead()}" width="100px" height="100px"> 
								<img src="${shorti.key.getUserDetail().getUserhead()}" width="100px" height="100px"> 

								<img src="${shorti.getUserDetail().getUserhead()}" width="100px" height="100px"> 

							</a>
						</div>
						<div class="shuo_middle_content_2">
							<ul class="author-meta clearfix">
								<li class="tag"><a href="part.html">${shortTag}</a></li>

								<li class="date"><a href="##"><fmt:formatDate value="${shorti.key.getPublishtime()}" pattern="yyyy年MM月dd日  HH:mm"/></a></li>
							</ul>
							<p>${shorti.key.getContent() }</p>

								<li class="date"><a href="##"><fmt:formatDate value="${shorti.getPublishtime()}" pattern="yyyy年MM月dd日  HH:mm"/></a></li>
							</ul>
							<p>${shorti.getContent() }</p>

							<!--这是下面用来出现照片的部分-->
							<div class="post-img">
							<c:forEach items="${shortImg}" var="imgi">
								<img src="${pageContext.request.contextPath }/${imgi.getPath()} ">
							</c:forEach>	
							</div>
				
							<ul class="share-meta2 clearfix">
								<!--标题下面的三个功能按键-->
								<li><a href="detail.html"><img src="${pageContext.request.contextPath }/index/img/comment.png">&nbsp;&nbsp;评论 (${shorti.getCommentNum() })</a></li>
								<li><a href="##"><img src="${pageContext.request.contextPath }/index/img/like.png" style="margin-left:-2px" onmouseover="this.src='${pageContext.request.contextPath }/index/img/like2.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/like.png'">&nbsp;&nbsp;点赞(${shorti.getPraiseCount() })</a></li>
								<li><a href="collectindex?TopicpageNum=${TopicpageNum}&pageNumshort=${pageNumshort}&travelid=${shorti.id}"><img src="${pageContext.request.contextPath }/index/img/star.png" id="star" style="margin-left:-15px" onmouseover="this.src='${pageContext.request.contextPath }/index/img/star1.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/star.png'"  width="16" height="16" title="收藏">&nbsp;&nbsp;收藏(${shorti.getCollectTravels().size()})</a></li>
								<li><a href="reportindex?TopicpageNum=${TopicpageNum}&pageNumshort=${pageNumshort}&travelid=${shorti.id}"><img src="${pageContext.request.contextPath }/index/img/report2.png" width="12px" height="12px" style="margin-left:-23px">举报</a></li>
							</ul>
						</ul>
					</div>
				</div>
			</div>
			</c:forEach>
			<div class="shuo_left">
				<div class="shuo_left_img">
					<a href="detail.html">
						<div class="shuo_left_readmore"></div>
					</a>
				</div>
				<div class="page2">
					<a href="indexs?pageNumshort=${pageNumshort+1}&TopicpageNum=${TopicpageNum}" class="a1"><img src="${pageContext.request.contextPath }/index/img/right.png" onmouseover="this.src='${pageContext.request.contextPath }/index/img/right3.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/right.png'"></a>
					<a href="indexs?pageNumshort=${pageNumshort-1}&TopicpageNum=${TopicpageNum}" class="a2"><img src="${pageContext.request.contextPath }/index/img/left.png" onmouseover="this.src='${pageContext.request.contextPath }/index/img/left3.png'" onmouseout="this.src='${pageContext.request.contextPath }/index/img/left.png'"></a>
				</div>
			</div>
			
		</div>
		<!--热门说说结束-->
		<!-- 热点文章-->
		<div class="container-fluid margin_80_0">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>热点文章</h2>
			</div>
			<div id="reccomended" class="owl-carousel owl-theme">
				<!--单个文章推荐-->


				<c:forEach items="${longList}" var="longi" varStatus="status">
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="star_bt"></a>
							<a href="#0" class="wish_bt"></a>
							<a href="detail.html"><img src="${pageContext.request.contextPath }/${longImg[status.index].getPath()}" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>阅读更多</span></div></a>
							<small>${longTag[status.index]}</small>
						</figure>
						<div class="wrapper">

							<h3><a href="detail.html">${longi.key.getTitle()}</a></h3>
					
			
							
							
							<span class="price">${longi.key.getUserDetail().getUsername()}</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i><fmt:formatDate value="${longi.key.getPublishtime()}" pattern="yyyy年MM月dd日  HH:mm"/></li>
							<li><div class="score"><span>评论<em>${longi.key.getCommentNum()}</em></span></div></li>
=======
							<h3><a href="detail.html">${longi.getTitle()}</a></h3>
						<!--  
							<s:if test="${longi.getContent()}.length()>20">
								<s:property value="${longi.getContent()}.substring(0,20)"/>......
							</s:if>
							<s:else>
								<s:property value="${longi.getContent()}"/>......
							</s:else>
						-->							
							<span class="price">${longi.getUserDetail().getUsername()}</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i><fmt:formatDate value="${longi.getPublishtime()}" pattern="yyyy年MM月dd日  HH:mm"/></li>
							<li><div class="score"><span>评论<em>${longi.getCommentNum()}</em></span></div></li>
						</ul>
					</div>
				</div>
				</c:forEach>
				
			</div>
			<!-- /carousel -->
		</div>
		<!-- 热点文章结束 -->
		<br>
		<!-- 商品推荐-->
		<div class="container-fluid margin_30_95 pl-lg-5 pr-lg-5">
			<section>
				<div class="main_title_3">
					<span><em></em></span>
					<h2>商品推荐</h2>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="good.html" class="grid_item">
							<figure>
								<img src="${pageContext.request.contextPath }/index/img/restaurant_1.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>商品名称</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="good.html" class="grid_item">
							<figure>
								<img src="${pageContext.request.contextPath }/index/img/restaurant_2.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>商品名称</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="good.html" class="grid_item">
							<figure>
								<img src="${pageContext.request.contextPath }/index/img/restaurant_3.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>商品名称</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="good.html" class="grid_item">
							<figure>
								<img src="${pageContext.request.contextPath }/index/img/restaurant_4.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>商品名称</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<div class="container">
					<br>
					<p class="btn_home_align"><a href="part.html" class="btn_1 rounded">查看所有商品</a></p>
				</div>
			</section>
		</div>

	</main>
	<!-- /main -->
	<!--footer-->
	<footer class="theme-footer">
		<div class="container">
			<div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath }/index/img/footer130.png" alt=""></a></div>		
			<p class="copyright">Copyright &copy; 2018. All rights reserved.</p>
		</div> <!-- /.container -->
	</footer> <!-- /.theme-footer -->
	<!--/footer-->
</div><!-- page -->

<div id="toTop"></div><!-- è¿åå°é¡¶ç«¯ -->

<!-- éç¨js -->
<script src="index/js/jquery-2.2.4.min.js"></script>
<script src="index/js/common_scripts.js"></script>
<script src="index/js/main.js"></script>
<script src="index/assets/validate.js"></script>

<!-- DATEPICKER  -->
<script>
	$(function() {
		'use strict';
		$('input[name="dates"]').daterangepicker({
			autoUpdateInput: false,
			locale: {
				cancelLabel: 'Clear'
			}
		});
		$('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('MM-DD-YY') + ' > ' + picker.endDate.format('MM-DD-YY'));
		});
		$('input[name="dates"]').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
		});
	});


		//æç´¢
		function display(id){  
			var traget=document.getElementById(id);  
			if(traget.style.display=="none"){  
				traget.style.display="";  
			}else{  
				traget.style.display="none";  
			}  
		}
		//ç¹å»åºç°divï¼ç§»å¼æ¶å¤±
		window.onload = function(){
			document.onclick = function(e){
				e = e || window.event;
				var dom =  e.srcElement|| e.target;
				if(dom.id != "dialog" && document.getElementById("dialog").style.display == "block") {
					document.getElementById("dialog").style.display = "none";
				}
			};
		};
		function openDialog(e) {
			document.getElementById("dialog").style.display = "block";
			e = e||window.event;
			if(+'\v1') {
				e.stopPropagation();
			} else  {
				e.cancelBubble = true;
			}
			
		}

//ç¨æ·ç»å½åçç¶ææ³¨éç­
function over(obj){        
   document.getElementById("User").style.display = "block";

            }
window.onload = function(){
			document.onclick = function(e){
				e = e || window.event;
				var dom =  e.srcElement|| e.target;
				if(dom.id != "User" && document.getElementById("User").style.display == "block") {
					document.getElementById("User").style.display = "none";
				}
			};
		};
// function out(obj){
 
//     document.getElementById("User").style.display = "none";     

//             }
	</script>
	

	<!-- INPUT QUANTITY  -->
	<script src="index/js/input_qty.js"></script>
	
</body>
</html>