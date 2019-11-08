package com.mingchang.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mingchang.service.PersonService;

@Controller
public class HomePageController {

	@Autowired
	private PersonService personService;

	@RequestMapping("/homepage")
	public String homepage(Map<String, Object> map) {
		
		// connect database way https://www.jetbrains.com/help/datagrip/how-to-connect-to-heroku-postgres.html
		return "homepage";
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
