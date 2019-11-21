package com.mingchang.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mingchang.model.ImageCard;
import com.mingchang.service.ImageCardService;

@Controller
@RequestMapping("/home")
public class HomeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ImageCardService imageCardService;

    @RequestMapping("/")
    public String homepage(Map<String, Object> map) {
        // connect database way
        // https://www.jetbrains.com/help/datagrip/how-to-connect-to-heroku-postgres.html
        List<ImageCard> listImageCard = imageCardService.listImageCard();
        map.put("imageCardList", listImageCard);
        logger.debug(listImageCard.toString());
        return "home";
    }

    @RequestMapping(value = "/addImg", method = RequestMethod.GET)
    public String addImageCardPage(@ModelAttribute("imageCard") ImageCard imageCard, Map<String, Object> map) {
        List<ImageCard> listImageCard = imageCardService.listImageCard();
        map.put("imageCardList", listImageCard);
        return "addImg";
    }

    @RequestMapping(value = "/addImg", method = RequestMethod.POST)
    public String addImageCard(@ModelAttribute("imageCard") ImageCard imageCard) {
        System.out.println("sysout" + imageCard.getName());
        System.out.println("sysout" + imageCard.getDescription());
        System.out.println("sysout" + imageCard.getMoreDetail());
        System.out.println("sysout" + "給我中文");
        imageCardService.addImageCard(imageCard);
        return "redirect:/home/";
    }

    @RequestMapping("/delete/{imgId}")
    public String deletePerson(@PathVariable("imgId") Integer imgId) {
        imageCardService.removeImageCard(imgId);
        return "redirect:/home/";
    }

    @RequestMapping("/about")
    public String about(Map<String, Object> map) {
        return "about";
    }

    @RequestMapping("/service")
    public String service(Map<String, Object> map) {
        return "service";
    }

    @RequestMapping("/contact")
    public String contact(Map<String, Object> map) {
        return "contact";
    }
}
