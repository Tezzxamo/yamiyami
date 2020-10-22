<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>新加信息</title>
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
	    <!--<div class="layui-tab">-->
           <div class="larry-personal-body clearfix">
			<%--<blockquote class="layui-elem-quote news_search">
				<div class="layui-btn-group">
				  <button class="layui-btn layui-btn-small layui-btn-normal"><i class="layui-icon">&#xe61f;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-danger"><i class="layui-icon">&#x1002;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-warm"><i class="layui-icon">&#xe601;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-disabled"><i class="layui-icon">&#xe642;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-primary"><i class="layui-icon">&#xe603;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-primary"><i class="layui-icon">&#xe602;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-primary"><i class="layui-icon">&#xe62d;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-primary"><i class="layui-icon">&#xe609;</i></button>
				  <button class="layui-btn layui-btn-small layui-btn-primary"><i class="layui-icon">&#xe640;</i></button>
				</div>
			</blockquote>--%>
            
		         <!-- 操作日志 -->
                <form class="layui-form col-lg-5" style="height: 410px"  action="" method="post">
				  <div class="layui-form-item">
				    <label class="layui-form-label">菜品名称</label>
				    <div class="layui-input-block">
				      <input type="text" name="m_name" required  lay-verify="required" placeholder="请输入名字" autocomplete="off" class="layui-input">
				    </div>
				   </div>
				 <div class="layui-form-item">
				    <label class="layui-form-label">价格</label>
				    <div class="layui-input-block">
				      <input type="text" name="m_price" required  lay-verify="required" placeholder="请输入价格" autocomplete="off" class="layui-input">
				    </div>
				   </div>
				  <div class="layui-form-item">
				  	<label class="layui-form-label">菜品种类</label>
				  	<div class="layui-input-block">
						<select name="category_id" lay-verify="">
	 						<option value="">请选择菜品种类</option>
	  						<option value="1">饮品</option>
	  						<option value="2">甜品/蛋糕</option>
	  						<option value="3">主食</option>
	  						<option value="4">热菜炒菜</option>
	  						<option value="5">西餐</option>
	  						<option value="6">海鲜</option>
						</select>     
					</div>
				 </div>
				 <div class="layui-form-item">
					<label class="layui-form-label">上传图片</label>
					<div class="layui-input-block">
						<input type="file" name="m_img">
					</div>
				 </div>
				 <div class="layui-form-item">
			      	 <label class="layui-form-label">菜品描述</label>
		       			<div class="layui-input-block">
				   		 <textarea placeholder="请输入文字" class="layui-textarea"></textarea>
			    	 </div>
		         </div>
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
				    </div>
				  </div>
				</form>
 

			     <!-- 完 -->
			   
		    </div>
		</div>
	
</section>
<script type="text/javascript" src="../common/layui/layui.js"></script>
<script type="text/javascript" src="../js/newslist.js"></script>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
</body>
</html>