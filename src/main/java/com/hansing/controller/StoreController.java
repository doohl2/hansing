package com.hansing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store/")
public class StoreController {

	@RequestMapping("index")
	public String index() {
		
		return "store.index";
	}
	
	@RequestMapping("detail")
	public String detail() {

		return "store.detail";
	}
	
}
