
function getOrderFinalBlock() {
    return document.querySelector(".orderFinalBlock");
}

function getOrderFinalBlockForm() {
    return document.querySelector(".orderFinalBlock form");
}

function controlOrderFinal() {

    var orderFinalBlock = getOrderFinalBlock();

    if (!isShoppingCartPresent() || !isDeliveryCorrect()) {
        orderFinalBlock.innerHTML = "";
        return;
    }

    var shoppingCart = getShoppingCartTotal();
    var url = localStorage.contextPath + "/orderfinal";

    orderFinalBlock.innerHTML =
        "<form action='" + url + "' method='post'>" +
        getShoppingCartTag(shoppingCart.arr) +
        getOrderDeliveryTag(getOrderDeliveryStorage()) +
        "<button class='orderbutton'>" +
        "Оформить заказ" +
        "</button>" +
        "</form>";
}