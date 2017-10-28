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
                <td>${item.getArticle()}</td>
            </tr>
        </table>
        <p id="fsLinks">
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg01()}" img_sm="${item.getImg01_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg02()}" img_sm="${item.getImg02_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg03()}" img_sm="${item.getImg03_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg04()}" img_sm="${item.getImg04_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg05()}" img_sm="${item.getImg05_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg06()}" img_sm="${item.getImg06_sm()}"/>
            <t:img_preview path="${pageContext.request.contextPath}" article="${item.getArticle()}"
                           img="${item.getImg07()}" img_sm="${item.getImg07_sm()}"/>
            <span id="fsControl_prev" class="fsControl">&larr;</span>
            <span id="fsControl_next" class="fsControl">&rarr;</span>
        </p>
        <script src="${pageContext.request.contextPath}/static/js/picPreview.js" type="text/javascript"></script>
        <br>
        <div class="sellItem">Цена: <span class="price">${item.getPrice()} руб.</span><br>
            <a href="#" class="buyitem" onclick="addItemToTheShoppingCart(${item.getArticle()},${item.getPrice()})">в корзину</a>
        </div>
        <div class="clear"></div>

        <div class="allgoods">Каждая игрушка индивидуальна. Имеющиеся в наличии изделия могут отличаться от
            представленных в данном каталоге не только аксессуарами (глазки, носики, бантики), но и мехом,
            кожей,
            замшей (тип, фактура, цвет). Цена так же зависит от выбора меха. Мы внимательно относимся к
            пожеланиям
            клиентов. Обращайтесь за консультацией к нашим менеджерам.
        </div>
    </div>

    <div class="clear"></div><br>
    <br><br>
    <c:forEach items="${list}" var="i" varStatus="loop">
        <div class="toy">
            <div class="block">
                <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">
                    <img src="${pageContext.request.contextPath}/static/pic/art/${i.getArticle()}/${i.getImg01_sm()}" width=200>
                </a>
                <br>
                <a class="link" href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">${i.getTitle()}</a>
            </div>
            <div class="clear"></div>
            <a href="#" class="buyitem" onclick="addItemToTheShoppingCart(${i.getArticle()},${i.getPrice()})">в корзину</a>
            <div class="price">
                    ${i.getPrice()} <span>руб.</span>
            </div>
        </div>
    </c:forEach>

    </jsp:attribute>

</t:skeleton>