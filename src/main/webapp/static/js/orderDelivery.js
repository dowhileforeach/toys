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
    var text = "<a class='orderbutton' href='" + url + "'><strong>Доставка</strong></a>&nbsp;&nbsp;";

    if (totalSum > 0)
        text += "<strong>" + totalSum + "</strong> руб.";
    else
        text += " 0 руб.";
    getOrderDeliveryBlock().innerHTML = text;
}
