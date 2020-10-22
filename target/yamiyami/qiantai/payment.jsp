<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>UI Card Payment Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="UI Card Payment template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="/css/pay.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<div class="mainw3-agile">
		<h1>账单结算</h1>
		<div class="main-agileinfo">
			<div class="w3pay-left">
				<div class="w3pay-left-text">
					<h3>手机支付</h3> 
					<img src="/images/bg22.jpg" alt=""/>
					
				</div>	
				<h6><a href="#"><i class="fa fa-angle-double-left" aria-hidden="true"></i> 返回上页</a></h6>
			</div>	
			<div class="w3pay-right wthree-pay-grid">
				
				<div class="card-bounding agileits"> 
					
					<form action="#" method="post"> 
						<div class="card-details"> 
							<aside>用户名:</aside>
							<input type="text" name="name" placeholder="持卡人姓名" required=""/> 
						</div>	
						<aside>卡号:</aside>
						<div class="card-container">
							<div class="card-type"></div>
							<input type="text" name="card number" placeholder="16位卡号" onkeyup="$cc.validate(event)" required=""/>
							<div class="card-valid"><i class="fa fa-check" aria-hidden="true"></i></div>
						</div> 
						<div class="card-details agileits-w3layouts"> 
							<div class="cvv">
								<aside>安全码</aside>
								<input type="text" name="cvv" placeholder="XXX" maxlength="3" required=""/>
							</div> 
							<div class="clear">	</div>		
						</div>
						<input type="submit" value="立即支付"> 
					</form>  
				</div>
			</div>	
			<div class="clear">	</div>		
		</div>	
	</div>	
	<script src="js/creditCardValidator.js" type="text/javascript"></script>
</body>
</html>