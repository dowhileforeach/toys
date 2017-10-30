<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

        <h1>Оформление заказа</h1>

        <div class="left">
            <t:order_items_list shoppingcart="${shoppingcart}" path="${path}" orderFinal="true"/>
            <div class="center" style="margin-top: 30px; margin-bottom: 30px;">
                <a class="orderbutton" href="#">Подтвердить</a>
            </div>
        </div>

    </jsp:attribute>

</t:skeleton>