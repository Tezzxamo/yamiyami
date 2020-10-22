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
			<span>店铺信息</span>
		</header><!-- /header -->
		<div class="larry-personal-body clearfix">
			<form class="layui-form col-lg-5" action="${pageContext.request.contextPath}/restaurant/updateRestaurant" method="post">
			<div class="layui-form-item">
					<label class="layui-form-label">店铺id</label>
					<div class="layui-input-block">  
						<input type="text" name="res_id"  autocomplete="off"  class="layui-input layui-disabled" value="${loginRestaurant.getRes_id()}" readonly  >
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">店铺名</label>
					<div class="layui-input-block">  
						<input type="text" name="res_name"  autocomplete="off"  class="layui-input" value="${loginRestaurant.getRes_name()}"  >
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">开关店</label>
					<div class="layui-input-block">
						<input type="radio"  name="res_status" value="1" title="开" checked=""><div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon"></i><span>男</span></div>
						<input type="radio"  name="res_status" value="0" title="关"><div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><span>女</span></div>
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">地址</label>
					<div class="layui-input-block">
						<input type="text" name="res_address"  autocomplete="off" class="layui-input" value="${loginRestaurant.getRes_address()}">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">联系电话</label>
					<div class="layui-input-block">
						<input type="tel" name="res_telephone"  id="res_telephone" autocomplete="off" class="layui-input" onblur="checkTel()" placeholder="输入手机号码" value="${loginRestaurant.getRes_telephone()}">
						<label class="error"  style="color:red" id="error_tel"></label>
					</div>
				   </div>

				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="../common/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['form','upload'],function(){
         var form = layui.form();
         layui.upload({ 
             url: '' ,//上传接口 
             success: function(res){
              //上传成功后的回调 
              console.log(res) 
            } 
         });

	});
	function checkTel(){
		   
            var res_telephone = document.getElementById("res_telephone");
            var error_tel = document.getElementById("error_tel");
            
            var pattern = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/;
            if(!pattern.test(res_telephone.value)){
                error_tel.innerHTML="手机号格式有误，请重新输入";
                //return false;
            }
            else{
            	error_tel.innerHTML="";
            	return true;
            }
		}
</script>
</body>
</html>