<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<!-- Head -->

<head>
    <title>登录</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Key Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="../css2/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
    <link rel="stylesheet" href="../css2/font-awesome.min.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->
	
	<!-- Google fonts -->
	<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
	<!-- Google fonts -->

</head>
<!-- //Head -->
<!-- Body -->

<body>

<section class="main">
	<div class="layer">
		
		<div class="bottom-grid">
			<div class="logo">
				<h1> <a href="/first/login"><span class="fa fa-key"></span> Yami</a></h1>
			</div>
			<div class="tip">
				
						<!--<a href="#" class="">Register</a>-->
						<span class="logan">There is nothing but food and love</span>
						<span class="logan">that we cannot fail to live up to.</span>
			
			</div>
		</div>
		<div class="content-w3ls">
			<div class="text-center icon">
 				<img src="../images/logo.png" class="logo">
			</div>
			<div class="content-bottom">
				<form action="${pageContext.request.contextPath}/r_login" method="post">
					<div style="color: yellow">${error}</div>
					<div class="field-group">
						<span class="fa fa-user" aria-hidden="true"></span>
						<div class="wthree-field">
							<input name="res_telephone" id="res_telephone" type="text"  placeholder="手机号登录" required>
						</div>
					</div>
					<div class="field-group">
						<span class="fa fa-lock" aria-hidden="true"></span>
						<div class="wthree-field">
							<input name="res_password" id="res_password" type="password" placeholder="密码">
						</div>
					</div>
					<div class="wthree-field">
						<button type="submit" class="btn">登录</button>
					</div>
					<ul class="list-login">
						<li class="switch-agileits">
							<label class="switch">
								<input type="checkbox">
								<span class="slider round"></span>
								记住密码
							</label>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/first/r_register" class="text-right">创建店铺</a>
						</li>
						<li class="clearfix"></li>
					</ul>
					
				</form>
			</div>
		</div>
    </div>
</section>

</body>
<!-- //Body -->
</html>
