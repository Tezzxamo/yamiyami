<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<meta name="description" content="YAMIYAMI">
<meta name="author" content="YAMIYAMI">
<link href="../css/css.css" rel="stylesheet">
<link rel="stylesheet" href="../css/lightbox.css" type="text/css" media="screen" />

<title>YAMIYAMI</title>
</head>
<body cur="1" style="background-image:url(../images/menu-bg.jpg)">
    <div class="top">
      <div class="header">
        <div class="wrap clearfix pr">
          <a href="../qiantai/main.jsp" class="logo"><em></em><i></i><span></span></a>
          <ul class="nav fr">
            <li>
              <a href="../qiantai/about.jsp">餐厅介绍</a>
                <ul class="slide-nav">
                    <li><a href="../qiantai/about.jsp">成长历程</a></li>
                    <li><a href="../qiantai/founder.jsp">创始人介绍</a></li>
                    <%--<li><a href="../about.jsp">团队介绍</a></li>--%>
                </ul>
            </li>
            <li>
              <a href="western-food.jsp">我们的菜单</a>
                <ul class="slide-nav">
                    <li><a href="/Menu/western">西餐</a></li>
                    <li><a href="/Menu/drink">饮品</a></li>
                    <li><a href="/Menu/chinese">主菜</a></li>
                    <li><a href="/Menu/dessert">甜点</a></li>
                    <li><a href="/Menu/seafood">海鲜</a></li>
                    <li><a href="/Menu/food">主食</a></li>
                </ul>
            </li>
              <li><a href="../qiantai/Events.jsp">活动预告</a></li>

              <li>
                  <a href="../qiantai/news.jsp">新闻资讯</a>
                  <ul class="slide-nav">
                      <li><a href="../qiantai/news.jsp">企业快报</a></li>
                      <%--<li><a href="news.jsp">最新资讯</a></li>
                      <li><a href="news.jsp">新店开张</a></li>--%>
                  </ul>
              </li>
              <li>
                  <a href="../qiantai/profile.jsp">YAMIYAMI在中国</a>
                  <ul class="slide-nav">
                      <li><a href="../qiantai/profile.jsp">西安理工店</a></li>
                      <%--<li><a href="profile.jsp">北京理工店</a></li>
                      <li><a href="profile.jsp">北京大学店</a></li>--%>
                  </ul>
              </li>
              <li>
                  <a href="../qiantai/contact.jsp">联系我们</a>
                  <ul class="slide-nav">
                      <li><a href="../qiantai/contact.jsp">西安理工店</a></li>
                      <%--<li><a href="contact.jsp">北京理工店</a></li>
                      <li><a href="contact.jsp">北京大学店</a></li>--%>
                  </ul>
              </li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="wrap">
      <div class="w-title tc">
        <p class="title">Western</p>
        <div class="name">
          <span><em></em>西餐<i></i></span>
        </div>
      </div>
	  				
     <div class="menu-wrap">
        <div class="menubox clearfix">
        	 <table>
        <thead>
            <tr>
                <th class="tdone">序号</th>
                <th class="tdtwo">商品名称</th>
                <th class="timg">参考图片</th>
                <th class="tdes">介绍</th>
                <th class="tdthree">数量</th>
                <th class="tdfour">单价</th>
                <th class="tdfive">小计</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach items="${menuList}" var="menu">
                        <div>
                            <tr class="trclass">

                                <td class="tdone xuhao"><c:out value="${menu.getM_id()}"></c:out></td>
                                <td class="tdtwo "><c:out value="${menu.getM_name()}"/></td>
                                <td class="img"><img src="${menu.getM_img()}"></td>
                                <td class="des"><span><c:out value="${menu.getM_describe()}"/></span></td>
                                <td class="tdthree"><span class="jiajie"><input type="button" value="-"><span class="num">0</span><input type="button" value="+"></span></td>
                                <td class="tdfour"><span>单价：</span><span class="unit"><c:out value="${menu.getM_price()}"/></span></td>
                                <td class="tdfive"><span>小计：</span><span class="subtal">0</span>元</td>
                            </tr>
                        </div>
                        </c:forEach>
            
            <footer>
              <div class="ui_footer">
                <div class="f_number" id="end" onclick="slder('#slder_01','#slder_bg_01')">
                	 <span class="goods_num">0</span>
                	
                  <div class="f_number_num" id="f_number_num">0</div>
                </div>
                <div class="f_money">共计<strong><span class="pricetal">0</span></strong>元</div>
                <div class="f_btn"><a href="/qiantai/payment.jsp" onclick="" >提交订单</a></div>
              </div>
            </footer>
            	
        </tbody>
    </table>
       
        </div>
<%--        <div class="page tc clearfix"><a href="#" class="prev"><em></em>上一页</a><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a>...<a href="#">23</a><a href="#" class="next">下一页<em></em></a></div>--%>
      </div>
        <div class="pageDiv">
            <%@include file="/Page.jsp" %>
        </div>
      <div class="foot">版权所有·YAMIYAMI餐厅</div>
      
    </div>
       
 
