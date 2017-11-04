package ru.dwfe.toys;

import javax.persistence.*;

@Entity
@Table(name = "order_cart")
public class OrderShoppingCartItem
{
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "order_id")
    private Long orderId;

    @Column
    private Long article;

    @Column
    private Integer price;

    @Column
    private Integer qtty;

    @Transient
    private Item item;

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getOrderId()
    {
        return orderId;
    }

    public void setOrderId(Long orderId)
    {
        this.orderId = orderId;
    }

    public Long getArticle()
    {
        return article;
    }

    public void setArticle(Long article)
    {
        this.article = article;
    }

    public Integer getPrice()
    {
        return price;
    }

    public void setPrice(Integer price)
    {
        this.price = price;
    }

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
}
