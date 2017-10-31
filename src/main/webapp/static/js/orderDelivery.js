function getOrderDeliveryStorage() {

    if (localStorage.OrderDelivery === undefined)
        setOrderDeliveryStorage({});

    return JSON.parse(localStorage.OrderDelivery);
}

function setOrderDeliveryStorage(newValue) {
    localStorage.setItem("OrderDelivery", JSON.stringify(newValue));
}

function getOrderDeliveryBlock() {
    return document.querySelector(".orderDeliveryBlock");
}

function controlOrderDelivery() {

    var OrderDelivery = getOrderDeliveryStorage();
    var url = localStorage.contextPath + "/orderdelivery";
    var totalSum = 0;
    var text =
        "<a class='orderbutton' href='" + url + "'>" +
        "<strong>Доставка</strong>" +
        "</a>&nbsp;&nbsp;<strong>" + totalSum + "</strong> руб.";
    getOrderDeliveryBlock().innerHTML = text;
}
