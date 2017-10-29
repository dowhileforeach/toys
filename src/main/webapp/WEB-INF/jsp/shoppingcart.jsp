<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

    <br>
    <table border=0 class="order" width="700px" align="center">
        <tr class="top">
            <td width="450px">Товар</td>
            <td width="100px">Количество</td>
            <td align=right>Сумма</td>
        </tr>

        <c:set var="qttyCount" value="0"/>
        <c:set var="sumCount" value="0"/>
        <c:forEach items="${shoppingcart}" var="item" varStatus="loop">
            <tr id="${item.getArticle()}">
                <td style="vertical-align: middle; background: url('${path}/static/pic/art/${item.getArticle()}/${item.getStock().getImg01()}') no-repeat left center; background-size: 100px;">
                    <span style="margin-left: 105px">
                        <a href="${path}/item?article=${item.getArticle()}">${item.getStock().getTitle()}</a>
                    </span><br>
                    <span style="margin-left: 105px; font-size: 12px">
                            цена: <strong>${item.getStock().getPrice()}</strong> руб.
                    </span>

                </td>
                <td>
                    <input type="text" class="count" name="" value="${item.getQtty()}" style="font-size: 14px; text-align: center; font-weight: bold">
                    <span style="font-size: 12px">
                        <br><a href="#" onclick="refreshShoppingCart(this)">Обновить</a>
                        <br><a href="#" onclick="deleteItemFromShoppingCart(this.parentNode.parentNode.parentNode.id)">Удалить</a>
                    </span>
                </td>
                <td align=right>
                    ${item.getStock().getPrice() * item.getQtty()}
                </td>
            </tr>
            <c:set var="qttyCount" value="${qttyCount + item.getQtty()}"/>
            <c:set var="sumCount" value="${sumCount + item.getStock().getPrice() * item.getQtty()}"/>
        </c:forEach>

        <tr style="background-color: #4b1d0a; color: #fcccac; font-size: 11px;">
            <td align=right colspan="3">Всего позиций:&nbsp;&nbsp;<strong>${qttyCount}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Итоговая сумма:&nbsp;&nbsp;<strong>${sumCount}</strong> руб.</td>
        </tr>
    </table>

    </jsp:attribute>

</t:skeleton>
