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

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public OrderCustomer getCustomer()
    {
        return customer;
    }

    public void setCustomer(OrderCustomer customer)
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

    public Integer getValue()
    {
        return value;
    }

    public void setValue(Integer value)
    {
        this.value = value;
    }
}
