<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="shop">

    <jsp:attribute name="head"/>

    <jsp:attribute name="pageBody">

    <div id="content">

        <p>Каждая меховая игрушка, выполненная вручную, имеет свой неповторимый облик, который не оставит вас равнодушными.
            <br>Модели игрушек постоянно обновляются. Следите за изменениями на нашем сайте.</p>
        <br><br>
        <c:forEach items="${list}" var="i" varStatus="loop">
            <div class="toy">
                <div class="block">
                    <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">
                        <img src="${pageContext.request.contextPath}/static/pic/art/${i.getArticle()}/${i.getImg01_sm()}" width=200>
                    </a>
                    <br>
                    <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}" class=link>${i.getTitle()}</a>
                </div>
                <div class="clear"></div>
                <a href="#" class="buyitem" onclick="addItemToTheShoppingCart(${i.getArticle()},${i.getPrice()})">в корзину</a>
                <div class="price">${i.getPrice()} <span>руб.</span></div>
            </div>
        </c:forEach>

    </div>

    </jsp:attribute>

</t:skeleton>