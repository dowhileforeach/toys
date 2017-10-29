<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="shop">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

    <p>Каждая меховая игрушка, выполненная вручную, имеет свой неповторимый облик, который не оставит вас равнодушными.
    <br>Модели игрушек постоянно обновляются. Следите за изменениями на нашем сайте.</p>
    <br><br>

    <t:shop_items_list list="${list}" path="${path}"/>

    </jsp:attribute>

</t:skeleton>