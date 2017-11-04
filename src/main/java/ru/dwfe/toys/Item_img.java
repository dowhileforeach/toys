package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "item_img")
public class Item_img
{
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private Long article;

    @Column
    private String img;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getArticle()
    {
        return article;
    }

    public void setArticle(Long article)
    {
        this.article = article;
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
        return "Item_img{" +
                "article=" + article +
                ", img='" + img + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Item_img item_img = (Item_img) o;

        return id.equals(item_img.id);
    }

    @Override
    public int hashCode()
    {
        return id.hashCode();
    }
}
