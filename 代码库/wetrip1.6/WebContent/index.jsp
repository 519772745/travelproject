<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ch">
<head>
<!--< taglib prefix="s" uri="/struts-tags" %>-->	
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
				<li><a href="editor.jsp"><img src="${pageContext.request.contextPath }/index/img/add_button.png" width="24" height="24" class="logo_sticky"></a></li>
				<c:if test="${not empty userEmail}">
				<li><a href="login"><img src="${pageContext.request.contextPath }/index/img/personal_button.png" width="24" height="24" class="logo_sticky" onmouseover="over(this)" onclick="openUser(event)"></a></li>
				</c:if>
				<c:if test="${empty userEmail}">
				<li><a href="login"><img src="${pageContext.request.contextPath }/index/img/personal_button.png" width="24" height="24" class="logo_sticky"  onclick="openUser(event)"></a></li>
				</c:if>
				<li><a href="cart.html"><img src="${pageContext.request.contextPath }/index/img/shopping_button.png" width="24" height="24" class="logo_sticky"></a></li>
				<li><a href="personalinfo.html"><img src="${pageContext.request.contextPath }/index/img/config_button.png" width="24" height="24" class="logo_sticky"></a></li>

				<li><a href="editor.jsp"><img src="${pageContext.request.contextPath }/index/img/add_button1.png" width="24" height="24" class="logo_normal"></a></li>
				<c:if test="${not empty userEmail}">				
				<li><a href="login"><img src="${pageContext.request.contextPath }/index/img/personal_button1.png" width="24" height="24" class="logo_normal" onmouseover="over(this)" onclick="openUser(event)"></a></li>
				</c:if>
				<c:if test="${empty userEmail}">				
				<li><a href="login"><img src="${pageContext.request.contextPath }/index/img/personal_button1.png" width="24" height="24" class="logo_normal"></a></li>
				</c:if>
				<li><a href="cart.html"><img src="${pageContext.request.contextPath }/index/img/shopping_button1.png" width="24" height="24" class="logo_normal"></a></li>
				<li><a href="personalinfo"><img src="${pageContext.request.contextPath }/index/img/config_button1.png" width="24" height="24" class="logo_normal"></a></li>
			</ul>
			<div id="User">
				<a href="">${userEmail }</a><br>
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
					<li><span><a href="main.jsp">首页</a></span></li>
					<c:forEach items="${tags }" var="t">
					<li><span><a href="part?tagName=${t.tagName}">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="producthot">周边商城</a></span></li>
					<li><span><a href="dailytopic?pageNum=1&topicId=2">今日话题</a></span></li>
					
				</ul>
			</nav>

		</header>	
		<!-- /header -->

		<main>
			<!--banner 开始-->

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
					
						<div class="search fl clearfix" >
						<form action="">
						<!-- onclick="openDialog(event)" -->
								<div>					
								<input type="text" name="text" id="searchText" class="search_box fl" value="城市查询" 
								onblur="if(this.value==''){this.value='城市查询'}" onfocus="if(this.value=='城市查询'){this.value=''}"/>
								<input type="submit" class="search_btn fr" value="">
								</div>	
						</form>	
								<div id="dialog" style="display: none;">	</div>						
						</div>
						
					
				</div>
				<div class="bannerText">
					<p class="bt1">河北省</p>
					<p class="bt2">邯郸</p>
					<i></i>					
				</div>   
				<ul class="arrows">
					<li class="prev"><img src="${pageContext.request.contextPath }/index/img/prev.png" alt=""></li>
					<li class="next"><img src="${pageContext.request.contextPath }/index/img/next.png" alt=""></li>
				</ul>
			</div>

			<!--banner 结束-->
			<!-- 今日话题 -->
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
		
					<div class="topic_middle">
				<!-- 话题 -->
				<div class="topic_middle_title">
					<a href="dailytopic.html"><div class="topic_middle_title_1">
							<h3>${travelNote.getTopic().name}</h3>
						</div></a>
					<div class="topic_middle_title_2">
						<p>
							@ ${ud.username}&nbsp;&nbsp;&nbsp;
							<fmt:formatDate value="${travelNote.getTopic().topictime}"
								pattern="yyyy年MM月dd日  HH:mm" />
						</p>
					</div>
				</div>
				<div class="topic_middle_content">
					<!-- 头像 -->
					<div class="topic_middle_content_1">
						<a href="zone?zonePageNum=1&collectPageNum=1&username=${travelNote.getUserDetail().getUsername()}&correctDate=20"> <img
							src="${travelNote.getUserDetail().getUserhead()}"
							id="topic_userhead">
						</a>
					</div>
					<div class="topic_middle_content_2">
						<ul class="author-meta clearfix">
							<li class="tag"><a href="zone.html" id="topic_user_name">${travelNote.getUserDetail().getUsername()}</a></li>
							<li class="date"><a href="##" id="topic_publish_time"><fmt:formatDate
										value="${travelNote.publishtime}" pattern="yyyy年MM月dd日  HH:mm" /></a></li>
						</ul>
						<p id="topic_content">${travelNote.content }</p>
						<!--这是下面用来出现照片的部分-->
						<div class="post-img">
							<div id="topic_imgs">
								<c:forEach items="${topicImg }" var="i">
									<img src="${pageContext.request.contextPath }/${i.getPath()}">
								</c:forEach>
							</div>
						</div>
						<ul class="share-meta clearfix">
							<!--标题下面的三个功能按键-->
							<!-- 这地方的controller是？ -->
							<li><a href="detail?travelid=${travelNote.id}"
								id="topic_comment"><img
									src="${pageContext.request.contextPath }/index/img/comment.png">&nbsp;&nbsp;评论
									(<span id="topic_comment_num">${travelNote.commentNum}</span>)
							</a></li>
							<li><a href="依旧不知道是啥的链接?travelid=${travelNote.id}"
								id="topic_praise"><img
									src="${pageContext.request.contextPath }/index/img/like.png"
									onmouseover="this.src='${pageContext.request.contextPath }/index/img/like2.png'"
									onmouseout="this.src='${pageContext.request.contextPath }/index/img/like.png'">&nbsp;&nbsp;点赞
									(<span id="topic_praise_num">${travelNote.praiseCount}</span>)</a></li>
							<c:if test="${!topicTravelNoteCollected}">
								<li><a href="##" id="topic_collect"
									onclick="collected_col(${travelNote.id},this)"> <img
										src="${pageContext.request.contextPath }/index/img/star.png"
										class="star" onmouseover="star_on(this)"
										onmouseout="star_off(this)" width="16" height="16" title="未收藏">收藏
										(${travelNote.getCollectTravels().size()})
								</a></li>
							</c:if>
							<c:if test="${topicTravelNoteCollected}">
								<li><a href="##" id="topic_collect"
									onclick="collected_col(${travelNote.id},this)"><img
										src="${pageContext.request.contextPath }/index/img/star1.png"
										class="star" width="16" height="16" title="已收藏">收藏
										(${travelNote.getCollectTravels().size()})</a></li>
							</c:if>
							<li><a href="##"
								id="topic_report"><img
									src="${pageContext.request.contextPath }/index/img/report2.png"
									width="12px" height="12px" style="margin-left: -1px">&nbsp;&nbsp;举报</a></li>
						</ul>
					</div>
				</div>
			</div>
			
				<div class="topic_right"> 
					<div class="topic_right_img">
						<a href="dailytopic?pageNum=1&topicId=2">
							<div class="topic_right_readmore"></div>
						</a>
					</div>
				<!--分页 -->
					<div class="page">
					<img src="index/img/left4.png" class="a2">
					<c:if test="${count!=1}">
						<!-- 这里是鼠标移入移出的效果 -->
						<img src="${pageContext.request.contextPath }/index/img/right.png"
							onmouseover="arrow_color_blue_right(this)"
							onmouseout="arrow_color_away_right(this)"
							onclick="topic_page_col(1,${count},this)" class="a1">
					</c:if>
					<!-- 为1的情况，没有右边的箭头 -->
					<c:if test="${count==1}">
						<img src="index/img/right4.png" class="a1">
					</c:if>
				</div>
			</div>

		</div>
			<!-- 今日话题结束 -->
			<!-- 热门说说 -->
			<!-- 热门说说 -->
		<div class="shuo">
			<div class="main_title_2">
				<span><em></em></span>
			</div>
			<div class="shuo_right">
				<div class="shuo_right2">
					<img src="${pageContext.request.contextPath }/index/img/line4.png"
						height="250px">
				</div>
				<div class="shuo_right1">
					<h1>热门</h1>
					<h1>说说</h1>
				</div>
			</div>
			<div class="shuo_middle">
				<!--用户名 -->
				<div class="shuo_middle_title">
					<div class="shuo_middle_title_1">
						<a href="zone.html"><h3 id="short_user_name">${shortNote.getUserDetail().getUsername()}</h3></a>
					</div>
				</div>
				<div class="shuo_middle_content">
					<!--头像-->
					<div class="shuo_middle_content_1">
						<a href="zone?zonePageNum=1&collectPageNum=1&username=${shortNote.getUserDetail().getUsername()}&correctDate=20"> <img
							src="${shortNote.getUserDetail().getUserhead()}" width="100px"
							height="100px" id="short_userhead">
						</a>
					</div>
					<div class="shuo_middle_content_2">
						<ul class="author-meta clearfix">
							<li class="tag"><a href="part.html" id="short_tag">${shortTag}</a></li>
							<li class="date"><a href="##" id="short_publish_time"><fmt:formatDate
										value="${shortNote.getPublishtime()}"
										pattern="yyyy年MM月dd日  HH:mm" /></a></li>
						</ul>
						<p id="short_content">${shortNote.getContent() }</p>
						<!--这是下面用来出现照片的部分-->
						<div class="post-img" id="short_imgs">
							<c:forEach items="${shortImg}" var="imgi">
								<img
									src="${pageContext.request.contextPath }/${imgi.getPath()} ">
							</c:forEach>
						</div>

						<ul class="share-meta2 clearfix">
							<!--标题下面的三个功能按键-->
							<li><a href="detail.html" id="short_comment"><img
									src="${pageContext.request.contextPath }/index/img/comment.png">&nbsp;&nbsp;评论
									(<span id="short_comment_num">${shortNote.getCommentNum() }</span>)</a></li>
							<li><a href="##" id="short_praise"><img
									src="${pageContext.request.contextPath }/index/img/like.png"
									style="margin-left: -2px"
									onmouseover="this.src='${pageContext.request.contextPath }/index/img/like2.png'"
									onmouseout="this.src='${pageContext.request.contextPath }/index/img/like.png'">&nbsp;&nbsp;点赞(
									<span id="short_praise_num">${shortNote.getPraiseCount() }</span>)</a></li>
							<c:if test="${!shortTravelNoteCollected}">
								<li><a href="##" onclick="collected_col(${shortNote.id},this)"
									id="short_collect"> <img src="index/img/star.png"
										class="star" style="margin-left: -15px"
										onmouseover="star_on(this)" onmouseout="star_off(this)"
										width="16" height="16" title="未收藏">收藏 (${shortNote.getCollectTravels().size()})
								</a></li>
							</c:if>
							<c:if test="${shortTravelNoteCollected}">
								<li><a href="##" onclick="collected_col(${shortNote.id},this)"
									id="short_collect"><img src="index/img/star1.png"
										class="star" style="margin-left: -15px" width="16" height="16"
										title="已收藏">收藏(${shortNote.getCollectTravels().size()}) </a></li>
							</c:if>
							<li><a href="reportindex?travelid=${shortNote.id}"
								id="short_report"><img
									src="${pageContext.request.contextPath }/index/img/report2.png"
									width="12px" height="12px" style="margin-left: -23px">举报</a></li>
						</ul>
						</ul>
					</div>
				</div>
			</div>
			<div class="shuo_left">
				<div class="shuo_left_img">
					<a href="detail.html">
						<div class="shuo_left_readmore"></div>
					</a>
				</div>
				<div class="page2">
					<!-- 说说的分页 -->
					<c:if test="${count!=1}">
						<img src="index/img/right.png"
							onmouseover="arrow_color_green_right(this)"
							onmouseout="arrow_color_away_right(this)" class="a1"
							onclick="short_page_col(1,${shortCount},'${city}',this)">
					</c:if>
					<!-- 为1的情况，没有右边的箭头 -->
					<c:if test="${count==1}">
						<img src="index/img/right4.png" class="a1">
					</c:if>
					<img src="index/img/left4.png" class="a2">
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
				<c:forEach items="${longMap}" var="longi" varStatus="status">
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="##" class="star_bt" onclick="long_collected_col(${longi.key.id},this)">
								<c:if test="${longi.value!=1}">
									<img src="index/img/star3.png">
								</c:if>
								<c:if test="${longi.value==1}">
									<img src="index/img/star4.png">
								</c:if>
							</a> 
							<a href="#0" class="wish_bt"> </a> 
							<a href="detail?travelid=${longi.key.id}">
								<img src="${longImg[status.index].getPath()}" class="img-fluid" alt="" width="800" height="533">
								<div class="read_more">
									<span>阅读更多</span>
								</div>
							</a>
							<small>${longTag[status.index]}</small> 
						</figure>
						<div class="wrapper">
							<h3><a href="detail.html">${longi.key.getTitle()}</a></h3>
					
			
							
							
							<span class="price">${longi.key.getUserDetail().getUsername()}</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i><fmt:formatDate value="${longi.key.getPublishtime()}" pattern="yyyy年MM月dd日  HH:mm"/></li>
							<li><div class="score"><span>评论<em>${longi.key.getCommentNum()}</em></span></div></li>
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
<script src="${pageContext.request.contextPath }/index/js/jquery-2.2.4.min.js"></script>
<script src="${pageContext.request.contextPath }/index/js/common_scripts.js"></script>
<script src="${pageContext.request.contextPath }/index/js/main.js"></script>
<script src="${pageContext.request.contextPath }/index/assets/validate.js"></script>

