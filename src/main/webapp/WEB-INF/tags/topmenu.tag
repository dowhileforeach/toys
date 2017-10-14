<%@tag description="just template" pageEncoding="UTF-8" %>
<%@attribute name="marked" required="true" %>

<nav id="topmenu">
    <ul>

        <li><a class="" href="${pageContext.request.contextPath}/shop/">Магазин</a></li>
        <li> |</li>

        <li><a href="${pageContext.request.contextPath}/delivery/">Доставка</a></li>
        <li> |</li>

        <li><a href="${pageContext.request.contextPath}/about">Контакты</a></li>

    </ul>
</nav>

