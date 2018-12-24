<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- For IE -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- For Resposive Device -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- For Window Tab Color -->
<!-- Chrome, Firefox OS and Opera -->
<meta name="theme-color" content="#2c2c2c">
<!-- Windows Phone -->
<meta name="msapplication-navbutton-color" content="#2c2c2c">
<!-- iOS Safari -->
<meta name="apple-mobile-web-app-status-bar-style" content="#2c2c2c">
<title>微旅WeTrip</title>
<link href="editor/css/main.css" rel="stylesheet">
<link rel="shortcut icon" href="editor/images/icon.ico"
	type="image/x-icon">
<!-- Main style sheet -->
<link rel="stylesheet" type="text/css" href="editor/css/style.css">
<!-- responsive style sheet -->
<link rel="stylesheet" type="text/css" href="editor/css/responsive.css">
<!-- Theme-Color css -->
<link rel="stylesheet" id="jssDefault" href="editor/css/color.css">
<!-- BASE CSS -->
<link href="editor/css/bootstrap.min.css" rel="stylesheet">
<link href="editor/css/banner-style.css" rel="stylesheet">
<link href="editor/css/vendors.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="editor/css/upload-style.css" />
<!--editor CSS-->
	<link rel="stylesheet" type="text/css"	href="editor/css/wangEditor.min.css">
	<link rel="stylesheet" type="text/css" href="editor/css/webuploader.css">
<!-- 标题 -->
	<link rel="stylesheet" href="editor/baidu/style.css" type="text/css" />
<!-- 百度editor -->
	<link href="editor/baidu/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
    <link href="editor/baidu/editor.css" type="text/css" rel="stylesheet">

    <script type="text/javascript" src="editor/baidu/third-party/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="editor/baidu/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="editor/baidu/editor_api.js"></script>
    <script type="text/javascript" src="editor/baidu/lang/zh-cn/zh-cn.js"></script>    
<!-- tag -->
	<script type="text/javascript" src="editor/tag/js/tag.js"></script>
	<link rel="stylesheet" type="text/css" href="editor/tag/css/tag.css" />

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
		<a href="main.jsp">
			<img src="zone/images/logo_white.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
			<img src="zone/images/logo_black.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
		</a>
	</div>
	<!--这是旁边的三个按钮-->
	<ul id="top_menu">
		<li><a href="editor.html"><img src="zone/images/add_button1.png" width="24" height="24" ></a></li>
		<li><a href="login.html"><img src="zone/images/personal_button1.png" width="24" height="24"></a></li>
		<li><a href="cart.html"><img src="zone/images/shopping_button1.png" width="24" height="24" ></a></li>
		<li><a href="personalinfo.html"><img src="zone/images/config_button1.png" width="24" height="24" ></a></li></ul>

		<ul id="top_menu2">
			<li><a href="editor.html"><img src="zone/images/add_button.png" width="24" height="24" ></a></li>
			<li><a href="login"><img src="zone/images/personal_button.png" width="24" height="24"></a></li>
			<li><a href="cart.html"><img src="zone/images/shopping_button.png" width="24" height="24" ></a></li>
			<li><a href="personalinfo.html"><img src="zone/images/config_button.png" width="24" height="24" ></a></li>
			

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
				<li><span><a href="main.jsp">首页</a></span></li>
					<c:forEach items="${tags }" var="t">
						<li><span><a href="part?tagName=${t.tagName}">${t.tagName }</a></span></li>
					</c:forEach>
					<li><span><a href="part.html">周边商城</a></span></li>
					<li><span><a href="dailytopic.html">今日话题</a></span></li>
			</ul>
			
		</nav>
	</header>
<!-- 
	=============================================
					文章展示页
	============================================== 
