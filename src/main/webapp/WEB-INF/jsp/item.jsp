<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки">

    <jsp:attribute name="head">

    </jsp:attribute>

    <jsp:attribute name="pageBody">

    <nav id="topmenu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/shop">Магазин</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/delivery">Доставка</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/about">Контакты</a></li>
        </ul>
    </nav>

        <div id="content">

            <div class="left">
                <div id="fsClipper">
                    <div id="fsScreen" style="position: relative; top: -4;"></div>
                </div>
            </div>
            <div class="right">
                <h1>${item.getTitle()}</h1>
                <table class="shop" border=0 cellspacing=0>
                    <tr>
                        <td class="name">Артикул</td>
                        <td>${item.getArticle()}</td>
                    </tr>
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
                    <span id="fsControl_prev" class="fsControl" style="border: 0px">&larr;</span>
                    <span id="fsControl_next" class="fsControl" style="border: 0px">&rarr;</span>
                </p>
                <script src="${pageContext.request.contextPath}/static/js/showphoto.js" type="text/javascript"></script>
                <br>
                <div style="float: right; width: 200px;">Цена: <span class="price">${item.getPrice()} руб.</span>
                    <a href="#" item="${item.getArticle()}" class="buyitem" style="margin-top: 20px;">в корзину</a>
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
            <div class="header">Все Игрушки из натурального меха</div>
            <br><br>
            <c:forEach items="${list}" var="i" varStatus="loop">
                <div class="toy">
                    <div class="block">
                        <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}">
                            <img src="${pageContext.request.contextPath}/static/pic/art/${i.getArticle()}/${i.getImg01_sm()}"
                                 width=200>
                        </a>
                        <br>
                        <a href="${pageContext.request.contextPath}/item?article=${i.getArticle()}"
                           class=link>${i.getTitle()}</a>
                    </div>
                    <div class="clear"></div>
                    <a href="#" item="${i.getArticle()}" class="buyitem">в корзину</a>
                    <div class="price">
                            ${i.getPrice()} <span>руб.</span>
                    </div>
                </div>
            </c:forEach>

            <script>
                $('A.buyitem').click(function(e) {
                    Basket.Add($(this));
                });
            </script>

    </jsp:attribute>

</t:skeleton>