<!-- DATEPICKER  -->
<script>
//鼠标移入箭头时更改颜色
function arrow_color_blue_left(obj){
	$(obj).attr("src","index/img/left2.png")
}
function arrow_color_blue_right(obj){
	$(obj).attr("src","index/img/right2.png")
}
function arrow_color_green_left(obj){
	$(obj).attr("src","index/img/left3.png")
}
function arrow_color_green_right(obj){
	$(obj).attr("src","index/img/right3.png")
}
//鼠标移出时更改箭头的颜色
function arrow_color_away_left(obj){
	$(obj).attr("src","index/img/left.png")
}
function arrow_color_away_right(obj){
	$(obj).attr("src","index/img/right.png")
}
//鼠标移入移出星星的效果
function star_on(obj){
	$(obj).attr("src","index/img/star1.png");
}
function star_off(obj){
	$(obj).attr("src","index/img/star.png");
}

/**
 * 点击收藏按钮的时候，对文章进行收藏或取消收藏操作的ajax的方法
 * 若文章已收藏，点击后会取消收藏
 * 若文章未收藏，则点击后会加入收藏
 * 用户未登录的情况下点击无效（会返回无效的json)
 *
 * 参数：
 *	-travelNoteId 游记的id，将传给后台，用于后台操作	
 * 孙亦璇 - v 0.0.1(2018-12-13 08:55:32)
 */
