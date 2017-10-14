<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки">

    <jsp:attribute name="head"/>

    <jsp:attribute name="pageBody">

    <nav id="topmenu">
        <ul>
            <li><a class="a" href="${pageContext.request.contextPath}/shop">Магазин</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/delivery">Доставка</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/about">Контакты</a></li>
        </ul>
    </nav>

        <div id="content">

            <p>Каждая меховая игрушка, выполненная вручную, имеет свой неповторимый облик, который не&nbsp;оставит вас
                равнодушными.
                <br>Модели игрушек постоянно обновляются. Следите за&nbsp;изменениями на&nbsp;нашем сайте.</p>
            <br><br>
            <c:forEach items="${resp}" var="i" varStatus="loop">
                <div class="toy">
                    <div class="block">
                        <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">
                            <img src="${pageContext.request.contextPath}/static/pic/art/${i.getArticle()}/${i.getImg01_sm()}" width=200>
                        </a>
                        <br>
                        <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}" class=link>${i.getTitle()}</a>
                    </div>
                    <div class="clear"></div>
                    <a href="#" item="${i.getArticle()}" class="buyitem">в корзину</a>
                    <div class="price">
                        ${i.getPrice()} <span>руб.</span>
                    </div>
                </div>
            </c:forEach>

        </div>

    </jsp:attribute>

</t:skeleton>