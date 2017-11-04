package ru.dwfe.toys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AppController
{
    private final AppService appService;

    private HashMap<String, Order> tempOrder = new HashMap<>();

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

    @RequestMapping("/shop")
    public String shop(ModelMap model)
    {
        List<Item> list = appService.findAllItems();
        model.put("list", list);
        return "shop";
    }

    @RequestMapping("/item")
    public String item(Map<String, Object> model, @RequestParam("article") String articleValue)
    {
        long article = Long.parseLong(articleValue);

        List<Item> list = appService.findAllItems();
        Item item = appService.findOneItem(article);
        List<Item_img> item_imgs = appService.searchByArticle(article);

        list.remove(item);
        model.put("list", list);
        model.put("item", item);
        model.put("item_imgs", item_imgs);
        return "item";
    }

    @RequestMapping(value = "/shoppingcart", method = RequestMethod.POST)
    public String shoppingCart(ModelMap model, @RequestParam String shoppingcart)
    {
        OrderShoppingCart shoppingCart = new OrderShoppingCart(shoppingcart, appService);

        model.put("shoppingcart", shoppingCart.getCart());

        return "shoppingcart";
    }

    @RequestMapping(value = "/orderdelivery", method = RequestMethod.POST)
    public String orderDelivery(ModelMap model, @RequestParam("index") String indexValue)
    {
        int value = DeliveryCalculation.perform(indexValue);

        model.put("deliveryValue", DeliveryCalculation.getValueForUser(value));
        model.put("currency", DeliveryCalculation.getCurrency(value));
        model.put("isDeliveryCorrect", DeliveryCalculation.isCorrect(value));

        return "orderdelivery";
    }

    @RequestMapping(value = "/orderconfirm", method = RequestMethod.POST)
    public String orderConfirm(ModelMap model,
                               @RequestParam String shoppingcart,
                               @RequestParam String index,
                               @RequestParam String country,
                               @RequestParam String address,
                               @RequestParam String name,
                               @RequestParam String phone)
    {
        OrderShoppingCart shoppingCart = new OrderShoppingCart(shoppingcart, appService);
        OrderDelivery delivery = new OrderDelivery(index, country, address, name, phone);
        Order order = new Order(shoppingCart, delivery);

        int requiredStringLength = 30;
        String hash = new BigInteger(requiredStringLength * 5, new SecureRandom()).toString(36);
        tempOrder.put(hash, order);

        model.put("hash", hash);
        model.put("shoppingcart", order.getShoppingCart().getCart());
        model.put("delivery",order.getDelivery());
        model.put("deliveryValue", order.getDeliveryValue());
        model.put("deliveryCurrency", DeliveryCalculation.getCurrency(order.getDeliveryValue()));
        model.put("orderValue", order.getValue());

        return "orderconfirm";
    }

    @RequestMapping(value = "/orderfinal", method = RequestMethod.POST)
    public String orderConfirm(ModelMap model,
                               @RequestParam String hash,
                               @RequestParam String name,
                               @RequestParam String phone,
                               @RequestParam String email)
    {
        Customer customer = new Customer(name, phone, email);
        appService.saveCustomer(customer);

        Order order = tempOrder.get(hash);

        order.setCustomer(customer);

        return "orderfinal";
    }
}