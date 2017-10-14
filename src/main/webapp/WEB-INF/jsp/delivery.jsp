<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:skeleton
        title="Игрушки и аксессуары из натурального меха и кожи / Эксклюзивные подарки из натурального меха - мягкие игрушки и любые изделия на заказ Арума меховые игрушки">

    <jsp:attribute name="head"/>

    <jsp:attribute name="pageBody">

    <nav id="topmenu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/shop">Магазин</a></li>
            <li> |</li>
            <li><a class="a" href="${pageContext.request.contextPath}/delivery">Доставка</a></li>
            <li> |</li>
            <li><a href="${pageContext.request.contextPath}/about">Контакты</a></li>
        </ul>
    </nav>

    <nav id="sidemenu">
    </nav>

    <div class="login_form" style="display:none;" id="login_form">
        <div class="border">
            <div style="width: 10px; float: right;">
                <a href="#" id="x-button"><img src="${pageContext.request.contextPath}/static/pic/x_button.gif"
                                               border=0></a>
            </div>
            <h3>Вход</h3>
            <form name="formAuth" id="formAuth" method="post" action="/system/php/service.php" style='margin: 0px;'>
                <input type="hidden" name="_module" value="auth">
                <input type="hidden" name="_action" value="login">

                <div>Логин <span class="error" id="divAuthError"></span></div>
                <input type="text" class="input w100" name="name">

                <p>
                <div>Пароль</div>
                <input type="password" class="input w100" name="password">
                </p>
                <p>
                    <input type="submit" value="Войти">
                </p>

                <div class="small">
                    <a href="/registration.phtml">Зарегистрироваться</a>
                    <br>
                    <a href="/reminder.phtml">Напомнить пароль</a>
                </div>
            </form>
        </div>
    </div>
    <script>
        $('#formAuth').ajaxForm({
            beforeSubmit: function () {
                $('#divAuthError').text('');
            },
            dataType: 'json',
            success: function (data) {
                if (data.result == 'success') {
                    document.location.reload();

                } else {
                    $('#divAuthError').text(data.reason);
                }
            }
        });

        $('#x-button').click(function () {
            $('#login_form').fadeOut();
        })

        $('#open-login-popup').click(function () {
            $('#login_form').fadeIn();
            $('#formAuth').find('[name="name"]').focus();
        })
    </script>

        <div id="content">
            <%--<div class="left">--%>
                <h1>Доставка</h1>
                <h3>Доставка по&nbsp;Москве (в&nbsp;пределах МКАД)</h3>
                <p>Доставка игрушек осуществляется на&nbsp;следующий день при наличии товара на
                    складе. Стоимость доставки –&nbsp;350&nbsp;руб. При заказе более 60&nbsp;000&nbsp;руб. доставка
                    осуществляется <strong>бесплатно</strong>.</p>
                <h3>Доставка за&nbsp;пределы МКАД</h3>
                <p>Доставка зависит от&nbsp;удаленности от&nbsp;МКАД. Доставка в&nbsp;пределах 10&nbsp;км&nbsp;от&nbsp;МКАД
                    –
                    500&nbsp;руб. Доставка свыше 10&nbsp;км&nbsp;от&nbsp;МКАД&nbsp;– 40&nbsp;рублей за&nbsp;каждый
                    лишний
                    километр. Доставка в&nbsp;Химки, Реутов, Балашиху, Митино, Бутово, Солнцево,
                    Жулебино, Новокосино&nbsp;– 500&nbsp;руб.,гор. Королев, Зеленоград&nbsp;&#151; 600&nbsp;руб.</p>
                <h3>Доставка по&nbsp;России, в&nbsp;страны ближнего и&nbsp;дальнего зарубежья</h3>
                <p>При оформлении заказа, пожалуйста, не&nbsp;забудьте указать&nbsp;фамилию, имя,
                    отчество и&nbsp;подробный почтовый адрес с&nbsp;индексом. Отгрузка товара осуществляется
                    после 100% предоплаты и&nbsp;поступления денег на&nbsp;счет. Для Вашего удобства мы
                    посылаем Вам квитанцию для оплаты через отделения Сбербанка. Используя
                    указанные в&nbsp;квитанции реквизиты, Вы&nbsp;можете произвести оплату через любой
                    коммерческий банк. Товар высылается Почтой России. По&nbsp;Вашему желанию, доставка
                    может быть осуществлена транспортной компанией.</p>
            <%--</div>--%>

        </div>

    </jsp:attribute>

</t:skeleton>
