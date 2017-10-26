package ru.dwfe.toys;

public class ShoppingCart{

    private Long article;
    private int qtty;
    private Stock stock;

    public Long getArticle()
    {
        return article;
    }

    public void setArticle(Long article)
    {
        this.article = article;
    }

    public int getQtty()
    {
        return qtty;
    }

    public void setQtty(int qtty)
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

    @Override
    public String toString()
    {
        return "ShoppingCart{" +
                "article=" + article +
                ", qtty=" + qtty +
                ", stock=" + stock +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ShoppingCart that = (ShoppingCart) o;

        return article.equals(that.article);
    }

    @Override
    public int hashCode()
    {
        return article.hashCode();
    }
}
