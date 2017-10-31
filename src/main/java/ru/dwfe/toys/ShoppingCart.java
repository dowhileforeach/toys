package ru.dwfe.toys;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart<T>
{
    private List<T> list = new ArrayList<>();

    public List<T> getList()
    {
        return list;
    }

    public void setList(List<T> list)
    {
        this.list = list;
    }

    public void addItem(T item)
    {
        list.add(item);
    }

    @Override
    public String toString()
    {
        return "ShoppingCart{" +
                "list=" + list +
                '}';
    }
}

