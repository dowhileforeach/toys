<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

        <h1>Доставка заказа</h1>
        <table class="info">
            <tr>
                <td width="10%">Индекс:</td>
                <td>
                    <input class="input input_20" type="text" name="index" value="" required>
                </td>
            </tr>
            <tr>
                <td width="10%">Адрес:</td>
                <td>
                    <input class="input input_100" type="text" name="address" value="" required>
                </td>
            </tr>
        </table>

        <div style="margin-top: 40px; margin-bottom: 40px;">
            <a class="orderbutton" href="#"
               onclick="sendShoppingCartToTheServer('/orderfinal')">Выполнить расчет стоимости доставки</a>
        </div>
        <br>
        <div style="margin-top: 40px; margin-bottom: 40px;">
            <a class="orderbutton" href="#"
               onclick="sendShoppingCartToTheServer('/orderfinal')">Корзина</a>
            <a class="orderbutton" href="#"
               onclick="sendShoppingCartToTheServer('/orderfinal')">Оформить заказ</a>
        </div>

    </jsp:attribute>

</t:skeleton>