</body>
<script type="text/javascript">
	window.onload = function(){
    function cart(){
        this.abtn = document.querySelectorAll('input');
        this.ogood_num = document.querySelector('.goods_num');
        this.opricetal = document.querySelector('.pricetal');
        this.opricest = document.querySelector('.pricest');
        this.totalnum = 0;
    };
     //小计:  商品数量 * 商品单价
    cart.prototype.getsubtotal = function(goodsnum,unitprice){
        return parseInt(goodsnum) * parseFloat(unitprice) ;
    };
    // 计算商品的总计花费
    cart.prototype.gettotal = function(){
        var asubtotal = document.querySelectorAll('.subtal');
        var res = 0;
        for(var i=0,len=asubtotal.length;i<len;i++){
            res += parseFloat(asubtotal[i].innerHTML);
        };   
        return res;
    };
    // 寻找购物车中已经选中的产品的最大单价
    cart.prototype.compareMaxunit = function(){
        var anum = document.querySelectorAll('.num');
        var aunit = document.querySelectorAll('.unit');
        var temp = 0;
        for(var i=0,len=anum.length;i<len;i++){
            if(anum[i].innerHTML!=0){
                if(temp<parseFloat(aunit[i].innerHTML)){
                    temp = parseFloat(aunit[i].innerHTML);
                }
            }
        };
        return temp;
    };
    // 点击“+”号按钮触发的购物车商品数量，花费，最大价格的变动
    cart.prototype.plus = function(obtn){
        var onum = obtn.parentNode.querySelector('.num');
        var n = parseInt(onum.innerHTML);
        onum.innerHTML = ++n ;
        this.totalnum++;
        var oUnit = obtn.parentNode.parentNode.parentNode.querySelector('.unit');
        var osubtotal = obtn.parentNode.parentNode.parentNode.querySelector('.subtal');
        osubtotal.innerHTML = this.getsubtotal(onum.innerHTML,oUnit.innerHTML);
        this.ogood_num.innerHTML = this.totalnum;
        this.opricetal.innerHTML = this.gettotal();
        this.opricest.innerHTML = this.compareMaxunit();
    };
    // 点击“-”号按钮触发的购物车商品数量，花费，最大价格的变动
     cart.prototype.minus = function(obtn){
        var onum = obtn.parentNode.querySelector('.num');
        if(parseInt(onum.innerHTML)>0){
            var n = parseInt(onum.innerHTML);
            onum.innerHTML = --n ;
            this.totalnum--;
            var oUnit = obtn.parentNode.parentNode.parentNode.querySelector('.unit');
            var osubtotal = obtn.parentNode.parentNode.parentNode.querySelector('.subtal');
            osubtotal.innerHTML = this.getsubtotal(onum.innerHTML,oUnit.innerHTML);
            this.ogood_num.innerHTML = this.totalnum;
            this.opricetal.innerHTML = this.gettotal();
            this.opricest.innerHTML = this.compareMaxunit();
        }  
    };
    // 获取已买商品的总计数量
    cart.prototype.getNumbertal = function(){
         var anum = document.querySelectorAll('.num');
         var res_num = 0;
         for(var i =0;i<anum.length;i++){
             res_num += parseInt( anum[i].innerHTML ) ;
         }
         return res_num ;
    }
    // 删除按钮触发的购物车商品数量，花费，最大价格的变动
    cart.prototype.del = function(obtn){
        var odel = obtn.parentNode.parentNode;
        var oparent = odel.parentNode;
        oparent.removeChild(odel);
        this.ogood_num.innerHTML = this.getNumbertal();
        this.opricetal.innerHTML = this.gettotal();
        this.opricest.innerHTML = this.compareMaxunit();
        this.xuhaosort();
    }
    // 购物车序号重新排序
    cart.prototype.xuhaosort = function(){
        var axuhao = document.querySelectorAll('.xuhao');
        for(var i=0,len=axuhao.length;i<len;i++){
            axuhao[i].innerHTML = i+1;
        }
    }
    // 绑定“+”，“-”，删除按钮的点击事件
    cart.prototype.bind = function(){
        var that = this ;
        for(var i=0;i<this.abtn.length;i++){
            if(i%2 !=0){
                this.abtn[i].onclick = function(){
                    that.plus(this);
                }
            }else{
                 this.abtn[i].onclick = function(){
                    that.minus(this);
                }
            }
        };
        var delbtn = document.querySelectorAll('.del');
        for(var i=0;i<delbtn.length;i++){
            delbtn[i].onclick = function(){
                that.del(this);
            }
        }
    };
    var oCart = new cart();
    oCart.bind();
}
</script>
<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
<script src="boxjs/prototype.js" type="text/javascript"></script>
<script src="boxjs/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
<script src="boxjs/lightbox.js" type="text/javascript"></script>
</html>