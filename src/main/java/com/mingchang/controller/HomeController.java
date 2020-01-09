package com.mingchang.controller;

import java.io.UnsupportedEncodingException;
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
import com.mingchang.model.PageUrl;
import com.mingchang.model.PageUrlForm;
import com.mingchang.service.ImageCardService;
import com.mingchang.service.PageUrlService;

@Controller
@RequestMapping("/home")
public class HomeController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ImageCardService imageCardService;
	@Autowired
	private PageUrlService pageUrlService;

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
		List<PageUrl> listPageUrl = pageUrlService.listPageUrl();
		PageUrlForm pageUrlForm = new PageUrlForm();
		for (PageUrl pageUrl : listPageUrl) {
			if ("about".equals(pageUrl.getParam())) {
				pageUrlForm.setAbout(pageUrl.getImgUrl());
			} else if ("service".equals(pageUrl.getParam())) {
				pageUrlForm.setService(pageUrl.getImgUrl());
			} else if ("contact".equals(pageUrl.getParam())) {
				pageUrlForm.setContact(pageUrl.getImgUrl());
			}
		}
		map.put("pageUrlForm", pageUrlForm);
		map.put("imageCardList", listImageCard);
		return "addImg";
	}

	@RequestMapping(value = "/addImg", method = RequestMethod.POST)
	public String addImageCard(@ModelAttribute("imageCard") ImageCard imageCard) {
		// String name = transferUTF8(imageCard.getName());
		String name = (imageCard.getName());
		imageCard.setName(name);
		// String description = transferUTF8(imageCard.getDescription());
		String description = (imageCard.getDescription());
		imageCard.setDescription(description);
		// String moreDetail = transferUTF8(imageCard.getMoreDetail());
		String moreDetail = (imageCard.getMoreDetail());
		imageCard.setMoreDetail(moreDetail);
		imageCardService.addImageCard(imageCard);
		return "redirect:/home/addImg";
	}

	@RequestMapping(value = "/updatePageUrl", method = RequestMethod.POST)
	public String updatePageUrl(@ModelAttribute("pageUrlForm") PageUrlForm pageUrlForm) {
		List<PageUrl> listPageUrl = pageUrlService.listPageUrl();
		for (PageUrl pageUrl : listPageUrl) {

			pageUrlService.update(pageUrl);
		}
		return "redirect:/home/addImg";
	}

	@RequestMapping("/delete/{imgId}")
	public String deletePerson(@PathVariable("imgId") Integer imgId) {
		imageCardService.removeImageCard(imgId);
		return "redirect:/home/addImg";
	}

	@RequestMapping(value = "/showDetail/{imgId}", method = RequestMethod.GET)
	public String showDetailImageCardPage(@PathVariable String imgId, Map<String, Object> map) {
		System.out.println("imgId " + imgId);
		List<ImageCard> listImageCard = imageCardService.listImageCard();
		ImageCard imgCard = null;
		for (ImageCard obj : listImageCard) {
			if (obj.getId().toString().equals(imgId)) {
				imgCard = obj;
			}
		}
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

	@SuppressWarnings("unused")
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
