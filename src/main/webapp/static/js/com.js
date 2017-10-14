$(document).ready(function() {
	if($('#divContentsBookmark')) {	
		$('#divContentsBookmark').click(function() {
			$('#divContentsBlock').toggle();
			return false;
		});
	}
});

	var helpers = {
        TwoD: function(num) {
            return num > 9 ? num : ('0' + num);
        },


        numbers: {
            padded: function(num, size) {
                return (new Array(num ? size - Math.floor(Math.log(num) / Math.log(10)) : size).join('0')) + num;
            },
            separated: function(sum) {
                if (sum > 1000000) {
                    return Math.floor(sum / 1000000) + ' ' + helpers.numbers.padded(Math.floor(sum / 1000) % 1000, 3) + ' ' + helpers.numbers.padded(sum % 1000, 3);

                } else if (sum > 1000) {
                    return Math.floor(sum / 1000) + ' ' + helpers.numbers.padded(sum % 1000, 3);

                } else {
                    return sum;
                }
            },
            verbal: function(sum, one, four, many, skipNumber, separated) {
                var perSum = sum % 100;
                var prefix = skipNumber ? '' : ((separated ? helpers.numbers.separated(sum) : sum) + ' ');

                if (perSum <= 10 || perSum >= 20) {
                    switch (perSum % 10) {
                        case 1:
                            return prefix + one;
                            break;

                        case 2:
                        case 3:
                        case 4:
                            return prefix + four;
                    }
                }

                return prefix + many;
            }
        },

        time: {
            monthNamesBy: ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря'],
            weekdays: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
            weekday: function(date) {
                var cd = helpers.time.fromDate(date);
                return helpers.time.weekdays[cd.getDay()];
            },
            toDate: function(cd) {
                return (cd.getYear() > 1900 ? cd.getYear() : cd.getYear() + 1900) + '-' + helpers.TwoD(cd.getMonth() + 1) + '-' + helpers.TwoD(cd.getDate());
            },
            toVerbal: function(date) {
                if (date instanceof Date) {
                    date = helpers.toDate(date);
                }

                var dateParts = date.split('-');

                return dateParts[2] + ' ' + helpers.time.monthNamesBy[dateParts[1] - 1] + ' ' + dateParts[0];
            },
            fromDate: function(date) {
                var cd = new Date();
                var dateParts = date.split('-');
                cd.setYear(dateParts[0] - 0);
                cd.setMonth(dateParts[1] - 1);
                cd.setDate(dateParts[2] - 0);

                return cd;
            },
            nextDate: function(date) {
                var cd = helpers.time.fromDate(date);
                cd.setTime(cd.getTime() + (86400 + 3600) * 1000);

                return helpers.time.toDate(cd);
            },
            range: function(from, to) {
                var fromDate = new Date(from);
                var toDate = new Date(to);
                var result = 0;

                while (fromDate.getTime() <= toDate.getTime()) {
                    fromDate.setTime(fromDate.getTime() + 86400 * 1000);
                    ++result;
                }

                return result;
            },
            verbalSpan: function(from, to) {
                var fromSplit = from.split('-');
                var toSplit = to.split('-');

                if (from == to) {
                    return fromSplit[2] + ' ' +  helpers.time.monthNamesBy[fromSplit[1] - 1];
                }

                if (fromSplit[1] == toSplit[1]) {
                    return 'с ' + fromSplit[2] + ' по ' +  toSplit[2] + ' ' + helpers.time.monthNamesBy[fromSplit[1] - 1];
                }

                if (fromSplit[0] == toSplit[0]) {
                    return 'с ' + fromSplit[2] + ' ' + helpers.time.monthNamesBy[fromSplit[1] - 1] + ' по ' +  toSplit[2] + ' ' + helpers.time.monthNamesBy[toSplit[1] - 1];
                }

                return 'с ' + fromSplit[2] + ' ' + helpers.time.monthNamesBy[fromSplit[1] - 1] + ' ' + fromSplit[0] + ' по ' +  toSplit[2] + ' ' + helpers.time.monthNamesBy[toSplit[1] - 1] + ' ' + toSplit[0];
            }
        }
    };


var Basket = {
	
	Vars : {
		initialized : false,
		fields : {}
	},
	
	Init : function() {
		if(!Basket.Vars['initialized']) {
			$('[basket-field]').each(function() {
				if(Basket.Vars['fields'][$(this).attr('basket-field')] == undefined) {
					Basket.Vars['fields'][$(this).attr('basket-field')] = new Array();
				}
				Basket.Vars['fields'][$(this).attr('basket-field')].push(this);
			})
			Basket.Vars['initialized'] = true;
		}
	},
	
	Add : function(el) {
		var $this = $(el);
		var itemId = $this.attr('item');
		$.getJSON('/system/php/service.php', {_module: 'basket', _action: 'addItem', id: itemId}, function(data) {			
			if(data.reason) {
				djem_alert(data.result + ': ' + data.reason); 
			} else {
				$.each(Basket.Vars['fields']['total-count'], function() {
					if (data.count) {
						$(this).show().html('<a href="/basket/">Корзина</a><br> <b>' + helpers.numbers.verbal(data.count, '</b> товар', '</b> товара', '</b> товаров') + ' на сумму <b>' + helpers.numbers.separated(data.summ) + ' руб.</b>');
						
					} else {
						$(this).show().html('<a href="/basket/">Корзина</a> пуста');
					}
				})
				djem_alert(data.result);
				
			}
		});
		return false;
	}
}

$(document).ready(function() {
	Basket.Init();
})