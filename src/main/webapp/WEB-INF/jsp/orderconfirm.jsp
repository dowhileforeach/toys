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

        <h2>Список товаров</h2>

        <t:shoppingcart_items_list shoppingcart="${shoppingcart}" path="${path}" orderConfirm="true"/>

        <br>
        <h2>Доставка</h2>

        <table class="info">
            <tr>
                <td width="18%">Индекс:</td>
                <td>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Страна:&nbsp;
                </td>
            </tr>
            <tr>
                <td>Адрес получателя:</td>
                <td>
                    <input class="input input_100" type="text" name="address" maxlength="2000" value="" required>
                </td>
            </tr>
            <tr>
                <td>Имя получателя:</td>
                <td>
                    <input class="input input_100" type="text" name="name" maxlength="200" value="" required>
                </td>
            </tr>
            <tr>
                <td>Телефон получателя:</td>
                <td>
                    <input class="input input_100" type="tel" name="phone" value="" required>
                </td>
            </tr>
        </table>

        <div style="margin-top: 25px; margin-bottom: 40px;">
            <a class="orderbutton" href="#">Подтвердить</a>
        </div>




    </jsp:attribute>

</t:skeleton>