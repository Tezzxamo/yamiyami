<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script>
	//检验手机号
	function checkTel(){
		var c_telephone = document.getElementById("c_telephone");
		var error_tel = document.getElementById("error_tel");
		console.log(c_telephone.value);
		var pattern = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/;
		if(!pattern.test(c_telephone.value)){
			error_tel.innerHTML="手机号格式有误，请重新输入";
		}
		else{
			error_tel.innerHTML="";
			return true;
		}
	}

/*	function vip() {
		var c_vip = document.getElementById("c_vip");
		c_vip.value =
		if (c_vip.value==0){
			c_vip.value("非VIP");
			return true;
		}else if (c_vip.value==1){
			c_vip.value("VIP");
			return  true;
		}
	}*/


</script>

<%--
	<script type="text/javascript">

		//对手机号进行校验

		function phoneChick(){
//    获取输入框
			var phoneInput = $("#c_telephone");
//    获取输入框内容
			var phonenumber = $("#c_telephone").val();


//    验证手机号码格式
			function isPoneAvailable(phoneInput){
				var myreg=/^[1][3,4,5,6,7,8,9][0-9]{9}$/;
				var error_tel = $("#error_tel");
				if (!myreg.test(phonenumber)) {
//$("#phone_msg").html("手机号不正确！");
					error_tel.innerHTML="手机号格式有误，请重新输入";
					$("#phonenumber").val("");
					return false;
				}else{
//$("#phone_msg").html("手机号正确！");
					error_tel.innerHTML="";
					return true;
				}
			}
			isPoneAvailable();
		}
	</script>--%>

<section class="layui-larry-box">
	<div class="larry-personal">
		<header class="larry-personal-tit">
			<span>个人信息</span>
		</header><!-- /header -->
		<div class="larry-personal-body clearfix">
			<form class="layui-form col-lg-5" action="${pageContext.request.contextPath}/customer/updatePerson" method="post">

				<div class="layui-form-item">
					<label class="layui-form-label">用户编号</label>
					<div class="layui-input-block">
						<input type="text" name="c_id"  autocomplete="off"  class="layui-input layui-disabled" value="${loginCustomer.getC_id()}" READONLY >
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">VIP</label>
						<div class="layui-input-block">
							<input type="text" id="c_vip" name="c_vip"  autocomplete="off" class="layui-input layui-disabled" value="${loginCustomer.getC_vip()}" READONLY >

						</div>
					</div>

				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-block">  
						<input type="text" name="c_username"  autocomplete="off"  class="layui-input" value="${loginCustomer.getC_name()}"  >
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">手机号码</label>
					<div class="layui-input-block">
						<input type="text" name="c_telephone" id="c_telephone" class="layui-input" placeholder="输入手机号码" onblur="checkTel()" value="${loginCustomer.getC_telephone()}">
						<label  class="error"  style="color:red" id="error_tel"/>
					</div>
				</div>
					<div class="layui-form-item">
						<label class="layui-form-label">性别</label>
						<div class="layui-input-block">
							<input type="radio"  name="c_sex" value="男" title="男" checked=""><div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon"></i><span>男</span></div>
							<input type="radio"  name="c_sex" value="女" title="女"><div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><span>女</span></div>
						</div>
					</div>
				<div class="layui-form-item">
					<label class="layui-form-label">生日</label>
					<div class="layui-input-block">
						<input type="date" name="c_birthday"  autocomplete="off" class="layui-input" value="${birthday}">
					</div>
				</div>
					<div class="layui-form-item">
						<label class="layui-form-label">年龄</label>
						<div class="layui-input-block">
							<input type="text" name="c_age"  autocomplete="off" class="layui-input layui-disabled" value="${loginCustomer.getC_age()}" readonly>
						</div>
					</div>
				<div class="layui-form-item">
					<label class="layui-form-label">地址</label>
					<div class="layui-input-block">
						<input type="text" name="c_address"  autocomplete="off" class="layui-input" value="${loginCustomer.getC_address()}" >
					</div>
				</div>
				<!--<div class="layui-form-item">
					<label class="layui-form-label">修改头像</label>
					<div class="layui-input-block">
						<input type="file" name="file" class="layui-upload-file">
					</div>
				</div>-->
				<!--<div class="layui-form-item">
					<label class="layui-form-label">界面语言</label>
					<div class="layui-input-block">
						<select name="interest" lay-filter="aihao">
							<option value=""></option>
							<option value="0" selected="selected">中文</option>
							<option value="1">英文</option>
						</select>
					</div>
				</div>-->

				<!--<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">座右铭</label>
					<div class="layui-input-block">
						<textarea placeholder="既然选择了远方，便只顾风雨兼程；路漫漫其修远兮，吾将上下而求索" value="" class="layui-textarea"></textarea>
					</div>
				</div>-->
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" >立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
				</div>
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="/common/layui/layui.js"></script>
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
</script>
</body>
</html>