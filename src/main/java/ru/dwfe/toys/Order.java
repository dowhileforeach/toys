package ru.dwfe.toys;

public class Order
{
    private Long id;
    private OrderCustomer customer;
    private OrderShoppingCart shoppingCart;
    private OrderDelivery delivery;
    private Integer value;

    public Order(OrderShoppingCart shoppingCart, OrderDelivery delivery)
    {
        this.shoppingCart = shoppingCart;
        this.delivery = delivery;

        value = shoppingCart.getValue() + delivery.getValue();
    }


    public OrderShoppingCart getShoppingCart()
    {
        return shoppingCart;
    }

    public OrderDelivery getDelivery()
    {
        return delivery;
    }

    public Integer getValue()
    {
        return value;
    }
}