function collected_col(travelNoteId,obj){
	$.ajax({
		/*传到后台服务器的地址
		 *其中travelNoteId是必须的*/
		url:"changeCollectStatus?travelNoteId="+travelNoteId,
		type: "GET",
		dataType:"json",
		error(){
			/*返回无效的json时，即用户没有登录，出现弹框提示*/
			alert("登陆后才能收藏哟~");
			},
		success(data){	
				/*
				 * 用户已登录，并成功的更改了收藏的状态后
				 * -data.status  返回后台操作的状态
				 *       -collected 状态变为已收藏
			     *		 -uncollected 状态变为未收藏
			     * -data.collectNum 返回目前的收藏数量
			     * -data.travelNoteId 返回目前游记的id
				 */
				$(obj).attr("onclick","collected_col("+data.travelNoteId+",this)");
				if(data.status=="collected"){ 
					$(obj).children().remove();
					$(obj).text("收藏("+data.collectNum+")");
					$(obj).append('<img src="index/img/star1.png" class="star" width="16" height="16" title="已收藏">');
				}
				if(data.status=="uncollected"){
					$(obj).children().remove();
					$(obj).text("收藏("+data.collectNum+")" );//收藏
					$(obj).append('<img src="index/img/star.png" class="star" onmouseover="star_on(this)" onmouseout="star_off(this)" width="16" height="16" title="未收藏">');
				}
			}	
	});
}
function long_collected_col(travelNoteId,obj){
	$.ajax({
		/*传到后台服务器的地址
		 *其中travelNoteId是必须的*/
		url:"changeCollectStatus?travelNoteId="+travelNoteId,
		type: "GET",
		dataType:"json",
		error(){
			/*返回无效的json时，即用户没有登录，出现弹框提示*/
			alert("登陆后才能收藏哟~");
			},
		success(data){	
				if(data.status=="collected"){ 
					$(obj).children().attr("src","index/img/star4.png");
				}
				if(data.status=="uncollected"){
					$(obj).children().attr("src","index/img/star3.png");
				}
			}	
	});
}
 /**
	 * 在首页中的今日话题部分进行翻页的时候，调用的ajax
	 * 用于和后台交互，更新今日话题部分的数据
	 *
	 * 参数：
	 *	-topic_page 游记翻动的页数，值为-1或1，即向前翻动一页或向后翻动一页	
	 *  -count  目前游记的总页数，用于判断第一页和最后一页
	 * 孙亦璇 - v 0.0.1(2018-12-13 09:03:37)
	 */
