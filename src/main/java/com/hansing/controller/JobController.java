package com.hansing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/job/")
public class JobController {

	@RequestMapping("index")
	public String index() {
		
		return "job.index";
	}
	
	@RequestMapping("detail")
	public String detail() {

		return "job.detail";
	}
	
}
