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
        <form name="orderDelivery" action="/orderdelivery" method="post" onsubmit="onSubmitOrderDelivery()">
            <table class="info">
                <tr>
                    <td width="18%">Индекс:</td>
                    <td>
                        <input class="input input_20 " name="index" type="number" min="1" max="9999999" value="" required>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Страна:&nbsp;
                        <input class="input input_40 " name="country" type="text" maxlength="100" value="" required>
                    </td>
                </tr>
                <tr>
                    <td>Адрес получателя:</td>
                    <td>
                        <input class="input input_100" type="text" name="address" maxlength="2000" value="" required>
                    </td>
                </tr>
                <tr>
                    <td>Имя получателя:</td>
                    <td>
                        <input class="input input_100" type="text" name="name" maxlength="200" value="" required>
                    </td>
                </tr>
                <tr>
                    <td>Телефон получателя:</td>
                    <td>
                        <input class="input input_100" type="tel" name="phone" value="" required>
                    </td>
                </tr>
            </table>
            <div style="margin-top: 20px; margin-bottom: 30px;">
                <button class="orderbutton deliveryPerform">Выполнить расчет стоимости доставки</button>
            </div>
            <table class="info">
                <tr>
                    <td width="18%">Стоимость доставки:</td>
                    <td style="text-align: left"><div class="deliveryValue"><span class="price"></span></div></td>
                </tr>
            </table>
        </form>
        <div style="margin-top: 20px; margin-bottom: 50px;">
            <a class="orderbutton orderFinal" href="#"
               onclick="onSendShoppingCartToTheServer()">Оформить заказ</a>
        </div>
        <script>
            setDeliveryValue("${deliveryValue}","${currency}");
            setIsDeliveryCorrect(${isDeliveryCorrect});
            onLoadOrderDeliveryPage();
            document.querySelector(".orderbutton.orderFinal").style.display = isDeliveryCorrect() && isShoppingCartPresent() ? "inline-block" : "none";
        </script>

        <h3>Доставка по Москве (в пределах МКАД)</h3>
        <p>Доставка игрушек осуществляется на следующий день при наличии товара на
            складе. Стоимость доставки &#151; 350 руб.</p>
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
