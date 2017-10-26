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

    @Column(name = "img02")
    private String img02;

    @Column(name = "img02_sm")
    private String img02_sm;

    @Column(name = "img03")
    private String img03;

    @Column(name = "img03_sm")
    private String img03_sm;

    @Column(name = "img04")
    private String img04;

    @Column(name = "img04_sm")
    private String img04_sm;

    @Column(name = "img05")
    private String img05;

    @Column(name = "img05_sm")
    private String img05_sm;

    @Column(name = "img06")
    private String img06;

    @Column(name = "img06_sm")
    private String img06_sm;

    @Column(name = "img07")
    private String img07;

    @Column(name = "img07_sm")
    private String img07_sm;

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

    public String getImg02()
    {
        return img02;
    }

    public void setImg02(String img02)
    {
        this.img02 = img02;
    }

    public String getImg02_sm()
    {
        return img02_sm;
    }

    public void setImg02_sm(String img02_sm)
    {
        this.img02_sm = img02_sm;
    }

    public String getImg03()
    {
        return img03;
    }

    public void setImg03(String img03)
    {
        this.img03 = img03;
    }

    public String getImg03_sm()
    {
        return img03_sm;
    }

    public void setImg03_sm(String img03_sm)
    {
        this.img03_sm = img03_sm;
    }

    public String getImg04()
    {
        return img04;
    }

    public void setImg04(String img04)
    {
        this.img04 = img04;
    }

    public String getImg04_sm()
    {
        return img04_sm;
    }

    public void setImg04_sm(String img04_sm)
    {
        this.img04_sm = img04_sm;
    }

    public String getImg05()
    {
        return img05;
    }

    public void setImg05(String img05)
    {
        this.img05 = img05;
    }

    public String getImg05_sm()
    {
        return img05_sm;
    }

    public void setImg05_sm(String img05_sm)
    {
        this.img05_sm = img05_sm;
    }

    public String getImg06()
    {
        return img06;
    }

    public void setImg06(String img06)
    {
        this.img06 = img06;
    }

    public String getImg06_sm()
    {
        return img06_sm;
    }

    public void setImg06_sm(String img06_sm)
    {
        this.img06_sm = img06_sm;
    }

    public String getImg07()
    {
        return img07;
    }

    public void setImg07(String img07)
    {
        this.img07 = img07;
    }

    public String getImg07_sm()
    {
        return img07_sm;
    }

    public void setImg07_sm(String img07_sm)
    {
        this.img07_sm = img07_sm;
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
