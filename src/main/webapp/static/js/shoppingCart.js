'use strict';

function getShoppingCartStorage() {

    if (localStorage.ShoppingCart === undefined)
        setShoppingCartStorage({});

    return JSON.parse(localStorage.ShoppingCart);
}

function setShoppingCartStorage(newValue) {
    localStorage.setItem("ShoppingCart", JSON.stringify(newValue));
    controlShoppingCart();
    controlOrderConfirm();
}

function toZeroShoppingCart() {
    setShoppingCartStorage({});
}

function isShoppingCartPresent() {
    return Object.keys(getShoppingCartStorage()).length > 0;
}

function getShoppingCartBlock() {
    return document.querySelector(".shoppingCartBlock");
}

function getShoppingCartTotal() {
    let ShoppingCart = getShoppingCartStorage();
    let totalQuantity = 0;
    let totalSum = 0;
    let arr = [];

    for (let prop in ShoppingCart) {
        let item = ShoppingCart[prop];
        totalQuantity += +item.qtty;
        totalSum += +item.qtty * +item.price;

        arr.push({
            'article': prop,
            'qtty': item.qtty
        });
    }

    return {
        'totalQuantity': totalQuantity,
        'totalSum': totalSum,
        'arr': arr
    };
}

function getShoppingCartTag(arr) {
    return `<input name='shoppingcart' type='hidden' value='${JSON.stringify(arr)}'>`;
}

function controlShoppingCart() {

    let res = getShoppingCartTotal();
    let url = localStorage.contextPath + "/shoppingcart";
    let value = '';
    if (res.totalQuantity === 0)
        url = localStorage.contextPath + "/shop";
    else
        value = `<strong>${res.totalSum}</strong> руб.`;

    getShoppingCartBlock().innerHTML =
        `<form name='shoppingCartForm' action='${url}' method='post'>
            ${getShoppingCartTag(res.arr)}
            <button class='orderbutton' type='submit'>
                Корзина (<strong>${res.totalQuantity}</strong>)
            </button>&nbsp;&nbsp;${value} 
        </form>`;
}

function addItemToTheShoppingCart(article, _price) {

    article += "";
    let quantity = 1;
    let ShoppingCart = getShoppingCartStorage();
    let saved = false;

    for (let prop in ShoppingCart)
        if (prop === article) {
            let item = ShoppingCart[prop];
            item.qtty = +item.qtty + quantity;
            saved = true;
            break;
        }

    if (!saved)
        ShoppingCart[article] = {
            qtty: quantity,
            price: _price
        };

    setShoppingCartStorage(ShoppingCart);
}

function sendShoppingCartToTheServer() {

    getShoppingCartBlock().querySelector("form").submit();

}

function refreshShoppingCart(article, input) {

    let qtty = input.value;
    let ShoppingCart = getShoppingCartStorage();

    if (!ShoppingCart.hasOwnProperty(article)) return;

    if (isNaN(+qtty) || !isFinite(+qtty) || +qtty < 0) {
        input.value = ShoppingCart[article].qtty;
        return;
    }
    else if (+qtty === 0) {
        deleteItemFromShoppingCart(article);
        return;
    }

    ShoppingCart[article].qtty = qtty;

    setShoppingCartStorage(ShoppingCart);
    sendShoppingCartToTheServer();
}

function deleteItemFromShoppingCart(article) {

    let ShoppingCart = getShoppingCartStorage();

    if (!ShoppingCart.hasOwnProperty(article)) return;

    delete ShoppingCart[article];

    setShoppingCartStorage(ShoppingCart);
    sendShoppingCartToTheServer();
}