package ru.dwfe.toys;

public class Order
{
    private Long id;
    private OrderCustomer customer;
    private OrderShoppingCart shoppingCart;
    private OrderDelivery delivery;

    public Order(OrderShoppingCart shoppingCart, OrderDelivery delivery)
    {
        this.shoppingCart = shoppingCart;
        this.delivery = delivery;
    }

    public OrderShoppingCart getShoppingCart()
    {
        return shoppingCart;
    }

    public OrderDelivery getDelivery()
    {
        return delivery;
    }
}
