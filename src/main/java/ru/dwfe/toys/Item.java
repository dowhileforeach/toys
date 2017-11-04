package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "item")
public class Item
{
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long article;

    @Column
    private String title;

    @Column
    private String material;

    @Column
    private String color;

    @Column
    private String size;

    @Column
    private Integer price;

    @Column
    private String img;

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
