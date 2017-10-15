<%@tag description="just template" pageEncoding="UTF-8" %>
<%@attribute name="path" required="true" %>
<%@attribute name="article" required="true" %>
<%@attribute name="img" required="true" %>
<%@attribute name="img_sm" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${img!='' && img_sm!=''}">
    <a href="${path}/static/pic/art/${article}/${img}"
       onclick="return Show_picture( '${path}/static/pic/art/${article}/${img}' )">
        <img src="${path}/static/pic/art/${article}/${img_sm}" border=0>
    </a>
</c:if>
