<%@tag description="item in the shop" pageEncoding="UTF-8" %>
<%@attribute name="shoppingcart" required="true" type="java.util.List<ru.dwfe.toys.OrderShoppingCartItem>" %>
<%@attribute name="path" required="true" %>
<%@attribute name="orderConfirm" required="true" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="order">
    <tr class="other">
        <td width="350px">Товар</td>
        <td width="100px">Количество</td>
        <td align=right>Сумма</td>
    </tr>

    <c:set var="totalQtty" value="0"/>
    <c:set var="totalSum" value="0"/>
    <c:forEach items="${shoppingcart}" var="item" varStatus="loop">

        <c:set var="article" value="${item.getArticle()}"/>
        <c:set var="title"   value="${item.getItem().getTitle()}"/>
        <c:set var="img"     value="${item.getItem().getImg()}"/>
        <c:set var="price"   value="${item.getItem().getPrice()}"/>
        <c:set var="qtty"    value="${item.getQtty()}"/>
        <c:set var="sum"     value="${price * qtty}"/>

        <tr>
            <td style="background: url('${path}/static/pic/art/${article}/${img}') no-repeat left center; background-size: 100px;">
                <span style="margin-left: 105px">
                    <a href="${path}/item?article=${article}">${title}</a>
                </span>
                <br>
                <span style="margin-left: 105px; font-size: 80%">
                    цена: <strong>${price}</strong> руб.
                </span>
            </td>
            <td align=center id="${article}">
                <c:choose>
                    <c:when test="${orderConfirm}">
                        &nbsp;<br>
                        ${qtty}
                        <br>&nbsp;
                    </c:when>
                    <c:otherwise>
                        <input class="qtty" type="text" name="" value="${qtty}">
                        <span style="font-size: 75%">
                            <br><a href="#" onclick="refreshShoppingCart(this)">Обновить</a>
                            <br><a href="#" onclick="deleteItemFromShoppingCart(this.parentNode.parentNode.id)">Удалить</a>
                        </span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td align=right>
                ${sum}
            </td>
        </tr>
        <c:set var="totalQtty" value="${totalQtty + qtty}"/>
        <c:set var="totalSum" value="${totalSum + sum}"/>
    </c:forEach>

<%--
    <tr class="other">
        <td align=right colspan="3">
            Товаров:&nbsp;&nbsp;<strong>${totalQtty}</strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Стоимость:&nbsp;&nbsp;<strong>${totalSum}</strong> руб.
        </td>
    </tr>
--%>
</table>
<br>
<div class="priceBlock">
Всего товаров:&nbsp;&nbsp;${totalQtty}
<br>
Общая стоимость товаров:&nbsp;&nbsp;<span class="price">${totalSum} руб.</span>
</div>