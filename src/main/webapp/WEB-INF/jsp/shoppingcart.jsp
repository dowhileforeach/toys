<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="pageBody">

    <div id="content">

        <h1>Корзина покупателя</h1>

        <table border=0 class="order" width=100%>
            <tr class=top>
                <td>Товар</td>
                <td>Количество</td>
                <td align=right>Цена (руб.)</td>
                <td  align=right>Сумма  (руб.)</td>
            </tr>

            <c:set var="qttyCount" value="0"/>
            <c:set var="sumCount" value="0"/>
            <c:forEach items="${shoppingcart}" var="i" varStatus="loop">
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">${i.getStock().getTitle()}</a>
                    </td>
                    <td>
                        <input type="text" class="count" name="" value="${i.getQtty()}">
                        <a href="#" OnClick="del('2386');">Удалить</a>
                    </td>
                    <td align=right>
                        ${i.getStock().getPrice()}
                    </td>
                    <td align=right>
                        ${i.getStock().getPrice() * i.getQtty()}
                    </td>
                </tr>
                <c:set var="qttyCount" value="${qttyCount + i.getQtty()}"/>
                <c:set var="sumCount" value="${sumCount + i.getStock().getPrice() * i.getQtty()}"/>
            </c:forEach>

            <tr>
                <td>
                    <b>Всего в заказе позиций:</b>
                </td>
                <td>
                    <b>${qttyCount}</b>
                </td>
                <td>
                    <b>на сумму</b>
                </td>
                <td align=right>
                    <b>${sumCount} руб.</b>
                </td>
            </tr>
        </table>

    </div>

    </jsp:attribute>

</t:skeleton>
