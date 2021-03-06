<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LarryBlogCMS-Home</title>
  <meta name="renderer" content="webkit"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">  
  <meta name="format-detection" content="telephone=no"> 
	<link rel="stylesheet" type="text/css" href="/common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="/common/bootstrap/css/bootstrap.css" media="all">
	<link rel="stylesheet" type="text/css" href="/common/global.css">
	<link rel="stylesheet" type="text/css" href="/css1/main.css" media="all">
</head>
<body>
<section class="larry-wrapper">
    <!-- overview -->
	<div class="row state-overview">
		<div class="col-lg-3 col-sm-6 layui-anim layui-anim-up">
			<section class="panel">
				<div class="symbol userblue layui-anim layui-anim-rotate"> <i class="iconpx-users"></i>
				</div>
				<div class="value">
					<a href="#">
						<h1 id="count1">YAMIYAMI</h1>
					</a>
					<p>用户名：${loginCustomer.getC_name()}</p>
				</div>
			</section>
		</div>
		<div class="col-lg-3 col-sm-6 layui-anim layui-anim-up">
			<section class="panel">
				<div class="symbol commred layui-anim layui-anim-rotate"> <i class="iconpx-user-add"></i>
				</div>
				<div class="value">
					<a href="#">
						<h1 id="count2">2</h1>
					</a>
					<p>订单总量</p>
				</div>
			</section>
		</div>
		<%--<div class="col-lg-3 col-sm-6 layui-anim layui-anim-up">
			<section class="panel">
				<div class="symbol articlegreen layui-anim layui-anim-rotate">
					<i class="iconpx-file-word-o"></i>
				</div>
				<div class="value">
					<a href="#">
						<h1 id="count3">2017-4-10</h1>
					</a>
					<p>注册时间</p>
				</div>
			</section>
		</div>--%>
		<%--<div class="col-lg-3 col-sm-6 layui-anim layui-anim-up">
			<section class="panel">
				<div class="symbol rsswet layui-anim layui-anim-rotate">
					<i class="iconpx-check-circle"></i>
				</div>
				<div class="value">
					<a href="#">
						<h1 id="count4">青铜VIP</h1>
					</a>
					<p>会员级别</p>
				</div>
			</section>
		</div>--%>
	</div>
	<!-- overview end -->
	<div class="row">
		<div class="col-lg-6">
			<section class="panel">
				<header class="panel-heading bm0">
					<span class='span-title'>YAMIYAMI信息</span>
					<span class="tools pull-right"><a href="javascript:;" class="iconpx-chevron-down"></a></span>
				</header>
				<div class="panel-body" >
					<table class="table table-hover personal-task">
                         <tbody>
                         	<tr>
                         		<td>
                                <strong>当前登录用户</strong>： <span class="current_user">${loginCustomer.getC_name()}</span>

                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                         			<strong>版本信息</strong>： 版本名称：<a href="http://www.larrycms.com">YAMIYAMI</a> 版本号: V1.0000

                         		</td>
                         		<td>

                         		</td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>开发团队</strong>： YAMIYAMI开发团队
                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>团队成员</strong>：Tethamo(赵子旭)
                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>团队成员</strong>：BOBO Liu(刘万波)
                                </td>
                                <td></td>
                         	</tr>
                        
                         	<tr>
                         		<td>
                                <strong>团队成员</strong>：Kristen(孟嘉霖)
                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>团队成员</strong>：Nancy(李雅萌)
                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>团队成员</strong>：Carrie(闫馨怡)
                                </td>
                                <td></td>
                         	</tr>
                         	<tr>
                         		<td>
                                <strong>网站域名</strong>：........
                                </td>
                                <td></td>
                         	</tr>
                         	
                         	
                         </tbody>
					</table>
				</div>
			</section>
      <!-- 网站信息统计｛SEO数据统计｝ -->
      <!--<section class="panel">
                  <header class="panel-heading bm0">
                       <span class='span-title'>网站信息统计｛SEO数据统计｝</span>
                       <span class="tools pull-right"><a href="javascript:;" class="iconpx-chevron-down"></a></span>
                  </header>
                  <div class="panel-body laery-seo-box">
                        <div class="larry-seo-stats" id="larry-seo-stats"></div>
                  </div>
      </section>-->
		</div>
		<%--<div class="col-lg-6">
		     <!-- 快捷操作 -->
             <section class="panel">
                  <header class="panel-heading bm0">
                        <span class='span-title'>快捷操作</span>
                        <span class="tools pull-right"><a href="javascript:;" class="iconpx-chevron-down"></a></span>
                  </header>
                  <div class="panel-body">
                        <table class="table table-hover personal-task shortcut">
                            <tr>
                            	<td>
                            		<div class="c1">1</div>
                            		<div class="c2">2</div>
                            		<br>
                            	</td>
                            </tr>
                        </table>
                  </div>
             </section>
          <!-- 系统公告 -->
             <section class="panel">
                 <header class="panel-heading bm0">
                        <span class='span-title'>系统公告</span>
                        <span class="tools pull-right"><a href="javascript:;" class="iconpx-chevron-down"></a></span>
                  </header>
                  <div class="panel-body">
                        <table class="table table-hover personal-task shortcut">
                            <tr>
                              <td>
                                <div class="c1">1</div>
                                <div class="c2">2</div>
                                <br>
                              </td>
                            </tr>
                        </table>
                  </div>
             </section>--%>

              <%--<!-- 最新文章 -->
             <section class="panel">
                  <header class="panel-heading bm0">
                        <span class='span-title'>热门美食推荐</span>
                        <span class="badge" style="background-color:#FF3333;"> new </span>
                        <span class="tools pull-right"><a href="javascript:;" class="iconpx-chevron-down"></a></span>
                  </header>
                  <div class="panel-body">
                       <table class="table table-hover personal-task">
                             <tbody>
                              <tr>
                                <td>原创</td>
                                <td>
                                  <a href="#" target="_blank">汪涵率众特工入侵地球 20160408</a>
                                </td>
                                <td class="col-md-5">阅读量：1350 &nbsp;&nbsp;&nbsp;&nbsp; 2016-04-11</td>
                              </tr>
                              <tr>
                                <td>原创</td>
                                <td>
                                  <a href="#" target="_blank">汪涵率众特工入侵地球 20160408</a>
                                </td>
                                <td class="col-md-5">阅读量：1350 &nbsp;&nbsp;&nbsp;&nbsp; 2016-04-11</td>
                              </tr>
                              <tr>
                                <td>原创</td>
                                <td>
                                  <a href="#" target="_blank">汪涵率众特工入侵地球 20160408</a>
                                </td>
                                <td class="col-md-5">阅读量：1350 &nbsp;&nbsp;&nbsp;&nbsp; 2016-04-11</td>
                              </tr>
                              <tr>
                                <td>原创</td>
                                <td>
                                  <a href="#" target="_blank">汪涵率众特工入侵地球 20160408</a>
                                </td>
                                <td class="col-md-5">阅读量：1350 &nbsp;&nbsp;&nbsp;&nbsp; 2016-04-11</td>
                              </tr>
                              <tr>
                                <td>原创</td>
                                <td>
                                  <a href="#" target="_blank">汪涵率众特工入侵地球 20160408</a>
                                </td>
                                <td class="col-md-5">阅读量：1350 &nbsp;&nbsp;&nbsp;&nbsp; 2016-04-11</td>
                              </tr>
                             </tbody>
                       </table>
                  </div>
             </section>--%>
		</div>
	</div>

</section>

<script type="text/javascript" src="/common/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['jquery','layer','element'],function(){
		window.jQuery = window.$ = layui.jquery;
		window.layer = layui.layer;
        window.element = layui.element();

       $('.panel .tools .iconpx-chevron-down').click(function(){
       	   var el = $(this).parents(".panel").children(".panel-body");
       	   if($(this).hasClass("iconpx-chevron-down")){
       	   	   $(this).removeClass("iconpx-chevron-down").addClass("iconpx-chevron-up");
       	   	   el.slideUp(200);
       	   }else{
       	   	   $(this).removeClass("iconpx-chevron-up").addClass("iconpx-chevron-down");
       	   	   el.slideDown(200);
       	   }
       })

	});
</script>
<script type="text/javascript" src="/jsplug/echarts.min.js"></script>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>