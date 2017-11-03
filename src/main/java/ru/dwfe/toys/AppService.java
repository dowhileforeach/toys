package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service("appService")
public class AppService
{
    private final DAO dao;

    @Autowired
    public AppService(DAO dao)
    {
        this.dao = dao;
    }

    public List<Item> findAll()
    {
        return dao.findAll();
    }

    public Item findOne(Long article)
    {
        return dao.findOne(article);
    }

    public List<Item> findAll(Set<Long> ids){
        return dao.findAll(ids);
    }

}
