<%@tag description="just template" pageEncoding="UTF-8" %>
<%@attribute name="path" required="true" %>
<%@attribute name="article" required="true" %>
<%@attribute name="img" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${img!=''}">

    <c:set var="img_url" value="${path}/static/pic/art/${article}/${img}"/>

    <a class="item_preview" href="${img_url}" onclick="return Show_picture( '${img_url}' )">
        <img src="${img_url}">
    </a>

</c:if>