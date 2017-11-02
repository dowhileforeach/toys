package ru.dwfe.toys;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ShoppingCart
{
    private List<ShoppingCartItem> cart = new ArrayList<>();

    public ShoppingCart(String shoppingcart, AppService appService)
    {
        ObjectMapper mapper = new ObjectMapper();
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
                cart.add(item);
            }
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        List<Stock> info = appService.findAll(cart.stream()
                .map(ShoppingCartItem::getArticle)
                .collect(Collectors.toSet()));

        Stock stock = new Stock();
        for (ShoppingCartItem item : cart)
        {
            stock.setArticle(item.getArticle());
            item.setStock(info.get(info.indexOf(stock)));
        }
    }

    public List<ShoppingCartItem> getCart()
    {
        return cart;
    }
}
