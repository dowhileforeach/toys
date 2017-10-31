<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки"
        topmenuMarker="">

    <jsp:attribute name="head"/>

    <jsp:attribute name="content">
    <c:set var="path" value="${pageContext.request.contextPath}"/>

        <h1>Доставка заказа</h1>
        <table class="info">
            <tr>
                <td width="10%">Индекс:</td>
                <td>
                    <input class="input input_20" type="text" name="index" value="" required>
                </td>
            </tr>
            <tr>
                <td width="10%">Адрес:</td>
                <td>
                    <input class="input input_100" type="text" name="address" value="" required>
                </td>
            </tr>
        </table>
        <div style="margin-top: 10px; margin-bottom: 30px;">
            <a class="orderbutton deliveryPerform" href="#"
               onclick="sendShoppingCartToTheServer()">Выполнить расчет стоимости доставки</a>
        </div>
        <div style="margin-top: 20px; margin-bottom: 50px;">
            <a class="orderbutton orderFinal" href="#"
               onclick="sendShoppingCartToTheServer()">Оформить заказ</a>
        </div>
        <script>
            document.querySelector(".orderbutton.orderFinal").style.display = isDeliveryPresent() && isShoppingCartPresent() ? "inline-block" : "none";
        </script>

        <h3>Доставка по Москве (в пределах МКАД)</h3>
        <p>Доставка игрушек осуществляется на следующий день при наличии товара на
            складе. Стоимость доставки &#151; 350 руб. При заказе более 60 000 руб. доставка
            осуществляется <strong>бесплатно</strong>.</p>
        <h3>Доставка за пределы МКАД</h3>
        <p>Доставка зависит от удаленности от МКАД. Доставка в пределах 10 км от МКАД &#151;
            500 руб. Доставка свыше 10 км от МКАД &#151; 40 рублей за каждый лишний
            километр. Доставка в Химки, Реутов, Балашиху, Митино, Бутово, Солнцево,
            Жулебино, Новокосино &#151; 500 руб.,гор. Королев, Зеленоград &#151; 600 руб.</p>
        <h3>Доставка по России, в страны ближнего и дальнего зарубежья</h3>
        <p>При оформлении заказа, пожалуйста, не забудьте указать фамилию, имя,
            отчество и подробный почтовый адрес с индексом. Отгрузка товара осуществляется
            после 100% предоплаты и поступления денег на счет. Для Вашего удобства мы
            посылаем Вам квитанцию для оплаты через отделения Сбербанка. Используя
            указанные в квитанции реквизиты, Вы можете произвести оплату через любой
            коммерческий банк. Товар высылается Почтой России. По Вашему желанию, доставка
            может быть осуществлена транспортной компанией.</p>

    </jsp:attribute>

</t:skeleton>
