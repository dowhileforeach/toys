<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="about">

    <jsp:attribute name="head">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/media.css" type="text/css"/>
    </jsp:attribute>

    <jsp:attribute name="content">

    <div class="left">
        <h1>Информация о компании</h1>
        <div>
            <p>Фирма «ARUMA» основана в 1983 году швейцарским дизайнером французского происхождения Жозе Арума. В 1996 году «ARUMA» открывает свое представительство в Москве.</p>
            <p>В 2000 году все права на использование товарного знака «ARUMA» перешли одноименной российской компании.</p>
            <p>Основной вид деятельности «ARUMA» остался без изменений &#151; производство одежды и аксессуаров из натурального меха.</p>
            <p>В 2006 году «ARUMA» открывает производство сувенирной продукции из натурального меха.</p>
        </div>
    </div>
    <div class="right">
        <h2>Контактная информация</h2>
        <p>Наш адрес: 121000, <strong>Москва</strong>, ул. Меховая, дом 7.</p>
        <p>Тел.: +7(777)777-77-77</p>
        <p>
            <nobr>E-Mail:</nobr>
            <script type="text">
            </script>
            &nbsp;&nbsp;<a href="mailto:some@email.com">some@email.com</a></p>
        <p>
            <a href="https://vk.com/" target="_blank">
                <img title="" style="HEIGHT: 26px; WIDTH: 27px" border="0" hspace="0" alt=""
                     src="${pageContext.request.contextPath}/static/pic/vk.bmp" width="24" height="24"></a>
            &nbsp;
            <a href="https://www.facebook.com/" target="_blank">
                <img title="" style="HEIGHT: 26px; WIDTH: 96px" border="0" hspace="0" alt=""
                     src="${pageContext.request.contextPath}/static/pic/fb.bmp" width="88" height="22">
            </a>
        </p>
    </div>

    </jsp:attribute>

</t:skeleton>
