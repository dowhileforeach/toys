package ru.dwfe.toys;

public class DeliveryCalculation
{
    public static int perform(String indexValue)
    {
        int value;

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

        return value;
    }

    public static String getValueForUser(int value)
    {

        String res = String.valueOf(value);
        if (value == 0)
            res = "не рассчитана";

        return res;
    }

    public static int isCorrect(int value)
    {
        int res = 1;
        if (value == 0)
            res = 0;

        return res;
    }

    public static String getCurrency(int value)
    {
        String res = "руб.";
        if (value == 0)
            res = "";

        return res;
    }
}
