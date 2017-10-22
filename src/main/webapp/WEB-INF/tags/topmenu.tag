<%@tag description="just template" pageEncoding="UTF-8" %>
<%@attribute name="marked" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="topmenu">
    <ul>

        <li><a class="<%= marked.equals("shop") ? "active": "" %>" href="${pageContext.request.contextPath}/shop/">Магазин</a></li>

        <li> |</li>

        <li><a class="<%= marked.equals("delivery") ? "active": "" %>" href="${pageContext.request.contextPath}/delivery/">Доставка</a></li>

        <li> |</li>

        <li><a class="<%= marked.equals("about") ? "active": "" %>" href="${pageContext.request.contextPath}/about">Контакты</a></li>

    </ul>
</nav>

