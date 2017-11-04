package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service("appService")
public class AppService
{
    private final DAO_Item daoItem;
    private final DAO_Item_img daoItem_img;
    private final DAO_Customer daoCustomer;
    private final DAO_OrderDelivery daoOrderDelivery;

    @Autowired
    public AppService(DAO_Item daoItem, DAO_Item_img daoItem_img, DAO_Customer daoCustomer, DAO_OrderDelivery daoOrderDelivery)
    {
        this.daoItem = daoItem;
        this.daoItem_img = daoItem_img;
        this.daoCustomer = daoCustomer;
        this.daoOrderDelivery = daoOrderDelivery;
    }

    public List<Item> findAllItems()
    {
        return daoItem.findAll();
    }

    public Item findOneItem(Long article)
    {
        return daoItem.findOne(article);
    }

    public List<Item> findAllItems(Set<Long> ids)
    {
        return daoItem.findAll(ids);
    }

    public List<Item_img> searchByArticle(Long article)
    {
        return daoItem_img.searchByArticle(article);
    }

    public void saveCustomer(Customer customer){
        daoCustomer.save(customer);
    }
}
