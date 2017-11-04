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

        <h2 style="margin-top: 25px">Список товаров</h2>

        <t:shoppingcart_items_list shoppingcart="${shoppingcart}" path="${path}" orderConfirm="true"/>

        <h2 style="margin-top: 30px">Заказ будет доставлен</h2>

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
        <div class="priceBlock">
            Стоимость доставки:&nbsp;&nbsp;
            <span class="price">
                    ${deliveryValue} ${deliveryCurrency}
            </span>
        </div>

        <h1 style="margin-top: 25px">Информация о покупателе</h1>
        <form action="${path}/orderfinal" method="post" onsubmit="onSubmitOrderConfirm()">
            <input hidden type="text" name="hash" value="${hash}"/>
            <table class="info">
                <tr>
                    <td width="18%">Имя:</td>
                    <td>
                        <input class="input input_100" name="name" value="${delivery.getName()}" type="text" maxlength="100" required>
                    </td>
                </tr>
                <tr>
                    <td>Телефон:</td>
                    <td>
                        <input class="input input_100" name="phone" value="${delivery.getPhone()}" type="tel" maxlength="20" required>
                    </td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <input class="input input_100" type="email" name="email" maxlength="100" value="" required>
                    </td>
                </tr>
            </table>

            <div class="priceBlock">
                Итоговая стоимость заказа:&nbsp;&nbsp;
                <span class="price">
                    ${orderValue} руб.
            </span>
            </div>

            <div style="margin-top: 25px; margin-bottom: 40px;">
                <button class="orderbutton orderConfirm" href="#">Подтвердить заказ</button>
            </div>
        </form>

    </jsp:attribute>

</t:skeleton>