-->
<div class="container" style="margin-top: 130px;">
	<div class="row">
		<div class="col-lg-8 col-12 blog-grid-style hover-effect-one">
		<form action="fabiao"  name="aaa">
				<!--富文本框的展示-->
				<div style="width:750px;height:70px">
					<input  required='' type='text' name="title" id="title">
					<label alt='请输微旅标题' placeholder='标题'></label>
				</div>
			<div class="single-blog-post" style="margin-bottom: 15px;">
				<div class="container">
							<!--style给定宽度可以影响编辑器的最终宽度-->
							<script type="text/plain" id="myEditor" style="width:750px;height:240px;"></script>			
						    	<!--设置隐藏域 这是存入数据库时接收数据时的隐藏域-->					    	
								<div  style="display:none;">
						    		<input type="text" name="content" id="content1">
								</div>
				<!-- 上传图片 -->
				<div>
					<div id="wrapper">
						<div id="container">
						<!--头部，相册选择和格式选择-->
							<div id="uploader">
								<div class="queueList">
									<div id="dndArea" class="placeholder">
										<div id="filePicker"></div>
									</div>
								</div>
								<div class="statusBar" style="display: none;">
									<div class="progress">
										<span class="text">0%</span> <span class="percentage"></span>
									</div>
									<div class="info"></div>
									<div class="btns">
										<div id="filePicker2"></div>
										<div class="uploadBtn">开始上传</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					<!-- 上传图片 -->
					<!-- 地图位置 -->
					<div id="mapall">
						<div id="map" >
							<!-- 地址的按钮 -->
						</div>
						<div id="prompt"><h6>请选择地址</h6></div>
						<div id="show">
							<img id="imgshow" src="">
							<!--设置隐藏域——获得地图的地址-->
							<div  id="show" style="display:none;">
								<input type="text" name="addressImgSrc" id="src1">
							</div>
						</div>
					</div>
					<!-- 地图位置 -->
					<div id="detail">
						<!-- 通过地图获得地址的输入框 -->
						<div id="mar" style="margin-top:10px;margin-left:10px;">
							位置：<input type="text" name="address" id="cmbprovince" readonly="readonly" >
						</div>
						<!-- 通过地图获得地址的输入框 -->
						<!-- 标签 -->
						<div id="tag">
							<h7 id="quanxian">微旅小标签:&nbsp&nbsp</h7>
							
						
							<select id="city" class="select2" name="tag">
								<option value="风景">风景</option>
								<option value="美食">美食</option>
								<option value="玩耍">玩耍</option>
								<option value="小贴士">小贴士</option>
							</select>							
						</div>
						<div class="si">
							<h7 id="quanxian">创建小标签:&nbsp&nbsp</h7>
						</div>
						<!-- 标签 -->
						<!-- 权限 -->
						<div class="si">
							<h7 id="quanxian">权限:&nbsp&nbsp&nbsp&nbsp</h7>
							<select id="city" class="select2" name="status">
								<option value="1">公开</option>
								<option value="2">仅自己可见</option>
							</select>
						</div>
						<!-- 权限 -->
						<!-- 参与话题及发表 -->
						<div class="si">
							<!-- 后台默认是就是false 打对勾之后就是TRUE了 -->
							<input name="topicId" type="checkbox" value="shi" id="topicId">是否参加今日话题
						</div>
						<!-- 自定义标签 -->
							<input type="text" id="tagValue" >
							<script type="text/javascript">
							//添加标签
							var tag = new Tag("tagValue");
							tag.initView();
							</script>
							<!--设置隐藏域——标签的值-->
							<input type="hidden" name="tag1" id="tagtag">
						<!-- 自定义标签 -->
						<!--提交按钮-->
						<div id="bg2">
							<input id="push" type="button" name="" value="发表"> 
							<img src="editor/images/bg4.png">
						</div>
					</div>
				</div>
				<!-- /.post-meta-box -->
			</div>
		<!--富文本框的展示-->
		</form>
		</div>
		<!-- /.col- -->
<!-- ======================== Theme Sidebar =============================== -->
		<div class="col-lg-4 col-md-7 col-12 theme-main-sidebar">
			<div class="sidebar-box bg-box about-me">
				<h6 style="font-size: 22px; margin-bottom: 15px; font-family: 幼圆;">关于我</h6>
				<img src="editor/images/home/1.jpg" alt="">
				<div class="userii">
					<div class="useri">
						<h5>用户名</h5>
					</div>
					<div class="useri_img">
						<img src="editor/images/sexy-woman.png">
					</div>
				</div>
				<div style="clear: both;"></div>
				<h6>用户所在城市</h6>
				<p>个人简介</p>
			</div>
			<!-- /.sidebar-categories -->
		</div>
		<!-- /.theme-main-sidebar -->
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->
<!--
	=====================================================
		Footer
	=====================================================
-->
		<!--footer-->
		<footer class="theme-footer">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="index/img/footer130.png" alt=""></a>
				</div>
				<p class="copyright">Copyright &copy; 2018.微旅wetrip项目组 All rights reserved.</p>
			</div>
			<!-- /.container -->
		</footer>
		<!-- /.theme-footer -->
		<!--/footer-->

<!-- 百度编辑框的js  -->
	<script type="text/javascript" src="editor/baidu/editor.js"></script>
<!-- Font Awesome -->
	<script src="editor/fonts/font-awesome/fontawesome-all.min.js"></script>
<!-- COMMON SCRIPTS -->
	<script src="editor/js/jquery-2.2.4.min.js"></script>
	<script src="editor/js/common_scripts.js"></script>
	<script src="editor/js/main.js"></script>
<!-- Map -->
<!--editor script-->
	<script type="text/javascript" src="editor/js/wangEditor.js"></script>
	<script type="text/javascript">
		var map = new wangEditor('map');
		map.config.menus = [ 'location' ];
		map.create();
	</script>
<!--收藏js-->

<!--这个是图片上传的JS-->
	<script type="text/javascript" src="editor/js/webuploader.js"></script>
	<script type="text/javascript" src="editor/js/md5.js"></script>
	<script type="text/javascript" src="editor/js/upload.js"></script>
<!-- 这是上传图片的JS-->
<!-- 地图编辑框隐藏的部分js -->
	<script type="text/javascript">
		// 一开始是都隐藏的，当点击提交时show模块变为black  img的src变为指定的路经
		document.getElementById("map").style.display = "none";
		document.getElementById("show").style.display = "none";
		// document.getElementById("show").innerHTML=imgHtml;
	</script>

<!-- Theme js -->
	<script src="editor/js/theme.js"></script>
</div>
<!-- /.main-page-wrapper -->
</body>
</html>
