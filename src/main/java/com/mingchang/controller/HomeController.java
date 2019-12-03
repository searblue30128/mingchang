package com.mingchang.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.binary.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
        String name = transferUTF8(imageCard.getName());
        imageCard.setName(name);
        String description = transferUTF8(imageCard.getDescription());
        imageCard.setDescription(description);
        String moreDetail = transferUTF8(imageCard.getMoreDetail());
        imageCard.setMoreDetail(moreDetail);
        imageCardService.addImageCard(imageCard);
        return "redirect:/home/addImg";
    }

    @RequestMapping("/delete/{imgId}")
    public String deletePerson(@PathVariable("imgId") Integer imgId) {
        imageCardService.removeImageCard(imgId);
        return "redirect:/home/addImg";
    }

    @RequestMapping(value = "/showDetail/{imgId}", method = RequestMethod.GET)
    public String showDetailImageCardPage(@PathVariable String imgId, Map<String, Object> map) {
        System.out.println("imgId "+imgId);
        List<ImageCard> listImageCard = imageCardService.listImageCard();
        ImageCard imgCard = listImageCard
                                .stream()
                                .filter(obj -> obj.getId().toString().equals(imgId))
                                .findFirst()
                                .get();
        map.put("imageCard", imgCard);
        return "showDetail";
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

    private String transferUTF8(String str) {
        String result = "";
        try {
            result = new String(str.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            System.out.println(result + " 轉碼失敗 ");
            e.printStackTrace();
        }
        return result;
    }
}
