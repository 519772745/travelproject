<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ch" class="no-js">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<title>微旅Wetrip-登录</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/loginAndRegister/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/loginAndRegister/css/demo.css" />
	<!--必要样式-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/loginAndRegister/css/component.css" />
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/loginAndRegister/img/icon.ico" type="image/x-icon">
</head>
<!-- onload="createCode()"一开始加载的时候就生成验证码的方法-->
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3>欢迎你</h3>
					<form action="login" name="f" method="post">

						<div class="input_outer">
							<span class="u_user1"></span>
							<input name="email" class="text" id="userEmail" style="color: #FFFFFF !important" type="text" placeholder="请输入邮箱" onblur="checkEmail()" onfocus="xiaoshiEmail()"/>							
							<div id="email" ></div>
							
						</div>

						<div class="input_outer">
							<span class="us_uer"></span>
							<input name="logPass" id="logPass" class="text" style="color: #FFFFFF !important;" value="" type="password" placeholder="请输入密码" onblur="checkPassword()" onfocus="xiaoshiPassword()">
							<div id="pas"></div>	
						</div>

						<div class="input_outer1">
							<span class="us_uer2"></span>
							<div class="yan" id="searchMsg" style="display:none" ></div>
							<input name="rand" id="text1" style="color: #FFFFFF !important; position:absolute; z-index:100;" type="text" placeholder="请输入验证码" onblur="but()" onfocus="xiaoshi3()">
							<div id="img1">
								<div id="yanzhengimg"><img src="${pageContext.request.contextPath}/createcode"/></div>							
								<a href="##" id="shuaxin" onclick="createCode()" style="font-size:14px; color:#eaeaea">刷新验证码</a>
							</div>
							<div id="yanzheng"></div>
						</div>
						<div class="mb2"><input type="submit" value="登录" class="act-but submit" style="color: #FFFFFF"></div>
						<div id="wei">
							<a href="register.jsp" style="color: white">注册</a>
							<a href="##" style="color: white">|忘记密码？</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div><!-- /container -->
	<script src="${pageContext.request.contextPath }/loginAndRegister/js/TweenLite.min.js"></script>
	<script src="${pageContext.request.contextPath }/loginAndRegister/js/EasePack.min.js"></script>
	<script src="${pageContext.request.contextPath }/loginAndRegister/js/rAF.js"></script>
	<script src="${pageContext.request.contextPath }/loginAndRegister/js/demo-1.js"></script>
	<script src="${pageContext.request.contextPath }/loginAndRegister/js/LoginAndRegister.js"></script>
</body>
</html>