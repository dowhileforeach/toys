package ru.dwfe.toys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_delivery")
public class OrderDelivery
{
    @Id
    @Column(name = "order_id")
    private Long orderId;

    @Column
    private String index;

    @Column
    private String country;

    @Column
    private String address;

    @Column
    private String name;

    @Column
    private String phone;

    public OrderDelivery(String index, String country, String address, String name, String phone)
    {
        this.index = index;
        this.country = country;
        this.address = address;
        this.name = name;
        this.phone = phone;
    }

    public Long getOrderId()
    {
        return orderId;
    }

    public void setOrderId(Long orderId)
    {
        this.orderId = orderId;
    }

    public String getIndex()
    {
        return index;
    }

    public void setIndex(String index)
    {
        this.index = index;
    }

    public String getCountry()
    {
        return country;
    }

    public void setCountry(String country)
    {
        this.country = country;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }
}

