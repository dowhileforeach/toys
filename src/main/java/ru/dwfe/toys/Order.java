package ru.dwfe.toys;

public class Order
{
    private Long id;
    private Customer customer;
    private OrderShoppingCart shoppingCart;
    private OrderDelivery delivery;
    private Integer deliveryValue;
    private Integer value;

    public Order(OrderShoppingCart shoppingCart, OrderDelivery delivery)
    {
        this.shoppingCart = shoppingCart;
        this.delivery = delivery;

        deliveryValue = DeliveryCalculation.perform(delivery.getIndex());

        value = shoppingCart.getValue() + deliveryValue;
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Customer getCustomer()
    {
        return customer;
    }

    public void setCustomer(Customer customer)
    {
        this.customer = customer;
    }

    public OrderShoppingCart getShoppingCart()
    {
        return shoppingCart;
    }

    public void setShoppingCart(OrderShoppingCart shoppingCart)
    {
        this.shoppingCart = shoppingCart;
    }

    public OrderDelivery getDelivery()
    {
        return delivery;
    }

    public void setDelivery(OrderDelivery delivery)
    {
        this.delivery = delivery;
    }

    public Integer getDeliveryValue()
    {
        return deliveryValue;
    }

    public void setDeliveryValue(Integer deliveryValue)
    {
        this.deliveryValue = deliveryValue;
    }

    public Integer getValue()
    {
        return value;
    }

    public void setValue(Integer value)
    {
        this.value = value;
    }
}
