package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "stock")
public class Stock
{
    @Id
    @Column(name = "article")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long article;

    @Column(name = "title")
    private String title;

    @Column(name = "material")
    private String material;

    @Column(name = "color")
    private String color;

    @Column(name = "size")
    private String size;

    @Column(name = "price")
    private Integer price;

    @Column(name = "img01")
    private String img01;

    @Column(name = "img01_sm")
    private String img01_sm;

//    @Column(name = "")
//    private String ;
//
//    @Column(name = "")
//    private String ;


    public Long getArticle()
    {
        return article;
    }

    public void setArticle(Long article)
    {
        this.article = article;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getMaterial()
    {
        return material;
    }

    public void setMaterial(String material)
    {
        this.material = material;
    }

    public String getColor()
    {
        return color;
    }

    public void setColor(String color)
    {
        this.color = color;
    }

    public String getSize()
    {
        return size;
    }

    public void setSize(String size)
    {
        this.size = size;
    }

    public Integer getPrice()
    {
        return price;
    }

    public void setPrice(Integer price)
    {
        this.price = price;
    }

    public String getImg01()
    {
        return img01;
    }

    public void setImg01(String img01)
    {
        this.img01 = img01;
    }

    public String getImg01_sm()
    {
        return img01_sm;
    }

    public void setImg01_sm(String img01_sm)
    {
        this.img01_sm = img01_sm;
    }

    @Override
    public String toString()
    {
        return "Stock{" +
                "article=" + article +
                ", title='" + title + '\'' +
                ", material='" + material + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", price=" + price +
                ", img01='" + img01 + '\'' +
                ", img01_sm='" + img01_sm + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Stock stock = (Stock) o;

        return article.equals(stock.article);
    }

    @Override
    public int hashCode()
    {
        return article.hashCode();
    }
}
