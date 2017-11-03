<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

        <h1 id="${hash}">Оформление заказа</h1>

        <h2 style="margin-top: 20px">Список товаров заказа</h2>

        <t:shoppingcart_items_list shoppingcart="${shoppingcart}" path="${path}" orderConfirm="true"/>

        <br>
        <h2>Заказ будет доставлен</h2>

        <table class="info">
            <tr>
                <td width="18%">Индекс:</td>
                <td>
                    <strong>${delivery.getIndex()}</strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Страна:&nbsp;<strong>${delivery.getCountry()}</strong>
                </td>
            </tr>
            <tr>
                <td>Адрес получателя:</td>
                <td>
                    <strong>${delivery.getAddress()}</strong>
                </td>
            </tr>
            <tr>
                <td>Имя получателя:</td>
                <td>
                    <strong>${delivery.getName()}</strong>
                </td>
            </tr>
            <tr>
                <td>Телефон получателя:</td>
                <td>
                    <strong>${delivery.getPhone()}</strong>
                </td>
            </tr>
        </table>
        <table class="info">
            <tr>
                <td width="18%">Стоимость доставки:</td>
                <td style="text-align: left"><div class="deliveryValue"><span class="price">${delivery.getValueReturn()} ${delivery.getCurrency()}</span></div></td>
            </tr>
        </table>

        <div style="margin-top: 25px; margin-bottom: 40px;">
            <a class="orderbutton" href="#">Подтвердить</a>
        </div>




    </jsp:attribute>

</t:skeleton>