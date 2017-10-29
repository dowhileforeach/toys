<%@tag description="item in the shop" pageEncoding="UTF-8" %>
<%@attribute name="list" required="true" type="java.util.List" %>
<%@attribute name="path" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${list}" var="item" varStatus="loop">

    <c:set var="article" value="${item.getArticle()}"/>

    <div class="toy">
        <div class="block">
            <a href="${path}/item?article=${article}">
                <img src="${path}/static/pic/art/${article}/${item.getImg01()}">
            </a>
            <br>
            <a class="link" href="${path}/item?article=${article}">${item.getTitle()}</a>
        </div>

        <div class="clear"></div>

        <a class="buyitem" href="#"
           onclick="addItemToTheShoppingCart(${article},${item.getPrice()})">в корзину</a>

        <div class="price">
            ${item.getPrice()} <span>руб.</span>
        </div>
    </div>

</c:forEach>