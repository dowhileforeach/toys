package ru.dwfe.toys;

public class ShoppingCartItem
{
    private Long article;
    private Integer qtty;
    private Stock stock;

    public Integer getQtty()
    {
        return qtty;
    }

    public void setQtty(Integer qtty)
    {
        this.qtty = qtty;
    }

    public Stock getStock()
    {
        return stock;
    }

    public void setStock(Stock stock)
    {
        this.stock = stock;
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
