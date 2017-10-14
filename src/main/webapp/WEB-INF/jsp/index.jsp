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
            <li><a href="${pageContext.request.contextPath}/delivery">Доставка</a></li>
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
    <div class="level">&nbsp;</div>
    <div id="content">
        <div class="left">
            <a href="${pageContext.request.contextPath}/shop">
                <img src="${pageContext.request.contextPath}/static/pic/crow_01.jpg" border=0 style="margin-top: -3px;" alt="" style="width: 100%;">
            </a>
        </div>
        <div class="right">
            <h1>Арума – это территория самых удивительных подарков!</h1>
            <p>Мы&nbsp;предлагаем игрушки и&nbsp;аксессуары из&nbsp;натурального меха и&nbsp;кожи.
                Приглашаем&nbsp; посетить <a href="${pageContext.request.contextPath}/shop">магазин игрушек</a>, созданных
                по&nbsp;индивидуальному заказу.</p>
            <p>Для Вашего удобства мы&nbsp;организовали систему заказов наших товаров прямо на
                сайте. Выбранный&nbsp;сувенир будет&nbsp; доставлен вам, вашим друзьям и
                любимым&nbsp;в&nbsp;подарочной упаковке&nbsp;с курьером в&nbsp;самые кратчайшие
                сроки.</p>
            <p><b>Для корпоративных клиентов</b>&nbsp;мы можем сшить ограниченную серию
                высококачественных мягких игрушек с&nbsp;нанесением логотипа, слогана и&nbsp;т. п..</p>
            <p><strong>Обратите внимание! Мы&nbsp;не&nbsp;занимаемся пошивом дешевой, массовой
                продукции.</strong><br>
<%--
                <a href="/usefull/1293/document1314.shtml" target="_blank"></a>&nbsp;<br>
                <a href="/usefull/1293/document1295.shtml" target="_blank">Покупка-&nbsp;Продажа меха &nbsp;</a>
                <a href="/usefull/1293/document1296.shtml">Покупка -&nbsp;Продажа швейного оборудования</a> <a href="/workshop/" target="_blank"><br>
                </a><a href="http://somesite.ru/usefull/1293/document1294.shtml" target="_blank">Вакансии</a>&nbsp;&nbsp;</p>
--%>
        </div>

        <img border="0" hspace="0" alt="" src="${pageContext.request.contextPath}/static/pic/02.gif">
    </div>

<%--
    <table border=0 cellpadding=10 cellspacing=7 width=100%>
        <tr valign="top">
            <td width="50%" align=center>

                <a href="/toys/fur/" class=link>Игрушки из натурального меха</a>

                (59)


                <br><a href="/toys/fur/"><img src="${pageContext.request.contextPath}/static/pic/1286.jpg" width="100%"
                                              border=0></a>


            </td>

            <td width="50%" align=center>

                <a href="/toys/author/" class=link>Авторские игрушки</a>

                (0)


                <br><a href="/toys/author/"><img src="${pageContext.request.contextPath}/static/pic/kuki2.jpg" width="100%"
                                                 border=0></a>


            </td>

        </tr>
        <tr valign="top">
            <td width="50%" align=center>

                <a href="/toys/knit/" class=link>Игрушки вязаные</a>

                (0)


                <br><a href="/toys/knit/"><img src="${pageContext.request.contextPath}/static/pic/bluemed_01.jpg"
                                               width="100%" border=0></a>


            </td>

            <td width="50%" align=center>

                <a href="/toys/felt/" class=link>Игрушки войлочные</a>

                (0)


                <br><a href="/toys/felt/"><img src="${pageContext.request.contextPath}/static/pic/voi_04_03.jpg"
                                               width="100%" border=0></a>


            </td>

        </tr>
    </table>
--%>

    </jsp:attribute>

</t:skeleton>
