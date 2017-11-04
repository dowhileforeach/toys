package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "`order`")
public class Order
{
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String customer;

    @Column(name = "delivery_value")
    private Integer deliveryValue;

    @Column
    private Integer value;

    @Transient
    private OrderShoppingCart shoppingCart;
    @Transient
    private OrderDelivery delivery;

    public Order()
    {
    }

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

    public String getCustomer()
    {
        return customer;
    }

    public void setCustomer(String customer)
    {
        this.customer = customer;
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

    @Override
    public String toString()
    {
        return "Order{" +
                "id=" + id +
                ", customer='" + customer + '\'' +
                ", deliveryValue=" + deliveryValue +
                ", value=" + value +
                ", shoppingCart=" + shoppingCart +
                ", delivery=" + delivery +
                '}';
    }
}
