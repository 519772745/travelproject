<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ch">
<head>

	<title>微旅WeTrip</title>

	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta charset="utf-8">
	<meta name="author" content="">
	<!--[if IE]><![endif]-->
	<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="detail/img/icon.ico" type="image/x-icon">
	<link rel="icon" href="detail/img/icon.ico" type="image/x-icon">

	<link href="detail/headcss/style.css" rel="stylesheet">

	<!-- BASE CSS -->
	<link href="detail/headcss/bootstrap.min.css" rel="stylesheet">
	<link href="detail/headcss/style.css" rel="stylesheet">
	<link href="detail/headcss/vendors.css" rel="stylesheet">

	<!-- YOUR CUSTOM CSS -->
	<link href="detail/headcss/custom.css" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" href="detail/detailcss/fonts/font-awesome.css">
	<link rel="stylesheet" href="detail/detailcss/plugins.css">
	<link rel="stylesheet" href="detail/detailcss/main.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900%7CMontserrat:400,700%7CLora:400,400italic,700,700italic' rel='stylesheet' type='text/css'>

	<!-- Main style sheet -->
	<link rel="stylesheet" type="text/css" href="detail/footcss/style.css">
	<!-- responsive style sheet -->
	<link rel="stylesheet" type="text/css" href="detail/footcss/responsive.css">
	<!-- ä¸»é¢é¢è² -->
	<link rel="stylesheet" id="jssDefault" href="detail/footcss/color.css">
	<!-- ä¸ä¸å¼ ï¼ä¸ä¸å¼  -->
	<!-- <link rel="stylesheet" type="text/css" href="dailytopic/css/style.css">
	<link rel="stylesheet" type="text/css" href="dailytopic/css/bootstrap.min.css"> -->
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
			<li><a href="login.html"><img src="detail/img/personal_button.png" width="24" height="24" ></a></li>
			<li><a href="cart.html"><img src="detail/img/shopping_button.png" width="24" height="24"></a></li>
			<li><a href="personalinfo.html"><img src="detail/img/config_button.png" width="24" height="24"></a></li>
			
		</ul>

		<ul id="top_menu" class="logo_sticky">
			<li><a href="editor.html"><img src="detail/img/add_button1.png" width="24" height="24"></a></li>
			<li><a href="login.html"><img src="detail/img/personal_button1.png" width="24" height="24" ></a></li>
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
					<li><span><a href="part.jsp">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="producthot">周边商城</a></span></li>
					<li><span><a href="dailytopic.html">今日话题</a></span></li>
			</ul>
		</nav>		
	</header><!-- #header -->

	<div id="main">

		<div class="wrapper clearfix">

			<div id="content" class="col col-8">

				<div class="blog-post blog-post-single">

					<div class="blog-post-thumb">
						<img src="${travel.getImgs().iterator().next().getPath()}" alt="封面" title="封面"  />
					</div><!-- .blog-post-thumb -->

					<div class="blog-post-main clearfix">

						<div class="blog-post-info">

							<div class="blog-post-info-inner">

								<div class="blog-post-title">
							<h1>${travel.title }</h1>
								</div><!-- .blog-post-title -->

								<div class="blog-post-meta">
								<fmt:formatDate value="${travel.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/>&nbsp;&nbsp;&nbsp;地点：${travel.address}
								</div><!-- .blog-post-meta -->

								<div class="blog-post-content">
									${travel.content }
									
									</div><!-- .dslc-blog-post-content -->
									<div float="right" class="ping">
										<a href="##"><img src="detail/img/like.png"  id ="like"onmouseover="this.src='detail/img/like2.png'" onmouseout="this.src='detail/img/like.png'"  width="16" height="16" align="left">点赞(${travel.praiseCount })</a>
										<a href="##" ><img src="detail/img/star.png" id="star" onmouseover="this.src='part/img/star1.png'" onmouseout="this.src='part/img/star.png'"  width="16" height="16" align="left">收藏(${travel.getCollectTravels().size()})</a>
										<a href="##"><img src="index/img/report.png" width="16px" height="16px"  align="left" style="margin-top:7px;margin-left:7px;">举报</a>
									</div>

								</div><!-- .blog-post-info-inner -->


							</div><!-- .blog-post-info -->

						</div><!-- .blog-post-main -->

					</div><!-- .blog-post -->


					<div class="related-posts white-wrap">

						<div class="section-heading">
							<span class="section-heading-line"></span>
							<span class="section-heading-text">游记照片</span>
							<div>
								<ul class="travelIMG">
								<c:forEach items="${travel.getImgs()}" var="imgi">
									<li><a href="#"><img src="${imgi.getPath()}" width="200" height="200" ></a></li>
								</c:forEach>						
								</ul>
							</div>
						<!--分页-->
							<div class="theme-pagination text-center" >
								<ul class="clearfix">
									<li><a href="##"><i class="icon flaticon-left-arrow"></i></a></li>
									<!--页码-->
									<li><a href="##"><img src="index/img/point.png" onmouseover="this.src='index/img/point2.png'" onmouseout="this.src='index/img/point.png'"></a></li>
									<li><a href="##"><img src="index/img/point.png" onmouseover="this.src='index/img/point2.png'" onmouseout="this.src='index/img/point.png'"></a></li>
									<li><a href="##"><img src="index/img/point.png" onmouseover="this.src='index/img/point2.png'" onmouseout="this.src='index/img/point.png'"></a></li>
									<li><a href="##"><i class="icon flaticon-right-arrow"></i></a></li>
									<!--页码-->
								</ul>
							</div> <!--分页 -->
							<div style="clear:both"></div>
						</div><!-- .section-heading -->
						<div class="section-heading2">
							<span class="section-heading2-line"></span>
							<span class="section-heading2-text">地图</span>
							<img src="index/img/map.png" title="地图">
						</div><!-- .section-heading -->
					</div>



			<div id="comments">

					<div class="white-wrap">

						<ol class="comments">
						<!-- 评论循环 -->
						<c:forEach items="${comments}" var="commenti">
						<c:if test="${commenti.parentComment==null }">
						
							<li class="comment">
								<span class="comment-author-avatar"><img src="${commenti.userDetail.userhead}" alt="头像" width="82px" height="82px" /></span>
								<div class="comment-inner">
									<div class="comment-info clearfix">
										<div class="comment-meta">
											<span class="comment-meta-author">${commenti.userDetail.username}</span>
											<span class="comment-meta-date"><fmt:formatDate value="${commenti.commentTime}" pattern="yyyy年MM月dd日  HH:mm"/></span>
										</div><!-- .comment-meta -->
										<span class="comment-reply"  id="reply">
											<span rel="nofollow" onclick="openDialog(event,${commenti.id})">回复</span>
										</span>
									</div>							
								<div class="comment-main">
									<p>${commenti.commentContent }</p>
								</div><!-- .comment-main -->
							</div>
							<!--子回复的循环 -->	
							
						
							<ul class="comment-children">
							<c:forEach items="${comments}" var="child">
							<c:if test="${child.parentComment.id==commenti.id}">
								<li class="comment">
									<span class="comment-author-avatar"><img src="${child.userDetail.userhead }" alt="回复" width="82px" height="82px" /></span>
									<div class="comment-inner">
										<div class="comment-info clearfix">
											<div class="comment-meta">
												<span class="comment-meta-author">${child.userDetail.username}</span>
												<span class="comment-meta-date"><fmt:formatDate value="${child.commentTime}" pattern="yyyy年MM月dd日  HH:mm"/></span>
											</div><!-- .comment-meta -->
										</div><!-- .comment-info -->
										<div class="comment-main">
											<p>${child.commentContent }</p>
										</div><!-- .comment-main -->
									</div><!-- .comment-inner -->
								</li><!-- .comment -->
							</c:if>	
					    	</c:forEach>	
							</ul><!-- .children -->
						<div class="nav_right fr" id="${commenti.id}" style="display:none">
									<div class="search fl clearfix">
										<form action="comment?travelid=${travel.id}&parentid=${commenti.id}" method="post">
											<textarea rows="5"cols="100" placeholder="回复内容">	</textarea>
											<input type="submit" class="search_btn fr" id="reply" value="发表回复"/>
										</form>
									</div>
							</div>						
						</li><!-- .comment -->
						
						
					</c:if>		
					</c:forEach>
					
					</ol>
							
					</div><!-- .white-wrap -->

				</div><!-- #comments -->

				<div id="leave-comment">

					<div class="white-wrap">

						<div class="section-heading">
							<span class="section-heading-line"></span>
							<span class="section-heading-text">发表你的评论</span>
						</div><!-- .section-heading -->

						<form action="comment?travelid=${travel.id}" method="post">

							<div class="leave-comment-message">
								<textarea name="comment" placeholder="评论内容" aria-required="true"></textarea>
							</div><!-- .leave-comment-message -->

							<div class="leave-comment-submit">
								<input name="submit" type="submit" id="submit" class="submit" value="提交你的评论" />
							</div><!-- .leave-comment-submit -->

						</form>

					</div><!-- .white-wrap -->

				</div><!-- #leave-comment -->

			</div><!-- #content -->

			<div id="sidebar" class="col col-4 col-last">

				<div class="widget">

					<div class="about-author-widget">

						<div class="about-author-widget-banner">
							<img src="detail/img/headbg.png" alt="" />
						</div>

						<div class="about-author-widget-avatar" align="center">
							<img src="${travel.userDetail.userhead }" alt="头像" width="82px" height="82px" title="头像"  />
						</div>

						<div align="center">
							<p class="about-author-widget-name"  align-content="center" >${travel.userDetail.username}
								<c:if test="${travel.userDetail.sex=='女' }">
								<img src="detail/img/icons8-女-16.png" class="sex" /></p>
								</c:if>
								<c:if test="${travel.userDetail.sex=='男' }">
								<img src="detail/img/icons8-男-16.png" class="sex" /></p>
								</c:if>
								

							</div>
							<h3 class="about-author-widget-position">${travel.userDetail.city}</h3>

							<div class="about-author-widget-text">
								${travel.userDetail.description}
							</div>

						</div><!-- .about-author-widget -->

					</div><!-- .widget -->

					<div class="widget">

						<h3 class="widget-title">
							<span class="widget-title-line"></span>
							<span class="widget-title-text">ta还写过</span>
						</h3>

						<div class="widget-content">
							<div class="recent-posts-widget">

					<c:forEach items="${toptravel}" var="topi">
								<div class="recent-posts-widget-post">
									<div class="recent-posts-widget-thumb">
										<a href="detail?travelid=${topi.id}"><img src="${topi.getImgs().iterator().next().getPath() }" alt="游记封面" title="封面"/></a>
									</div><!-- .recent-posts-widget-thumb -->
									<div class="recent-posts-widget-main">
										<div class="recent-posts-widget-date"><fmt:formatDate value="${topi.publishtime}" pattern="yyyy年MM月dd日  HH:mm"/></div>
										<div class="recent-posts-widget-title"><a href="detail?travelid=${topi.id}">${topi.title}</a></div>
									<c:forEach items="${topi.tagTravelNote}" var="tagi">
										<c:if test="${tagi.tags.parentTag==null }">
										<div class="recent-posts-widget-category"><a href="archives.html">${tagi.tags.tagName}</a></div>
										</c:if>
									</c:forEach>
									</div><!-- .recent-posts-widget-main -->
								</div><!-- .recent-posts-widget-post -->
					</c:forEach>
							

							</div><!-- .recent-posts-widget -->
						</div><!-- .widget-content -->
					</div><!-- .widget -->



					<div class="widget">

						<h3 class="widget-title">
							<span class="widget-title-line"></span>
							<span class="widget-title-text">文章标签</span>
						</h3>

						<div class="widget-content">
							<div class="tags-cloud-widget"><!--游记参与的所有标签 -->
							<c:forEach items="${travel.getTagTravelNote()}" var="tagi" >
								<a href="archives.html">${tagi.tags.tagName}</a>
							</c:forEach>
							
								
							</div><!-- .tags-cloud-widget -->
						</div><!-- .widget-content -->

					</div><!-- .widget -->

				</div><!-- #sidebar -->

			</div><!-- .wrapper -->

		</div><!-- #main -->

		<!-- footer -->
		<footer class="theme-footer">
			<div class="logo1"><a href="index.html"><img src="detail/img/footer130.png" alt="" /></a></div>
			<p class="copyright2">Copyright &copy; 2018.公司名字 All rights reserved.</p>
		</footer> <!-- /.theme-footer -->
		<div id="toTop"></div><!-- 返回到顶端 -->

		<script type="text/javascript">
	//点击出现div，移开消失
	window.onload = function(){
		document.onclick = function(e){
			e = e || window.event;
			var dom =  e.srcElement|| e.target;
			if(dom.id != "dialog" && document.getElementById("dialog").style.display == "block") {
					//document.getElementById("dialog").style.display = "none";
				}
			};
		};
		function openDialog(e,id) {
			document.getElementById(id).style.display = "block";
			e = e||window.event;
			if(+'\v1') {
				e.stopPropagation();
			} else  {
				e.cancelBubble = true;
			}
			
		}
	</script>
	<!-- COMMON SCRIPTS -->
	<script src="detail/headjs/jquery-2.2.4.min.js"></script>
	<script src="detail/headjs/common_scripts.js"></script>
	<script src="detail/headjs/main.js"></script>
	<script src="detail/assets/validate.js"></script>
	<!-- JavaScript -->
	<script type="text/javascript" src="detail/javascript/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="detail/javascript/plugins.js"></script>
	<script type="text/javascript" src="detail/javascript/main.js"></script>



</body>
</html>
