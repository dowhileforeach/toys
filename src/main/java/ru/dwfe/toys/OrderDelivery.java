package ru.dwfe.toys;

public class OrderDelivery
{
    private Integer isCorrect = 1;
    private String currency = "руб.";
    private String valueReturn;

    private String email;
    private String index;
    private String country;
    private String address;
    private String name;
    private String phone;
    private Integer value;

    public OrderDelivery(String index)
    {
        calculation(index);
    }

    public OrderDelivery(String index, String country, String address, String name, String phone)
    {
        this.index = index;
        this.country = country;
        this.address = address;
        this.name = name;
        this.phone = phone;

        calculation(index);
    }

    private void calculation(String indexValue)
    {
        int index = 1;
        try
        {
            index = Integer.parseInt(indexValue);
        }
        catch (NumberFormatException ignored)
        {
        }

        if (index == 1)
            value = 0;
        else if (index > 1 && index <= 100_000)
            value = 300;
        else if (index > 100_000 && index <= 200_000)
            value = 400;
        else if (index > 200_000 && index <= 300_000)
            value = 500;
        else if (index > 300_000 && index <= 400_000)
            value = 600;
        else if (index > 400_000 && index <= 500_000)
            value = 700;
        else
            value = 800;


        valueReturn = value + "";
        if (value == 0)
        {
            valueReturn = "не рассчитана";
            isCorrect = 0;
            currency = "";
        }
    }

    public String getValueReturn()
    {
        return valueReturn;
    }

    public String getCurrency()
    {
        return currency;
    }

    public Integer getIsCorrect()
    {
        return isCorrect;
    }

    public Integer getValue()
    {
        return value;
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

