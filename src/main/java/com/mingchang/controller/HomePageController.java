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
	public String listPeople(Map<String, Object> map) {

		return "homepage";
	}

}
