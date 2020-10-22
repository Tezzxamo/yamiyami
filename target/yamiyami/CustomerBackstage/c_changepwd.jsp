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
			<form class="layui-form col-lg-4" method="post" action="${pageContext.request.contextPath}/customer/update">
			 	<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-block">  
					  	<input type="text"  id="c_name" name="c_name"  autocom1plete="off"  class="layui-input layui-disabled" value="${loginCustomer.getC_name()}" readonly >
						<%--使用disable导致无法传递c_name，使用readonly可以正常传递--%>
						<input type="hidden" id="c_id" name="c_id" value="${loginCustomer.getC_id()}">
						<%--不加name="c_id"无法传递c_id，加上以后可以正常传递--%>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">新密码</label>
					<div class="layui-input-block">  
					  	<input type="password" id="c_password"  name="c_password" autocomplete="off"  class="layui-input"  placeholder="请输入新密码" required>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">确认密码</label>
					<div class="layui-input-block">  
					  	<input type="password" id="password" name="password" autocomplete="off"  class="layui-input" value="" placeholder="请输入确认新密码" <%--onblur="check()"--%>>
					</div>
				</div>
				<div class="layui-form-item change-submit">
					<div class="layui-input-block">
						<button type="submit" id="sub" class="layui-btn" lay-submit="" lay-filter="demo1" >立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="/common/layui/layui.js"></script>
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
</body>
</html>