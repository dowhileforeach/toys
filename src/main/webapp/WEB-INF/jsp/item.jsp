<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/media_item.css" type="text/css"/>
    </jsp:attribute>

    <jsp:attribute name="content">

    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <c:set var="article" value="${item.getArticle()}"/>

    <div class="left">
        <div id="fsClipper">
            <div id="fsScreen"></div>
        </div>
    </div>
    <div class="right">
        <h1>${item.getTitle()}</h1>
        <table class="shop">
            <tr>
                <td class="name">Мех</td>
                <td>${item.getMaterial()}</td>
            </tr>
            <c:if test="${item.getColor()!=null}">
                <tr>
                    <td class="name">Цвет</td>
                    <td>${item.getColor()}</td>
                </tr>
            </c:if>
            <c:if test="${item.getSize()!=null}">
                <tr>
                    <td class="name">Высота</td>
                    <td>${item.getSize()}</td>
                </tr>
            </c:if>
            <tr>
                <td class="name">Артикул</td>
                <td>${article}</td>
            </tr>
        </table>

        <p id="fsLinks">

            &nbsp;&nbsp;&nbsp;&nbsp;
            <span id="fsControl_prev" class="fsControl">
                <img src="${path}/static/pic/arrow_left.png" alt="">
            </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span id="fsControl_next" class="fsControl">
                <img src="${path}/static/pic/arrow_right.png" alt="">
            </span>
            <br><br>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg01()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg02()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg03()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg04()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg05()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg06()}"/>
            <t:img_preview path="${path}" article="${article}" img="${item.getImg07()}"/>
        </p>
        <script src="${path}/static/js/picPreview.js" type="text/javascript"></script>
        <br>
        <div class="sellItem">Цена: <span class="price">${item.getPrice()} руб.</span><br>
            <a href="#" class="buyitem" onclick="addItemToTheShoppingCart(${article},${item.getPrice()})">в корзину</a>
        </div>
        <div class="clear"></div>

        <div class="allgoods">
            Каждая игрушка индивидуальна. Имеющиеся в наличии изделия могут отличаться от представленных в данном
            каталоге не только аксессуарами (глазки, носики, бантики), но и мехом,
            кожей, замшей (тип, фактура, цвет). Цена так же зависит от выбора меха. Мы внимательно относимся к
            пожеланиям клиентов. Обращайтесь за консультацией к нашим менеджерам.
        </div>
    </div>

    <div class="clear"></div><br>
    <br><br>

    <t:shop_items_list list="${list}" path="${path}"/>

    </jsp:attribute>

</t:skeleton>