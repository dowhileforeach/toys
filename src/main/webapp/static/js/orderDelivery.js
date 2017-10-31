function getOrderDeliveryStorage() {

    if (localStorage.OrderDelivery === undefined
        || localStorage.OrderDelivery === "undefined")
        setOrderDeliveryStorage({
            'index': 0,
            'country': '',
            'address': '',
            'name': '',
            'phone': '',
            'value': ''
        });

    return JSON.parse(localStorage.OrderDelivery);
}

function setOrderDeliveryStorage(newValue) {
    localStorage.setItem("OrderDelivery", JSON.stringify(newValue));
    controlOrderDelivery();
}

function setDeliveryValue(deliveryValue) {
    var OrderDelivery = getOrderDeliveryStorage();
    OrderDelivery['value'] = deliveryValue;
    setOrderDeliveryStorage(OrderDelivery);
}

function isDeliveryPresent() {
    return Object.keys(getOrderDeliveryStorage()).length > 0;
}

function getOrderDeliveryBlock() {
    return document.querySelector(".orderDeliveryBlock");
}

function getDeliveryValue(OrderDelivery) {
    var deliveryValue = +OrderDelivery['value'];
    if (isNaN(+deliveryValue) || !isFinite(+deliveryValue) || +deliveryValue < 0) {
        deliveryValue = 0;
        OrderDelivery['value'] = deliveryValue;
    }
    return deliveryValue;
}

function controlOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var url = localStorage.contextPath + "/orderdelivery";

    var index = OrderDelivery['index'];
    if (index === undefined) index = 0;

    var totalSum = getDeliveryValue(OrderDelivery);

    var text =
        "<form name='headFormDelivery' action='" + url + "' method='post'>" +
        "<input hidden name='index' type='number' value='" + index + "'>" +
        "<button class='orderbutton'>" +
        "Доставка" +
        "</button>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб." +
        "</form>";
    getOrderDeliveryBlock().innerHTML = text;
}

function onSubmitOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var form = document.forms['orderDelivery'];

    for (var prop in OrderDelivery) {
        if (prop === 'value') continue;
        OrderDelivery[prop] = form[prop].value;
    }
    setOrderDeliveryStorage(OrderDelivery);
}

function openOrderDeliveryPage() {
    getOrderDeliveryBlock().querySelector('form').submit();
}

function onLoadOrderDeliveryPage() {

    var OrderDelivery = getOrderDeliveryStorage();
    var form = document.forms['orderDelivery'];

    for (var prop in OrderDelivery) {
        if (prop === 'value') continue;
        form[prop].value = OrderDelivery[prop];
    }
    document.querySelector(".deliveryValue .price").innerHTML = getDeliveryValue(OrderDelivery) + " руб.";
}