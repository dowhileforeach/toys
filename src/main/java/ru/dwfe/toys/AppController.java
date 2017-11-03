package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "/shoppingcart", method = RequestMethod.POST)
    public String shoppingCart(ModelMap model, @RequestParam String shoppingcart)
    {
        ShoppingCart shoppingCart = new ShoppingCart(shoppingcart, appService);

        model.put("shoppingcart", shoppingCart.getCart());

        return "shoppingcart";
    }

    @RequestMapping(value = "/orderdelivery", method = RequestMethod.POST)
    public String orderDelivery(ModelMap model, @RequestParam("index") String indexValue)
    {
        Delivery delivery = new Delivery(indexValue);

        model.put("deliveryValue", delivery.getValueReturn());
        model.put("currency", delivery.getCurrency());
        model.put("isDeliveryCorrect", delivery.getIsCorrect());

        return "orderdelivery";
    }

    @RequestMapping(value = "/orderfinal", method = RequestMethod.POST)
    public String orderFinal(ModelMap model,
                             @RequestParam String shoppingcart,
                             @RequestParam("index") String indexValue)
    {
        ShoppingCart shoppingCart = new ShoppingCart(shoppingcart, appService);
        Delivery delivery = new Delivery(indexValue);

        model.put("shoppingcart", shoppingCart.getCart());
        model.put("deliveryValue", delivery.getValueReturn());
        model.put("currency", delivery.getCurrency());
        model.put("isDeliveryCorrect", delivery.getIsCorrect());

        return "orderfinal";
    }

    @RequestMapping("/shop")
    public String shop(ModelMap model)
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