package ru.dwfe.toys;

public class Delivery
{
    private int value;
    private String valueReturn;
    private String currency = "руб.";
    private int isCorrect = 1;

    public Delivery(String indexValue)
    {
        calculation(indexValue);

        valueReturn = value + "";

        if (value == 0)
        {
            valueReturn = "не рассчитана";
            isCorrect = 0;
            currency = "";
        }
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

    }

    public String getValueReturn()
    {
        return valueReturn;
    }

    public String getCurrency()
    {
        return currency;
    }

    public int getIsCorrect()
    {
        return isCorrect;
    }

    public int getValue()
    {
        return value;
    }
}

