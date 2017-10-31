function getOrderDeliveryStorage() {

    if (localStorage.OrderDelivery === undefined)
        setOrderDeliveryStorage({});

    return JSON.parse(localStorage.OrderDelivery);
}

function setOrderDeliveryStorage(newValue) {
    localStorage.setItem("OrderDelivery", JSON.stringify(newValue));
    controlOrderDelivery();
}

function isDeliveryPresent() {
    return Object.keys(getOrderDeliveryStorage()).length > 0;
}

function getOrderDeliveryBlock() {
    return document.querySelector(".orderDeliveryBlock");
}

function controlOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var url = localStorage.contextPath + "/orderdelivery";
    var totalSum = 0;
    var text =
        "<form action='" + url + "' method='post'>" +
        "<input hidden name='index' type='number' value='" + 1 + "'>" +
        "<button class='orderbutton'>" +
        "<strong>Доставка</strong>" +
        "</button>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб."+
        "</form>";
    getOrderDeliveryBlock().innerHTML = text;
}

function onSendOrderDeliveryToTheServer() {

}