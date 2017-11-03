<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <c:set var="la" value="${shoppingcart.size()}"/>

        <h1>Корзина</h1>
        <t:shoppingcart_items_list shoppingcart="${shoppingcart}" path="${path}" orderConfirm="false"/>

        <div style="margin-top: 25px; margin-bottom: 40px;">
            <a class="orderbutton delivery" href="#" onclick="openOrderDeliveryPage()">Рассчитать стоимость доставки</a>
            <a class="orderbutton orderConfirm" href="#"
               onclick="getOrderConfirmBlockForm().submit();">Оформить заказ</a>
        </div>
        <script>
            document.querySelector(".orderbutton.delivery").style.display = isDeliveryCorrect() ? "none" : "inline-block";
            document.querySelector(".orderbutton.orderConfirm").style.display = isDeliveryCorrect() && isShoppingCartPresent() ? "inline-block" : "none";
        </script>

    </jsp:attribute>

</t:skeleton>
