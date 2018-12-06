﻿<!DOCTYPE html>
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
<link rel="stylesheet" type="text/css"
	href="editor/css/wangEditor.min.css">
	<link rel="stylesheet" type="text/css" href="editor/css/webuploader.css">
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
				<a href="index.html"> <img src="editor/images/logo_white.png"
					width="150" height="36" data-retina="true" alt=""
					class="logo_normal"> <img src="editor/images//logo_black.png"
					width="150" height="36" data-retina="true" alt=""
					class="logo_sticky">
				</a>
			</div>
			<!--这是旁边的三个按钮-->
			<ul id="top_menu">
				<li><a href="editor.html"><img
						src="editor/images/add_button1.png" width="24" height="24"></a></li>
				<li><a href="login.html"><img
						src="editor/images/personal_button1.png" width="24" height="24"></a></li>
				<li><a href="cart.html"><img
						src="editor/images/shopping_button1.png" width="24" height="24"></a></li>
				<li><a href="personalinfo.html"><img
						src="editor/images/config_button1.png" width="24" height="24"></a></li>
			</ul>

			<ul id="top_menu2">
				<li><a href="editor.html"><img
						src="editor/images/add_button.png" width="24" height="24"></a></li>
				<li><a href="login.html"><img
						src="editor/images/personal_button.png" width="24" height="24"></a></li>
				<li><a href="cart.html"><img
						src="editor/images/shopping_button.png" width="24" height="24"></a></li>
				<li><a href="personalinfo.html"><img
						src="editor/images/config_button.png" width="24" height="24"></a></li>


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
					<li><span><a href="index.html">首页</a></span></li>
					<li><span><a href="part.html">风景</a></span></li>
					<li><span><a href="part.html">美食</a></span></li>
					<li><span><a href="part.html">玩耍</a></span></li>
					<li><span><a href="part.html">周边</a></span></li>
					<li><span><a href="part.html">小贴士</a></span></li>
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
					<div id="xiaotuisong" style="text-align: center;">微旅WeTrip</div>
					<!--富文本框的展示-->
					<!--编辑框的id为editor-trigger，下一级就是编辑的内容标签P和H，通过这两个可以获得编辑的内容-->
					<div class="single-blog-post" style="margin-bottom: 15px;">
						<div class="container">
							<div id="container3">
								<!-- 	<div id="addpic"  onclick="openDialog(event)">请插入图片</div>
					<img id="pic" src="editor/images/pic.png" onclick="openDialog(event)"> -->
								<div id="editor-trigger">
									<!--input框-->

								</div>
							</div>
							<!-- 上传图片 -->
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
							<!-- 上传图片 -->
							<!-- 详细地址 -->
							<div id="mapall">
								<div id="map">
									<!-- 地址的按钮 -->
								</div>
								<div id="prompt">
									<h6>请选择地址</h6>
								</div>
								<div id="show">
									<img id="imgshow" src="">
								</div>
							</div>
							<!-- <div class="si">
						<input type="button" name="地图" onclick="getmap()">
						<div id="mapshow" style="display: hidden">
							
						</div>
					</div> -->
							<div id="detail">
								<div id="mar" style="margin-top: 10px; margin-left: 10px;">
									<select id="cmbProvince" name="cmbProvince"></select> <select
										id="cmbCity" name="cmbCity"></select> <select id="cmbArea"
										name="cmbArea"></select>
								</div>
								<!-- 详细地址 -->
								<!-- 标签 -->
								<div class="si">
									<h7 id="h7">标签:&nbsp&nbsp&nbsp&nbsp</h7>
									<select id="city" class="select">
										<option value="微旅club">风景</option>
										<option value="微旅黑料">美食</option>
										<option value="写bug">玩耍</option>
										<option value="微旅手办">周边</option>
										<option value="黑洞">小贴士</option>
										<option value="吃啥？！">今日话题</option>
									</select>
								</div>
								<!-- 标签 -->
								<!-- 自定义标签 -->
								<div class="si">
									<h7 id="h7">自定义标签:&nbsp&nbsp&nbsp&nbsp</h7>
									<input type="text" name="" id="zidingyi">
								</div>
								<!-- 自定义标签 -->
								<!-- 权限 -->
								<div class="si">
									<h7 id="quanxian">权限:&nbsp&nbsp&nbsp&nbsp</h7>
									<select id="city" class="select2">
										<option value="1">自己看</option>
										<option value="2">仅同城</option>
										<option value="3">全世界</option>
									</select>
								</div>
								<!-- 权限 -->
								<div class="si">
									<!-- 参与话题及发表 -->
									<input id="shi" type="checkbox" name="是" value="" checked>参加每日话题推送
									<!--提交按钮-->

								</div>
								<div id="bg2">
									<input id="push" type="button" name="" value="发表"> <img
										src="editor/images/bg4.png">
								</div>
							</div>
						</div>
						<!-- /.post-meta-box -->
					</div>
					<!--富文本框的展示-->
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
				<p class="copyright">Copyright &copy; 2018.公司名字 All rights
					reserved.</p>
			</div>
			<!-- /.container -->
		</footer>
		<!-- /.theme-footer -->
		<!--/footer-->

		<!-- Scroll Top Button -->
		<div id="toTop"></div>
		<!-- 返回到顶端 -->


		<!-- Optional JavaScript _____________________________  -->

		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<!-- Font Awesome -->
		<script src="editor/fonts/font-awesome/fontawesome-all.min.js"></script>
		<!-- COMMON SCRIPTS -->
		<script src="editor/js/jquery-2.2.4.min.js"></script>
		<script src="editor/js/common_scripts.js"></script>
		<script src="editor/js/main.js"></script>
		<!-- Map -->
		<!-- DATEPICKER  -->
		<script>
			//用户登录后的状态注销等
			$('input[name="dates"]').daterangepicker(
					{
						"singleDatePicker" : true,
						"autoApply" : true,
						parentEl : '#input_date',
						"linkedCalendars" : false,
						"showCustomRangeLabel" : false
					},
					function(start, end, label) {
						console.log('New date range selected: '
								+ start.format('YYYY-MM-DD') + ' to '
								+ end.format('YYYY-MM-DD')
								+ ' (predefined range: ' + label + ')');
					});
			//点击出现div，移开消失
			window.onload = function() {
				document.onclick = function(e) {
					e = e || window.event;
					var dom = e.srcElement || e.target;

					// if(dom.id != "dialog" && document.getElementById("dialog").style.display == "block") {
					// 	document.getElementById("dialog").style.display = "none";
					// }
				};
			};
			function openDialog(e) {
				document.getElementById("dialog").style.display = "block";
				e = e || window.event;
				if (+'\v1') {
					e.stopPropagation();
				} else {
					e.cancelBubble = true;
				}
			}
		</script>
		<!--editor script-->
		<script type="text/javascript" src="editor/js/wangEditor.js"></script>
		<!--<script type="text/javascript" src="../dist/js/wangEditor.min.js"></script>-->
		<script type="text/javascript">
			// 阻止输出log
			// wangEditor.config.printLog = false;
			var map = new wangEditor('map');
			var editor = new wangEditor('editor-trigger');
			// 上传图片
			editor.config.uploadImgUrl = '/upload';
			// 跨域上传
			// editor.config.uploadImgUrl = 'http://localhost:8012/upload';
			// 第三方上传
			// editor.config.customUpload = true;
			map.config.menus = [ 'location' ];
			editor.config.menus = [ 'bold',//加粗
			'underline',//下划线
			'italic',//斜体
			// 'strikethrough',//中划线
			'eraser',//橡皮擦
			'forecolor',//字体的颜色
			'bgcolor',//背景的颜色
			// 'quote',//引用
			'fontfamily',//字体
			'fontsize',//字号
			'head',//标题
			// 'unorderlist',//无序列表
			// 'orderlist',//有序列表
			// 'alignleft',//左
			// 'aligncenter',//中
			// 'alignright',//右居中
			// '|',
			// 'link',//链接
			// 'unlink',//取消链接
			// 'table',//插入表格
			// 'emotion',//表情
			// '|',
			// 'img',//图片
			// 'video',//视频
			// 'location',//地址
			// 'insertcode',//插入代码
			'undo',//撤销
			// 'redo',//重复
			// 'fullscreen'//全屏
			];

			// onchange 事件
			// editor.onchange = function () {
			//     console.log(this.$txt.html());
			// };

			// 取消过滤js
			// editor.config.jsFilter = false;

			// 取消粘贴过来
			// editor.config.pasteFilter = false;

			// 设置 z-index
			// editor.config.zindex = 20000;

			// 语言
			// editor.config.lang = wangEditor.langs['en'];

			// 自定义菜单UI
			// editor.UI.menus.bold = {
			//     normal: '<button style="font-size:20px; margin-top:5px;">B</button>',
			//     selected: '.selected'
			// };
			// editor.UI.menus.italic = {
			//     normal: '<button style="font-size:20px; margin-top:5px;">I</button>',
			//     selected: '<button style="font-size:20px; margin-top:5px;"><i>I</i></button>'
			// };
			map.create();
			editor.create();
		</script>
		<!--收藏js-->

		<!-- 详细地址js -->
		<script type="text/javascript" src="editor/js/address.js"></script>
		<script type="text/javascript">
			addressInit('cmbProvince', 'cmbCity', 'cmbArea');
		</script>




		<!-- INPUT QUANTITY  -->


		<!-- INSTAGRAM FEED  -->
		<!-- 这个地方报错我就给注释掉了 -->
		<!-- <script>
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
</script> -->

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
