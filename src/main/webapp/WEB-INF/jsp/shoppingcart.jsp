<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${shoppingcart}" var="item">
    <c:out value="${item.getArticle()}"/>
</c:forEach>

<%--
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <c:set var="la" value="${shoppingcart.size()}"/>

        <h1>Корзина</h1>
        <c:out value="lala = ${lala}"/>
        <c:out value="la = ${la}"/>
        <c:out value="shoppingcart = ${shoppingcart}"/>
        <c:forEach items="${shoppingcart}" var="item" varStatus="loop">
            <c:out value="${item.getArticle()}"/>
        </c:forEach>
        &lt;%&ndash;<t:order_items_list
                shoppingcart="${shoppingcart}"
                path="${path}"
                orderFinal="false"/>&ndash;%&gt;

        <div style="margin-top: 40px; margin-bottom: 40px;">
            <a class="orderbutton" href="${path}/orderdelivery">Рассчитать стоимость доставки</a>
            <a class="orderbutton" href="#"
               onclick="sendShoppingCartToTheServer('/orderfinal')">Оформить заказ</a>
        </div>

    </jsp:attribute>

</t:skeleton>
--%>
