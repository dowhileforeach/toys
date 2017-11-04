package ru.dwfe.toys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class OrderCustomer
{
    @Id
    @Column
    private String email;

    @Column
    private String name;

    @Column
    private String phone;

    public OrderCustomer()
    {
    }

    public OrderCustomer(String name, String phone, String email)
    {
        this.email = email;
        this.name = name;
        this.phone = phone;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
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

    @Override
    public String toString()
    {
        return "OrderCustomer{" +
                "email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderCustomer that = (OrderCustomer) o;

        return email.equals(that.email);
    }

    @Override
    public int hashCode()
    {
        return email.hashCode();
    }
}
