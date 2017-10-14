var alert_helper = {
	var_initialized : false,
	var_background_html : '<div id=\"js-djem-alert-background\">\r\n										</div>',
	
	var_html : '	<div id=\"js-djem-alert\">\r\n									<div class=\"header\">Корзина</div>\r\n									<div style=\"padding: 0px 10px 10px 10px;\">\r\n									<p id=\"js-djem-alert-text\"></p>\r\n\r\n									\r\n									<p align=right>\r\n										<a href=\"javascript: alert_helper.hide();\" id=\"js-djem-alert-hide\" class=\"closebutton\">Продолжить выбор</a>\r\n										<a href=\"/basket/\" class=\"orderbutton\">Оформить заказ</a>\r\n									</p>\r\n									\r\n								</div></div>\r\n								',
	
	hide : function() {
		$('#js-djem-alert').hide();
		$('#js-djem-alert-background').hide();
	},
	
	show : function(text) {
		alert_helper.hide();
		if(alert_helper.var_initialized == false) {
			$('body').append(alert_helper.var_html);
			$('body').append(alert_helper.var_background_html);
			alert_helper.var_initialized = true;
		}
		$scrollTop = $(window).scrollTop();
		$('#js-djem-alert').css('top', $scrollTop + ($(window).height()/2) - $('#js-djem-alert').height()/2);
		$('#js-djem-alert-background').height($(document).height());
		$('#js-djem-alert-text').text(text);
		$('#js-djem-alert').show();
		$('#js-djem-alert-background').show();
	}
	
	
}

function djem_alert(text) {
	alert_helper.show(text);
}