var default_topic_page=1;
function topic_page_col(topic_page,count,obj){
	/*点击一侧箭头时，更改另一侧的效果*/
	if(topic_page<0){ //往左点，复原右边的效果
    		$(obj).next().attr("src","index/img/right.png");
    	$(obj).next().attr("onmouseover","arrow_color_blue_right(this)");
    	$(obj).next().attr("onmouseout","arrow_color_away_right(this)");
    	$(obj).next().attr("onclick","topic_page_col(1,"+count+",this)");
    	}else{ //点了右边的箭头
    		console.log($(obj).prev()); 
    		$(obj).prev().attr("src","index/img/left.png");
    	$(obj).prev().attr("onmouseover","arrow_color_blue_left(this)");
    	$(obj).prev().attr("onmouseout","arrow_color_away_left(this)");
    	$(obj).prev().attr("onclick","topic_page_col(-1,"+count+",this)");
    	}
    /*移到了最左边的时候，把最左边的样式清空*/
    if(default_topic_page+topic_page==1){
    	$(obj).attr("src","index/img/left4.png");
    	$(obj).attr("onmouseover","");
    	$(obj).attr("onmouseout","");
    	$(obj).attr("onclick","");
    }
    /*移到了最右边的时候，把最右边的样式清空*/
    if(default_topic_page+topic_page==count){
    	$(obj).attr("src","index/img/right4.png");
    	$(obj).attr("onmouseover","");
    	$(obj).attr("onmouseout","");
    	$(obj).attr("onclick","");
    }
    /*下面开始调用ajax*/
    if(default_topic_page+topic_page>0&&default_topic_page+topic_page<=count){
		default_topic_page=default_topic_page+topic_page;
	}
	console.log(default_topic_page);
	$.ajax({
		url:"indextopic?pagenum="+default_topic_page,
		type: "GET",
		dataType:"json",
		error(XMLHttpRequest, textStatus, errorThrown){
			console.log(XMLHttpRequest);
			console.log(textStatus);
			console.log(errorThrown);
			},
		success(data){
				//获取了json成功后的提示，打印了传来的json
				console.log(data);
				//修改头像
				var topic_userhead=document.getElementById('topic_userhead');
				topic_userhead.src =data.userhead;
				//修改用户名字
				$("#topic_user_name").text(data.username);
				//修改时间
				$("#topic_publish_time").text(data.publishtime);
				//修改正文
				$("#topic_content").text(data.content);
				//修改图片
				var imgs =data.imgs;
				$("#topic_imgs").children().remove(); //先把之前的清空
				for(var j = 0,len = imgs.length; j < len; j++){ //追加新的
					$("#topic_imgs").append("<img src="+imgs[j]+">")
				}
				//修改评论数
				$("#topic_comment_num").text(data.commentNum);
				//修改点赞数
				$("#topic_praise_num").text(data.praiseCount);
				//修改收藏数
				//$("#topic_collect_num").text(data.collectNum);
				//三个功能键的超链接还没改
				var travelNoteId =data.travelNoteId;
				$("#topic_comment").attr("href","detail?travelid="+travelNoteId); //评论
				$("#topic_praise").attr("href","依旧不知道是啥的链接?travelid="+travelNoteId); //点赞
				$("#topic_collect").attr("onclick","collected_col("+travelNoteId+",this)");
				if(data.collected){ 
					$("#topic_collect").children().remove();
					$("#topic_collect").text("收藏("+data.collectNum+")");
					$("#topic_collect").append('<img src="index/img/star1.png" class="star" width="16" height="16" title="已收藏">');
				}
				else{
					$("#topic_collect").children().remove();
					$("#topic_collect").text("收藏("+data.collectNum+")" );//收藏
					$("#topic_collect").append('<img src="index/img/star.png" class="star" onmouseover="star_on(this)" onmouseout="star_off(this)" width="16" height="16" title="未收藏">');
				}
				$("#topic_report").attr("href","reportindex?travelid="+travelNoteId); //举报
			} 
		
	});
	
}


 /**待改动鸭鸭鸭
	 * 在首页中的说说部分进行翻页的时候，调用的ajax
	 * 用于和后台交互，更新今日话题部分的数据
	 *
	 * 参数：
	 *	-topic_page 游记翻动的页数，值为-1或1，即向前翻动一页或向后翻动一页	
	 *  -count  目前游记的总页数，用于判断第一页和最后一页
	 * 孙亦璇 - v 0.0.1(2018-12-13 09:03:37)
	 */
		var default_short_page=1;
		function short_page_col(short_page,count,city,obj){
			/*点击左右箭头时，先恢复另一边箭头的效果*/
			if(short_page<0){ //往左点，复原右边的效果
	    		$(obj).prev().attr("src","index/img/right.png");
		    	$(obj).prev().attr("onmouseover","arrow_color_green_right(this)");
		    	$(obj).prev().attr("onmouseout","arrow_color_away_right(this)");
		    	$(obj).prev().attr("onclick","short_page_col(1,"+count+",'"+city+"',this)");
	    	}else{ //点了右边的箭头
	    		console.log($(obj).next());
	    		$(obj).next().attr("src","index/img/left.png");
		    	$(obj).next().attr("onmouseover","arrow_color_green_left(this)");
		    	$(obj).next().attr("onmouseout","arrow_color_away_left(this)");
		    	$(obj).next().attr("onclick","short_page_col(-1,"+count+",'"+city+"',this)");
	    	}
		    /*判断箭头是否移到了尽头*/
		    /*若箭头移到了第一个，则把第一个箭头变为灰色，清除效果*/
		    if(default_short_page+short_page==1){
		    	$(obj).attr("src","index/img/left4.png");
		    	$(obj).attr("onmouseover","");
		    	$(obj).attr("onmouseout","");
		    	$(obj).attr("onclick","");
		    }
		    /*若箭头移到了最后一个，则把最后一个箭头变为灰色，清除效果*/
		    if(default_short_page+short_page==count){
		    	$(obj).attr("src","index/img/right4.png");
		    	$(obj).attr("onmouseover","");
		    	$(obj).attr("onmouseout","");
		    	$(obj).attr("onclick","");
		    }
		    /*下面开始调用ajax*/
		    if(default_short_page+short_page>0&&default_short_page+short_page<=count){
				default_short_page=default_short_page+short_page;
			}
			console.log(default_short_page);
			$.ajax({
				url:"indexshort?pagenum="+default_short_page+"&city="+city,
				type: "GET",
				dataType:"json",
				error(XMLHttpRequest, textStatus, errorThrown){
					console.log(XMLHttpRequest);
					console.log(textStatus);
					console.log(errorThrown);
					},
				success(data){
						//获取了json成功后的提示，打印了传来的json
						console.log(data);
						//修改头像
						$("#short_userhead").attr("src",data.userhead);
						//修改用户名字
						$("#short_user_name").text(data.username);
						//修改时间
						$("#short_publish_time").text(data.publishtime);
						//修改正文
						$("#short_content").text(data.content);
						//修改图片
						var imgs =data.imgs;
						$("#short_imgs").children().remove(); //先把之前的清空
						for(var j = 0,len = imgs.length; j < len; j++){ //追加新的
							$("#short_imgs").append("<img src="+imgs[j]+">")
						}
						//修改tag
						$("#short_tag").text(data.travelNoteTag);
						//修改评论数
						$("#short_comment_num").text(data.commentNum);
						//修改点赞数
						$("#short_praise_num").text(data.praiseCount);
						//修改收藏数
						//$("#short_collect_num").text(data.collectNum);
						//三个功能键的超链接还没改
						var travelNoteId =data.travelNoteId;
						console.log(data);
						$("#short_comment").attr("href","detail?travelid="+travelNoteId); //评论
						$("#short_praise").attr("href","依旧不知道是啥的链接?travelid="+travelNoteId); //点赞
						$("#short_collect").attr("onclick","collected_col("+travelNoteId+",this)");
						if(data.collected){ 
							$("#short_collect").children().remove();
							$("#short_collect").text("收藏("+data.collectNum+")");
							$("#short_collect").append('<img src="index/img/star1.png" class="star" width="16" height="16" title="已收藏">');
						}
						else{
							$("#short_collect").children().remove();
							$("#short_collect").text("收藏("+data.collectNum+")" );//收藏
							$("#short_collect").append('<img src="index/img/star.png" class="star" onmouseover="star_on(this)" onmouseout="star_off(this)" width="16" height="16" title="未收藏">');
						}
						$("#short_report").attr("href","reportindex?travelid="+travelNoteId); //举报
					} 
				
			});
			
		}








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

// function out(obj){
 
//     document.getElementById("User").style.display = "none";     

//             }
	</script>
	

	<!-- INPUT QUANTITY  -->
	<script src="${pageContext.request.contextPath }/index/js/input_qty.js"></script>
	
</body>
</html>