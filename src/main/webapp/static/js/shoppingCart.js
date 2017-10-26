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

    if (totalQuantity > 0)
        text += "<a href='#' onclick='sendShoppingCartToTheServer()'>Корзина (<strong>" + totalQuantity + "</strong>)</a><br>итого: <strong>" + totalSum + "</strong> руб.";
    else
        text += "<strong>Корзина</strong> пустая";
    getShoppingCartBlock().innerHTML = text;
}

function addItemToTheShoppingCart(article, quantity, _price) {

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

function sendShoppingCartToTheServer() {

    var ShoppingCart = getShoppingCartStorage();
    var arr = [];
    for (var prop in ShoppingCart)
        arr.push({
            'article': prop,
            'qtty': ShoppingCart[prop].qtty
        });

    var req = new XMLHttpRequest();
    var url = localStorage.contextPath + "/shoppingcart";
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
