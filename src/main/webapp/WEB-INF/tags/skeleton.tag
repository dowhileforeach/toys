<%@tag description="just template" pageEncoding="UTF-8" %>
<%@attribute name="title" required="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="pageBody" fragment="true" required="true" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles3.css" type="text/css"/>

    <jsp:invoke fragment="head"/>

</head>
<body>

<div class="fix_block">

    <header class="top">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/static/pic/logo.png" alt=""></a>
        </div>
        <div class="basketblock">

            <div class="basket">
                <span basket-field="total-count">
                    <a href="${pageContext.request.contextPath}/basket/">Корзина</a> пуста
                </span>
                <span basket-field="total-sum" style="display:none"><br>
                    <a href="${pageContext.request.contextPath}/basket/" class="orderbutton">Оформить заказ</a>
				</span>
            </div>

        </div>

        <div class="txt">
            <p><strong>Тел.: +7(777)777-77-77</strong></p>
        </div>
        <div class="clear"></div>
    </header>

    <jsp:invoke fragment="pageBody"/>

    <div id="footer">
        <div style="float:right; width: 300px;">
            <p class=small> Разработка сайта: <a href="https://dwfe.ru" target="_blank">Do|While|For|Each</a></p>
        </div>
        <strong>ARUMA ®&nbsp;2005&minus;2017</strong> Эксклюзивные подарки из&nbsp;натурального меха<br>
        Тел.: +7(777)777-77-77,
        <nobr>E-mail:</nobr>
        <a href="mailto:some@email.com">some@email.com</a><br>
        <a href="/shop/">Магазин</a> |
        <a href="/about">Контакты</a> |
    </div>
</div>

</body>
</html>