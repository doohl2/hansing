package com.hansing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/market/")
public class MarketController {

	@RequestMapping("index")
	public String index() {
		
		return "market.index";
	}
	
	@RequestMapping("detail")
	public String detail() {

		return "market.detail";
	}
	
}
