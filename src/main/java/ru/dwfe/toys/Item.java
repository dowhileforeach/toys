package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "item")
public class Item
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

    @Column(name = "img")
    private String img;

    @Column(name = "img02")
    private String img02;

    @Column(name = "img03")
    private String img03;

    @Column(name = "img04")
    private String img04;

    @Column(name = "img05")
    private String img05;

    @Column(name = "img06")
    private String img06;

    @Column(name = "img07")
    private String img07;

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

    public String getImg()
    {
        return img;
    }

    public void setImg(String img)
    {
        this.img = img;
    }

    public String getImg02()
    {
        return img02;
    }

    public void setImg02(String img02)
    {
        this.img02 = img02;
    }

    public String getImg03()
    {
        return img03;
    }

    public void setImg03(String img03)
    {
        this.img03 = img03;
    }

    public String getImg04()
    {
        return img04;
    }

    public void setImg04(String img04)
    {
        this.img04 = img04;
    }

    public String getImg05()
    {
        return img05;
    }

    public void setImg05(String img05)
    {
        this.img05 = img05;
    }

    public String getImg06()
    {
        return img06;
    }

    public void setImg06(String img06)
    {
        this.img06 = img06;
    }

    public String getImg07()
    {
        return img07;
    }

    public void setImg07(String img07)
    {
        this.img07 = img07;
    }

    @Override
    public String toString()
    {
        return "Item{" +
                "article=" + article +
                ", title='" + title + '\'' +
                ", material='" + material + '\'' +
                ", color='" + color + '\'' +
                ", size='" + size + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Item item = (Item) o;

        return article.equals(item.article);
    }

    @Override
    public int hashCode()
    {
        return article.hashCode();
    }
}
