package com.hansing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/")
public class CommunityController {

	@RequestMapping("index")
	public String index() {
		
		return "community.index";
	}
	
	@RequestMapping("detail")
	public String detail() {

		return "community.detail";
	}
	
	@RequestMapping("write")
	public String write() {

		return "community.write";
	}
}
