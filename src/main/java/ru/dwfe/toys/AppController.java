package ru.dwfe.toys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController
{
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
    public String shop()
    {
        return "shop";
    }
}