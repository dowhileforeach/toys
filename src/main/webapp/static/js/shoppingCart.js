function getShoppingCartStorage() {

    if (localStorage.ShoppingCart === undefined)
        setShoppingCartStorage({});

    return JSON.parse(localStorage.ShoppingCart);
}

function setShoppingCartStorage(newValue) {
    localStorage.setItem("ShoppingCart", JSON.stringify(newValue));
}

function getShoppingCartBlock() {
    return document.querySelector(".shoppingCartBlock");
}

function controlShoppingCart() {

    var ShoppingCart = getShoppingCartStorage();
    var totalQuantity = 0;
    var totalSum = 0;
    var text = "";

    for (var prop in ShoppingCart) {
        var item = ShoppingCart[prop];
        totalQuantity += +item.qtty;
        totalSum += +item.qtty * +item.price;
    }

    var arr = [];
    for (var prop in ShoppingCart)
        arr.push({
            'article': prop,
            'qtty': ShoppingCart[prop].qtty
        });

    // text +=
    //     "<form action='" + localStorage.contextPath + "/shoppingcart' method='post'>" +
    //     "<input name='shoppingcart' type='hidden' value='" + JSON.stringify(arr) + "'>" +
    //     "<button class='orderbutton' type='submit'>" +
    //     "Корзина (<strong>" + totalQuantity + "</strong>)" +
    //     "</button>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб." +
    //     "</form>";
    text +=
        "<a class='orderbutton' href='"+localStorage.contextPath+"/shoppingcart?shoppingcart="+JSON.stringify(arr)+"'>" +
        "Корзина (<strong>" + totalQuantity + "</strong>)" +
        "</a>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб.";
    getShoppingCartBlock().innerHTML = text;

    // if (totalQuantity > 0)
    //     text += "<a class='orderbutton' href='#' onclick='sendShoppingCartToTheServer()'>Корзина (<strong>" + totalQuantity + "</strong>)</a>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб.";
    // else
    //     text += "<strong>Корзина</strong> 0 руб.";
    // getShoppingCartBlock().innerHTML = text;
}

function addItemToTheShoppingCart(article, _price) {

    article += ""
    var quantity = 1;
    var ShoppingCart = getShoppingCartStorage();
    var saved = false;

    for (var prop in ShoppingCart)
        if (prop === article) {
            var item = ShoppingCart[prop];
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
    controlShoppingCart();
}

function sendShoppingCartToTheServer(point) {

    if (point === undefined) point = '/shoppingcart';
    var ShoppingCart = getShoppingCartStorage();
    var arr = [];
    for (var prop in ShoppingCart)
        arr.push({
            'article': prop,
            'qtty': ShoppingCart[prop].qtty
        });

    if (arr.length === 0) {
        window.location.replace(localStorage.contextPath + "/shop");
        return;
    }

    var req = new XMLHttpRequest();
    var url = localStorage.contextPath + point;
    req.open("post", url);
    req.setRequestHeader("content-type", "application/json");
    req.onreadystatechange = function () {
        if (req.readyState === 4 && req.status === 200) {
            document.open();
            document.write(req.responseText);
            document.close();
        }
    };
    req.send(JSON.stringify(arr));
}

function refreshShoppingCart(el) {

    var article = el.parentNode.parentNode.id;
    var input = el.parentNode.parentNode.querySelector("input");
    var qtty = input.value;
    var ShoppingCart = getShoppingCartStorage();

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

    var ShoppingCart = getShoppingCartStorage();

    if (!ShoppingCart.hasOwnProperty(article)) return;

    delete ShoppingCart[article];

    setShoppingCartStorage(ShoppingCart);
    sendShoppingCartToTheServer();
}