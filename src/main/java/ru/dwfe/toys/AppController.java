package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

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

    @RequestMapping(value = "/shoppingcart", method = RequestMethod.POST)
    public String shoppingCart(Map<String, Object> model, @RequestBody List<ShoppingCart> shoppingcart)
    {
        List<Stock> info = appService.findAll(
                shoppingcart.stream()
                        .map(ShoppingCart::getArticle)
                        .collect(Collectors.toSet()));

        for (ShoppingCart item : shoppingcart){
            Stock stock = new Stock();
            stock.setArticle(item.getArticle());
            item.setStock(info.get(info.indexOf(stock)));
        }

        model.put("shoppingcart", shoppingcart);
        return "shoppingcart";
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
        return "item";
    }
}