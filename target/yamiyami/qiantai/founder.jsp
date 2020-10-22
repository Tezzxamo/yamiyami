<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="YAMIYAMI">
    <meta name="author" content="YAMIYAMI">
    <link href="../css/css.css" rel="stylesheet">
    <link href="../css/slick.css" rel="stylesheet">
    <title>YAMIYAMI</title>
</head>
<body style="background-image:url(../images/aboutbg1.jpg)">
<div class="top">
    <div class="header">
        <div class="wrap clearfix pr">
            <a href="main.jsp" class="logo"><em></em><i></i><span></span></a>
            <ul class="nav fr">
                <li>
                    <a href="about.jsp">餐厅介绍</a>
                    <ul class="slide-nav">
                        <li><a href="about.jsp">成长历程</a></li>
                        <li><a href="founder.jsp">创始人介绍</a></li>
                        <%--<li><a href="about.jsp">团队介绍</a></li>--%>
                    </ul>
                </li>
                <li>
                    <a href="../order/western-food.jsp">我们的菜单</a>
                    <ul class="slide-nav">
                        <li><a href="/Menu/western">西餐</a></li>
                        <li><a href="/Menu/drink">饮品</a></li>
                        <li><a href="/Menu/chinese">主菜</a></li>
                        <li><a href="/Menu/dessert">甜点</a></li>
                        <li><a href="/Menu/seafood">海鲜</a></li>
                        <li><a href="/Menu/food">主食</a></li>
                    </ul>
                </li>
                <li><a href="Events.jsp">活动预告</a></li>

                <li>
                    <a href="news.jsp">新闻资讯</a>
                    <ul class="slide-nav">
                        <li><a href="news.jsp">企业快报</a></li>
                        <%--<li><a href="news.jsp">最新资讯</a></li>
                        <li><a href="news.jsp">新店开张</a></li>--%>
                    </ul>
                </li>

                <li>
                    <a href="profile.jsp">YAMIYAMI在中国</a>
                    <ul class="slide-nav">
                        <li><a href="profile.jsp">西安理工店</a></li>
                        <%--<li><a href="profile.jsp">北京理工店</a></li>
                        <li><a href="profile.jsp">北京大学店</a></li>--%>
                    </ul>
                </li>
                <li>
                    <a href="contact.jsp">联系我们</a>
                    <ul class="slide-nav">
                        <li><a href="contact.jsp">西安理工店</a></li>
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
        <p class="title">Founder</p>
        <div class="name">
            <span><em></em>创始人<i></i></span>
        </div>
    </div>

    <div class="conwrap">
        <div class="con-top bort">创始人姓名</div>
        <div class="con-bd">
            <div class="txt clearfix">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;西安理工大学实习小组制&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="52%" align="center" valign="bottom"><img src="../images/logo3.png" ></td>
                        <td width="48%" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赵子旭 ；刘万波 ；李雅萌；孟嘉霖；闫馨怡&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="con-bottom"></div>
    </div>

    <div class="foot">版权所有·YAMIYAMI餐厅</div>

</div>


<a href="#" class="link-prev"></a>
<a href="#" class="link-next"></a>
</body>
<script src="../js/jquery.js"></script>
<script src="../js/Action.js"></script>
<script src="../js/slick.js"></script>
<script>
    $(function(){
        $('.slide-show').slick({
            dots: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
        });
    })
</script>
</html>