<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки">

    <jsp:attribute name="head"/>

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

            <h1>Оформление заказа</h1>

        </div>

    </jsp:attribute>

</t:skeleton>
