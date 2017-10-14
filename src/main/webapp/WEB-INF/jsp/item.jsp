<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки">

    <jsp:attribute name="head">
        <script src="${pageContext.request.contextPath}/static/js/showphoto.js" type="text/javascript"></script>
    </jsp:attribute>

    <jsp:attribute name="pageBody">

    <nav id="topmenu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/shop">Магазин</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/delivery">Доставка</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/about">Контакты</a></li>
        </ul>
    </nav>

        <div id="content">

            <div class="left">
                <div id="fsClipper">
                    <div id="fsScreen" style="position: relative; top: -4;"></div>
                </div>
            </div>
            <div class="right">
                <h1>${item.getTitle()}</h1>
                <table class="shop" border=0 cellspacing=0>
                    <tr>
                        <td class="name">Артикул</td>
                        <td>${item.getArticle()}</td>
                    </tr>
                    <tr>
                        <td class="name">Мех </td>
                        <td>${item.getMaterial()}</td>
                    </tr>
                    <tr>
                        <td class="name">Цвет </td>
                        <td>${item.getColor()}</td>
                    </tr>
                </table>
                <p id="fsLinks">
                    <a href="/files/2697/photo2699.jpg" onclick="return Show_picture( '/files/2697/photo2699.jpg')"><img src="/files/2697/photo2699_sm.jpg" border=0></a>
                    <a href="/files/2697/photo2698.jpg" onclick="return Show_picture( '/files/2697/photo2698.jpg')"><img src="/files/2697/photo2698_sm.jpg" border=0></a>
                    <a href="/files/2697/photo2700.jpg" onclick="return Show_picture( '/files/2697/photo2700.jpg')"><img src="/files/2697/photo2700_sm.jpg" border=0></a>
                    <a href="/files/2697/photo2701.jpg" onclick="return Show_picture( '/files/2697/photo2701.jpg')"><img src="/files/2697/photo2701_sm.jpg" border=0></a>
                    <span id="fsControl_prev" class="fsControl" style="border: 0px">&larr;</span>
                    <span id="fsControl_next" class="fsControl"  style="border: 0px">&rarr;</span>
                </p>
                <br>
                <div style="float: right; width: 200px;">Цена: <span class="price">9 750 руб.</span>
                    <a href="#" item="2697" class="buyitem" style="margin-top: 20px;">в корзину</a>	</div>
                <div class="clear"></div>

        </div>

    </jsp:attribute>

</t:skeleton>