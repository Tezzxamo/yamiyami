<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bubble SignUp Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
<!-- Custom Theme files -->
<link href="../css2/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Eat well and live hard.</h1>
		<div class="main-agileinfo">
			<div class="agileits-top"> 
				<form action="${pageContext.request.contextPath}/customer/insert" method="post">
					<input class="text" type="text" name="c_name" id="=c_name" placeholder="用户名" required="">
					<div>
						<input class="text w3lpass" type="text" name="c_telephone" id="c_telephone" placeholder="手机号" required="" onblur="checkTel()">
						<label  class="error"  style="color:red" id="error_tel"/>
					</div>
					<input class="text" type="password"  id="c_password" name="c_password" placeholder="密码" required="">
					<input class="text w3lpass" type="password" id="password" name="password" placeholder="确认密码" required="">




					<%--<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>我同意相关协议</span>
						</label>
						<div class="clear"> </div>
					</div>--%>

					<input type="submit" id="sub" value="开启美食之旅">
				</form>
				<p>已有账户? <a href="/first/login"> 立即登录</a></p>
			</div>	 
		</div>	
		<!-- copyright -->
		<!-- //copyright -->
		<ul class="w3lsg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>	
	<!-- //main --> 
</body>
<script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#sub").click(function(){
			var pwd = $("input[name='c_password']").val();
			var cpwd = $("input[name='password']").val();
			if(pwd != cpwd){
				alert("两次密码不一致!");
				$("input[name='c_password']").val("");
				$("input[name='password']").val("");
				return false;
			}
		});
	});
</script>
<script type="text/javascript">
	//检验手机号
	function checkTel(){
		var c_telephone = document.getElementById("c_telephone");
		var error_tel = document.getElementById("error_tel");
		console.log(c_telephone.value);
		var pattern = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/;
		if(!pattern.test(c_telephone.value)){
			error_tel.innerHTML="手机号格式有误，请重新输入";
			c_telephone.value="";
		}
		else{
			error_tel.innerHTML="";
			return true;
		}
	}
</script>
</html>