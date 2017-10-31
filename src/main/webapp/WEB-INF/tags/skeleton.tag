<%@tag description="just template" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" required="true" %>
<%@attribute name="topmenuMarker" required="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="content" fragment="true" required="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Игрушки и аксессуары из натурального меха и кожи"/>
    <meta name="keywords" content="Игрушки и аксессуары из натурального меха и кожи"/>

    <link rel="icon" href="${pageContext.request.contextPath}/static/pic/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/pic/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css" type="text/css"/>

    <script src="${pageContext.request.contextPath}/static/js/shoppingCart.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/orderDelivery.js"></script>

    <script>

        window.onload = function () {

            if (localStorage.contextPath === undefined)
                localStorage.setItem("contextPath", "${pageContext.request.contextPath}");

            controlShoppingCart();
            controlOrderDelivery();
        }

    </script>

    <jsp:invoke fragment="head"/>

</head>
<body style="background: url(${pageContext.request.contextPath}/static/pic/bg.gif) no-repeat left top #150b09; background-position: 0px 0;">

<div class="page">

    <header class="top">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/">
                <img src="${pageContext.request.contextPath}/static/pic/logo.png" alt="">
            </a>
        </div>
        <div class="orderBlock">
            <div class="shoppingCartBlock"></div>
            <div class="orderDeliveryBlock"></div>
        </div>
        <div class="clear"></div>
    </header>

    <t:topmenu marked="${topmenuMarker}"/>

    <div class="content">
        <jsp:invoke fragment="content"/>
    </div>

    <div class="footer">
        <strong>ARUMA ®&nbsp;2005&minus;2017</strong><br>Эксклюзивные подарки из&nbsp;натурального меха<br>
    </div>
</div>

</body>
</html>