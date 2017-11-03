package ru.dwfe.toys;

public class OrderCustomer
{
    private Long id;
    private String name;
    private String phone;
    private String email;

    public OrderCustomer(String name, String phone, String email)
    {
        this.name = name;
        this.phone = phone;
        this.email = email;
    }
}
