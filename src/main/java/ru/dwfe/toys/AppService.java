package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("appService")
public class AppService
{
    private final DAO dao;

    @Autowired
    public AppService(DAO dao)
    {
        this.dao = dao;
    }

    public List<Stock> findAll()
    {
        return dao.findAll();
    }

    public Stock findOne(Long article)
    {
        return dao.findOne(article);
    }

}
