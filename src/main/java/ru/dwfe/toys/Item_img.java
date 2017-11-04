package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "item_img")
public class Item_img
{
    @Column
    private Long article;

    @Id
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
}
