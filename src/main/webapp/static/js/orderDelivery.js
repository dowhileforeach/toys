'use strict';

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
            "isDeliveryCorrect": 0,
            'value': '',     //в доставке валюта отдельно, потому что
            'currency': '',   //могут быть варианты value без валюты, например, БЕСПЛАТНО и т.п.
        });
    return JSON.parse(localStorage.OrderDelivery);
}

function setOrderDeliveryStorage(newValue) {
    localStorage.setItem("OrderDelivery", JSON.stringify(newValue));
    controlOrderDelivery();
    controlOrderConfirm();
}

function toZeroOrderDelivery() {
    localStorage.setItem("OrderDelivery", undefined);
    getOrderDeliveryStorage();
}

function setDeliveryValue(deliveryValue, currency) {
    let OrderDelivery = getOrderDeliveryStorage();
    OrderDelivery['value'] = deliveryValue;
    OrderDelivery['currency'] = currency;
    setOrderDeliveryStorage(OrderDelivery);
}

function setIsDeliveryCorrect(value) {
    let OrderDelivery = getOrderDeliveryStorage();
    OrderDelivery['isDeliveryCorrect'] = value;
    setOrderDeliveryStorage(OrderDelivery);
}

function isDeliveryCorrect() {
    return getOrderDeliveryStorage()['isDeliveryCorrect'];
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

function getOrderDeliveryTag(OrderDelivery) {

    let arr = OrderDelivery['form'];
    let res = "";

    arr.forEach((item, i, arr) => {
        res += `<input hidden name='${item}' value='${OrderDelivery[item]}'>`;
    });

    return res;
}

function controlOrderDelivery() {

    let OrderDelivery = getOrderDeliveryStorage();
    let url = localStorage.contextPath + "/orderdelivery";

    let value = OrderDelivery['value'];
    if (value === '') value = 'не рассчитана';
    if (value !== 'не рассчитана')
        value = `<strong>${value}</strong> ${OrderDelivery['currency']}`;

    getOrderDeliveryBlock().innerHTML =
        `<form name='headFormDelivery' action='${url}' method='post'>
            ${getOrderDeliveryTag(OrderDelivery)}
            <button class='orderbutton'>
                Доставка
            </button>&nbsp;&nbsp;${value}
         </form>`;
}

function onSubmitOrderDelivery() {

    let OrderDelivery = getOrderDeliveryStorage();
    let form = getDeliveryForm();

    OrderDelivery['form'].forEach((item, i, arr) => {
        OrderDelivery[item] = form[item].value;
    });

    setOrderDeliveryStorage(OrderDelivery);
}

function openOrderDeliveryPage() {
    getOrderDeliveryBlock().querySelector('form').submit();
}

function onLoadOrderDeliveryPage() {

    let OrderDelivery = getOrderDeliveryStorage();
    let form = getDeliveryForm();

    OrderDelivery['form'].forEach((item, i, arr) => {
        form[item].value = OrderDelivery[item];
    });

    getDeliveryValueBlock().innerHTML = OrderDelivery['value'] + " " + OrderDelivery['currency'];
}