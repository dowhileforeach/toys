package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
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

    @RequestMapping(value = "/shoppingcart")
    public String shoppingCart(ModelMap model)
    {
//        ObjectMapper mapper = new ObjectMapper();
//        List<Item> list = new ArrayList<>();
//        try
//        {
//            ArrayNode root = (ArrayNode) mapper.readTree(shoppingcart);
//            for (JsonNode node: root){
//                Long article = node.path("article").asLong();
//                Integer qtty = node.path("qtty").asInt();
//                Item item = new Item();
//                item.setArticle(article);
//                item.setQtty(qtty);
//                list.add(item);
//            }
//        }
//        catch (IOException e)
//        {
//            e.printStackTrace();
//        }
//
//        System.out.println("1)shoppingcart=" + list);
//        List<Stock> info = appService.findAll(list.stream()
//                .map(Item::getArticle)
//                .collect(Collectors.toSet()));
//
//        for (Item item : list)
//        {
//            Stock stock = new Stock(item.getArticle());
//            item.setStock(info.get(info.indexOf(stock)));
//        }

        List<Item> list = new ArrayList<>();
        list.add(new Item(1L));
        list.add(new Item(2L));
        list.add(new Item(3L));

        System.out.println("2)shoppingcart=" + list);
        model.put("shoppingcart", list);

        return "shoppingcart";
    }
    @RequestMapping(value = "/orderdelivery")
    public String orderDelivery(Map<String, Object> model, @RequestParam Map<String, String> params)
    {
        return "orderdelivery";
    }

    @RequestMapping(value = "/orderfinal", method = RequestMethod.POST)
    public String orderFinal(Map<String, Object> model, @RequestBody List<ShoppingCart> shoppingcart)
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

        model.put("shoppingcart", shoppingcart);
        return "orderfinal";
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