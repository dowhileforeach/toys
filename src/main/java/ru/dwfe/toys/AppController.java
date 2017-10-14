package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class AppController
{
    private final AppService appService;

    @Autowired
    public AppController(AppService appService)
    {
        this.appService = appService;
    }

    @RequestMapping("/")
    public String index()
    {
        return "index";
    }

    @RequestMapping("/about")
    public String about()
    {
        return "about";
    }

    @RequestMapping("/basket")
    public String basket()
    {
        return "basket";
    }

    @RequestMapping("/delivery")
    public String delivery()
    {
        return "delivery";
    }

    @RequestMapping("/shop")
    public String shop(Map<String, Object> model)
    {
        List<Stock> list = appService.findAll();
        model.put("list", list);
        return "shop";
    }

    @RequestMapping("/item")
    public String item(Map<String, Object> model, @RequestParam Map<String, String> params)
    {
        List<Stock> list = appService.findAll();
        Stock item = appService.findOne(Long.parseLong(params.get("article")));

        list.remove(item);
        model.put("list", list);
        model.put("item", item);
        return "shop";
    }
}