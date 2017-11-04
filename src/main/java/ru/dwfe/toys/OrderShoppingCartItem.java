package ru.dwfe.toys;


public class OrderShoppingCartItem
{
    private Long article;
    private Integer qtty;


    private Item item;

    public Integer getQtty()
    {
        return qtty;
    }

    public void setQtty(Integer qtty)
    {
        this.qtty = qtty;
    }

    public Item getItem()
    {
        return item;
    }

    public void setItem(Item item)
    {
        this.item = item;
    }

    public Long getArticle()
    {
        return article;
    }

    public void setArticle(Long article)
    {
        this.article = article;
    }
}
