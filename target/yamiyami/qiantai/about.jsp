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
        <p class="title">Growth</p>
        <div class="name">
            <span><em></em>成长历程<i></i></span>
        </div>
    </div>

    <div class="conwrap">
        <div class="con-top">YAMIYAMI介绍</div>
        <div class="con-bd">
            <div class="slide-show">
                <div class="img"><img src="../images/display/1.jpg"></div>
                <div class="img"><img src="../upload/img2.jpg"></div>
                <div class="img"><img src="../upload/img3.jpg"></div>
                <div class="img"><img src="../upload/img4.jpg"></div>
            </div>
            <div class="txt clearfix">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;唯有美食不可辜负，做美食，我们是认真的~</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;提供各种各样的美食供您选择，轻轻一点即可加入购物车，</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;YAMIYAMI综合美食，由各种美味菜肴，囊括中餐，西餐各类美食，满足不同人群的需要。同时提供精美甜品，还有饮品供你选择。</p>
            </div>
        </div>
        <div class="con-bottom"></div>
    </div>

    <div class="foot">版权所有·YAMIYAMI餐厅 </div>

</div>

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