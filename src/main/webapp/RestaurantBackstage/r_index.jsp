<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>店铺后台管理</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<!-- load css -->
	<link rel="stylesheet" type="text/css" href="../common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="../common/global.css" media="all">
	<link rel="stylesheet" type="text/css" href="../css1/adminstyle.css" media="all">
	
	
</head>
<body>
<div class="layui-layout layui-layout-admin" id="layui_layout">
	<!-- 顶部区域 -->
	<div class="layui-header header header-demo">
		<div class="layui-main">
		    <!-- logo区域 -->
			<div class="admin-logo-box">
				<a class="logo" href="http://www.kuxuebao.net" title="logo">餐厅管理系统</a>
				<div class="larry-side-menu">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</div>
            <!-- 顶级菜单区域 -->
           <!--
           	作者：offline
           	时间：2019-09-05
           	描述：
           <div class="layui-larry-menu">
                 <ul class="layui-nav clearfix">
                       <li class="layui-nav-item layui-this">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-wangzhanguanli"></i>内容管理</a>
                 	   </li>
                 	   <li class="layui-nav-item">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-weixin3"></i>微信公众</a>
                 	   </li>
                 	   <li class="layui-nav-item">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-ht_expand"></i>扩展模块</a>
                 	   </li>
                 </ul>
            </div> -->
            <!-- 右侧导航 -->
            <ul class="layui-nav larry-header-item">
            		<li class="layui-nav-item">
            			店铺管理员：${loginRestaurant.getRes_name()}
            		</li>

					<li class="layui-nav-item">
						<a href="/first/r_login">
                        <i class="iconfont icon-exit"></i>
						退出</a>
					</li>
            </ul>
		</div>
	</div>
	<!-- 左侧侧边导航开始 -->
	<div class="layui-side layui-side-bg layui-larry-side" id="larry-side">
        <div class="layui-side-scroll" id="larry-nav-side" lay-filter="side">
		
		<!-- 左侧菜单 -->
		<ul class="layui-nav layui-nav-tree">
			<li class="layui-nav-item layui-this">
				<a href="javascript:;" data-url="../RestaurantBackstage/r_main.jsp">
				    <i class="iconfont icon-home1" data-icon='icon-home1'></i>
					<span>后台首页</span>
				</a>
			</li>
			<!-- 个人信息 -->
			<li class="layui-nav-item">
				<a href="javascript:;"data-url="../RestaurantBackstage/r_personInfo.jsp">
					<i class="iconfont icon-jiaoseguanli" ></i>
					<span>店铺信息</span>
				</a>
             </li>      
              <li class="layui-nav-item">   
                    <a href="javascript:;" data-url="../RestaurantBackstage/r_changepwd.jsp">
                            <i class="iconfont icon-iconfuzhi01" data-icon='icon-iconfuzhi01'></i>
                       <span>修改密码</span>
                    </a>
			</li>
			<!-- 用户管理 -->
			<li class="layui-nav-item">
					<a href="javascript:;" data-url="../RestaurantBackstage/r_table.jsp">
					   <i class="iconfont icon-jiaoseguanli2" ></i>
					   <span>菜品管理</span>
					</a>
			</li>
               <li class="layui-nav-item">
			        <a href="javascript:;"  data-url="../RestaurantBackstage/r_table_1.jsp">
					   <i class="iconfont icon-jiaoseguanli4" data-icon='icon-jiaoseguanli4'></i>
					     <span>菜品添加</span>
				    </a>   
			  </li>
			
			<!-- 系统设置 -->
			<li class="layui-nav-item">
					<a href="/first/r_login">
					   <i class="iconfont icon-xitong" ></i>
					   <span>退出</span>

					</a>

				</li>
				
		</ul>
	    </div>
	</div>

	<!-- 左侧侧边导航结束 -->
	<!-- 右侧主体内容 -->
	<div class="layui-body" id="larry-body" style="bottom: 0;border-left: solid 2px #2299ee;">
		<div class="layui-tab layui-tab-card larry-tab-box" id="larry-tab" lay-filter="demo" lay-allowclose="true">
			<div class="go-left key-press pressKey" id="titleLeft" title="滚动至最右侧"><i class="larry-icon larry-weibiaoti6-copy"></i> </div>
			<ul class="layui-tab-title">
				<li class="layui-this" id="admin-home"><i class="iconfont icon-diannao1"></i><em>后台首页</em></li>
			</ul>
			<div class="go-right key-press pressKey" id="titleRight" title="滚动至最左侧"><i class="larry-icon larry-right"></i></div> 
			<%--<ul class="layui-nav closeBox">
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="iconfont icon-caozuo"></i> 页面操作</a>
				    <dl class="layui-nav-child">
					  <dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i> 刷新当前</a></dd>
				      <dd><a href="javascript:;" class="closePageOther"><i class="iconfont icon-prohibit"></i> 关闭其他</a></dd>
				      <dd><a href="javascript:;" class="closePageAll"><i class="iconfont icon-guanbi"></i> 关闭全部</a></dd>
				    </dl>
				  </li>
				</ul>--%>
			<div class="layui-tab-content" style="min-height: 150px; ">
				<div class="layui-tab-item layui-show">
					<iframe class="larry-iframe" data-id='0' src="../RestaurantBackstage/r_main.jsp"></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部区域 -->
	<div class="layui-footer layui-larry-foot" id="larry-footer">
		<div class="layui-mian">
			<p class="p-admin">
				<span>2019 &copy;</span>
				YAMIYAMI美食网,版权所有
			</p>
		</div>
	</div>
</div>
<!-- 加载js文件-->                                                                                                                                                                                           
	<script type="text/javascript" src="../common/layui/layui.js"></script> 
	<script type="text/javascript" src="../js/larry.js"></script>
	<script type="text/javascript" src="../js/index.js"></script>


</body>
</html>