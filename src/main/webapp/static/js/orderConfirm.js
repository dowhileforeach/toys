
function getOrderConfirmBlock() {
    return document.querySelector(".orderConfirmBlock");
}

function getOrderConfirmBlockForm() {
    return document.querySelector(".orderConfirmBlock form");
}

function controlOrderConfirm() {

    var orderConfirmBlock = getOrderConfirmBlock();

    if (!isShoppingCartPresent() || !isDeliveryCorrect()) {
        orderConfirmBlock.innerHTML = "";
        return;
    }

    var shoppingCart = getShoppingCartTotal();
    var url = localStorage.contextPath + "/orderconfirm";

    orderConfirmBlock.innerHTML =
        "<form action='" + url + "' method='post'>" +
        getShoppingCartTag(shoppingCart.arr) +
        getOrderDeliveryTag(getOrderDeliveryStorage()) +
        "<button class='orderbutton'>" +
        "Оформить заказ" +
        "</button>" +
        "</form>";
}

function onSubmitOrderConfirm() {
    
}