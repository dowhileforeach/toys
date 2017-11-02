function getOrderDeliveryStorage() {

    if (localStorage.OrderDelivery === undefined
        || localStorage.OrderDelivery === "undefined")
        setOrderDeliveryStorage({
            'index': '',
            'country': '',
            'address': '',
            'name': '',
            'phone': '',
            'form': ['index', 'country', 'address', 'name', 'phone'],
            'value': '',     //в доставке валюта отдельно, потому что
            'currency': ''   //могут быть варианты value без валюты, например, БЕСПЛАТНО и т.п.
        });
    return JSON.parse(localStorage.OrderDelivery);
}

function setOrderDeliveryStorage(newValue) {
    localStorage.setItem("OrderDelivery", JSON.stringify(newValue));
    controlOrderDelivery();
}

function setDeliveryValue(deliveryValue, currency) {
    var OrderDelivery = getOrderDeliveryStorage();
    OrderDelivery['value'] = deliveryValue;
    OrderDelivery['currency'] = currency;
    setOrderDeliveryStorage(OrderDelivery);
}

function isDeliveryPresent() {
    return Object.keys(getOrderDeliveryStorage()).length > 0;
}

function getOrderDeliveryBlock() {
    return document.querySelector(".orderDeliveryBlock");
}

function getDeliveryForm() {
    return document.forms['orderDelivery'];
}

function getDeliveryValueBlock() {
    return document.querySelector(".deliveryValue .price");
}

function controlOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var url = localStorage.contextPath + "/orderdelivery";

    var value = OrderDelivery['value'];
    if (value === '') value = 'не рассчитана';
    if (value !== 'не рассчитана')
        value = "<strong>" + value + "</strong> " + OrderDelivery['currency'];

    var text =
        "<form name='headFormDelivery' action='" + url + "' method='post'>" +
        "<input hidden name='index' type='number' value='" + OrderDelivery['index'] + "'>" +
        "<button class='orderbutton'>" +
        "Доставка" +
        "</button>&nbsp;&nbsp;" + value +
        "</form>";
    getOrderDeliveryBlock().innerHTML = text;
}

function onSubmitOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var arr = OrderDelivery['form'];
    var form = getDeliveryForm();

    for (var i = 0; i < arr.length; i++)
        OrderDelivery[arr[i]] = form[arr[i]].value;

    setOrderDeliveryStorage(OrderDelivery);
}

function openOrderDeliveryPage() {
    getOrderDeliveryBlock().querySelector('form').submit();
}

function onLoadOrderDeliveryPage() {

    var OrderDelivery = getOrderDeliveryStorage();
    var arr = OrderDelivery['form'];
    var form = getDeliveryForm();

    for (var i = 0; i < arr.length; i++)
        form[arr[i]].value = OrderDelivery[arr[i]];

    getDeliveryValueBlock().innerHTML = OrderDelivery['value'] + " " + OrderDelivery['currency'];
}