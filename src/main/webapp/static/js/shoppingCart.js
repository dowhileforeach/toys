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

    for (var prop in ShoppingCart) {
        var item = ShoppingCart[prop];
        totalQuantity += +item.qtty;
        totalSum += +item.qtty * +item.price;
    }

    var shoppingCartURL = "\"" + localStorage.contextPath + "/shoppingcart" + "\"";
    var text = "<strong>Корзина</strong> пуста";
    if (totalQuantity > 0)
        text = "<a href=" + shoppingCartURL + ">Корзина (<strong>" + totalQuantity + "</strong>)</a><br>итого: <strong>" + totalSum + "</strong> руб.";
    getShoppingCartBlock().innerHTML = text;
}

function addItemToTheShoppingCart(article, quantity, _price) {

    var ShoppingCart = getShoppingCartStorage();
    var saved = false;

    debugger;
    for (var prop in ShoppingCart) {
        if (prop === article) {
            var item = ShoppingCart[prop];
            debugger;
            item.qtty = +item.qtty + quantity;
            saved = true;
            break;
        }
    }

    if (!saved)
        ShoppingCart[article] = {
            qtty: quantity,
            price: _price
        };

    setShoppingCartStorage(ShoppingCart);
    controlShoppingCart();
}

