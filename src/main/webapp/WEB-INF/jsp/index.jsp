<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/media.css" type="text/css"/>
    </jsp:attribute>

    <jsp:attribute name="content">

    <div class="left">
        <a href="${pageContext.request.contextPath}/shop">
            <img class="index_front" src="${pageContext.request.contextPath}/static/pic/crow_01.jpg">
        </a>
    </div>
    <div class="right">
        <br><br>
        <h1>Арума – это территория самых удивительных подарков!</h1>
        <p>Мы предлагаем игрушки и аксессуары из натурального меха и кожи.
            Приглашаем посетить <a href="${pageContext.request.contextPath}/shop">магазин игрушек</a>, созданных
            по индивидуальному заказу.</p>
        <p>Для Вашего удобства мы организовали систему заказов наших товаров прямо на
            сайте. Выбранный сувенир будет доставлен вам, вашим друзьям и
            любимым в подарочной упаковке с курьером в самые кратчайшие
            сроки.</p>
        <p><b>Для корпоративных клиентов</b> мы можем сшить ограниченную серию
            высококачественных мягких игрушек с нанесением логотипа, слогана и т.п.</p>
        <p><strong>Обратите внимание! Мы не занимаемся пошивом дешевой, массовой
            продукции.</strong><br>
    </div>
    <img src="${pageContext.request.contextPath}/static/pic/02.gif">

    </jsp:attribute>

</t:skeleton>
