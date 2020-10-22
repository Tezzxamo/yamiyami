<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人信息</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="stylesheet" type="text/css" href="../common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/bootstrap/css/bootstrap.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/global.css" media="all">
	<link rel="stylesheet" type="text/css" href="../css1/personal.css" media="all">
</head>
<body>
<section class="layui-larry-box">
	<div class="larry-personal">
		<header class="larry-personal-tit">
			<span>修改密码</span>
		</header><!-- /header -->
		<div class="larry-personal-body clearfix changepwd">
			<form class="layui-form col-lg-4" method="post" action="${pageContext.request.contextPath}/restaurant/updatePassword">
			 	<div class="layui-form-item">
					<label class="layui-form-label">店铺名</label>
					<div class="layui-input-block">  
					  	<input type="text" id="res_name" name="res_name"  autocomplete="off"  class="layui-input layui-disabled" value="${loginRestaurant.getRes_name()}"  readonly>
						<input type="hidden" id="res_id" name="res_id" value="${loginRestaurant.getRes_id()}">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">新密码</label>
					<div class="layui-input-block">  
					  	<input type="password" name="res_password"  autocomplete="off"  class="layui-input" value="" placeholder="请输入新密码">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">确认密码</label>
					<div class="layui-input-block">  
					  	<input type="password" name="password"  autocomplete="off"  class="layui-input" value="" placeholder="请输入确认新密码">
					</div>
				</div>
				<div class="layui-form-item change-submit">
					<div class="layui-input-block">
						<button class="layui-btn" id="sub" lay-submit="" lay-filter="demo1">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="../common/layui/layui.js"></script>
<script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	layui.use(['form','upload'],function(){
         var form = layui.form();
	});

	/**
	 * 密码验证
	 * 验证是否一致
	 */
	$(function(){
		$("#sub").click(function(){
			var pwd = $("input[name='res_password']").val();
			var cpwd = $("input[name='password']").val();
			if(pwd != cpwd){
				alert("两次密码不一致!");
				$("input[name='res_password']").val("");
				$("input[name='password']").val("");
				return false;
			}
		});
	});
</script>
</body>
</html>