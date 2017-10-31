package ru.dwfe.toys;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;

import java.beans.PropertyEditorSupport;
import java.io.IOException;

public class ItemEditor extends PropertyEditorSupport
{
    @Override
    public void setAsText(String text) throws IllegalArgumentException
    {
        ObjectMapper mapper = new ObjectMapper();
        Item item = new Item(1L);

        try
        {
            ArrayNode root = (ArrayNode) mapper.readTree(text);
            for (JsonNode node: root){
                Long article = node.path("article").asLong();
                Integer qtty = node.path("qtty").asInt();
                item.setArticle(article);
                item.setQtty(qtty);
            }
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        setValue(item);
    }
}
