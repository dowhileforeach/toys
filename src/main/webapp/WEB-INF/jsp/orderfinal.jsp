<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

        <p>Уважаемый, ${customerName}.</p>
        <p>Ваш заказ &#8470;${orderNumber} успешно создан!</p>
        <p>В ближайшее время с вами свяжется наш менеджер.</p>

        <script>
            toZeroShoppingCart();
            toZeroOrderDelivery();
        </script>

    </jsp:attribute>

</t:skeleton>
