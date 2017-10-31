package ru.dwfe.toys;

class Item
{
    private Long article;
    private int qtty;
    private int price;
//    private Stock stock;

    public Item(long l)
    {
        this.article = l;
    }

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

    public int getPrice()
    {
        return price;
    }

    public void setPrice(int price)
    {
        this.price = price;
    }

//    public Stock getStock()
//    {
//        return stock;
//    }
//
//    public void setStock(Stock stock)
//    {
//        this.stock = stock;
//    }

    @Override
    public String toString()
    {
        return "Item{" +
                "article=" + article +
                ", qtty=" + qtty +
                ", price=" + price +
//                ", stock=" + stock +
                '}';
    }
}
