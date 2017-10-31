package ru.dwfe.toys;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
    public String shoppingCart(Map<String, Object> model, @RequestParam String shoppingcart)
    {
        ObjectMapper mapper = new ObjectMapper();
        List<ShoppingCartItem> list = new ArrayList<>();
        try
        {
            ArrayNode root = (ArrayNode) mapper.readTree(shoppingcart);
            for (JsonNode node : root)
            {
                Long article = node.path("article").asLong();
                Integer qtty = node.path("qtty").asInt();
                ShoppingCartItem item = new ShoppingCartItem();
                item.setArticle(article);
                item.setQtty(qtty);
                list.add(item);
            }
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        List<Stock> info = appService.findAll(list.stream()
                .map(ShoppingCartItem::getArticle)
                .collect(Collectors.toSet()));

        Stock stock = new Stock();
        for (ShoppingCartItem item : list)
        {
            stock.setArticle(item.getArticle());
            item.setStock(info.get(info.indexOf(stock)));
        }

        model.put("shoppingcart", list);

        return "shoppingcart";
    }

    @RequestMapping(value = "/orderdelivery", method = RequestMethod.POST)
    public String orderDelivery(ModelMap model, @RequestParam("index") String indexValue)
    {
        int index = 1;
        try{
            index = Integer.parseInt(indexValue);
        }catch (NumberFormatException ignored){}

        int deliveryValue = 0;
        if (index>=1 && index<=100_000)
            deliveryValue = 1000;
        else if (index>100_000 && index<=200_000)
            deliveryValue = 1500;
        else if (index>200_000 && index<=300_000)
            deliveryValue = 1300;
        else if (index>300_000 && index<=400_000)
            deliveryValue = 1800;
        else if (index>400_000 && index<=500_000)
            deliveryValue = 800;
        else
            deliveryValue = 500;

        model.put("deliveryValue", deliveryValue);
        return "orderdelivery";
    }

    @RequestMapping(value = "/orderfinal", method = RequestMethod.POST)
    public String orderFinal(Map<String, Object> model)
    {
//        List<Stock> info = appService.findAll(
//                shoppingcart.stream()
//                        .map(ShoppingCart::getArticle)
//                        .collect(Collectors.toSet()));
//
//        for (ShoppingCart item : shoppingcart)
//        {
//            Stock stock = new Stock(item.getArticle());
//            item.setStock(info.get(info.indexOf(stock)));
//        }

        //model.put("shoppingcart", shoppingcart);
        return "orderfinal";
    }

    @RequestMapping("/shop")
    public String shop(Map<String, Object> model)
    {
        List<Stock> list = appService.findAll();
        model.put("list", list);
        return "shop";
    }

    @RequestMapping("/item")
    public String item(Map<String, Object> model, @RequestParam String article)
    {
        List<Stock> list = appService.findAll();
        Stock item = appService.findOne(Long.parseLong(article));

        list.remove(item);
        model.put("list", list);
        model.put("item", item);
        return "item";
    }
}