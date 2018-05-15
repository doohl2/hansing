package com.hansing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hansing.entity.Community;
import com.hansing.entity.Room;
import com.hansing.service.CommunityService;

@Controller
@RequestMapping("/community/")
public class CommunityController {

	@Autowired
	private CommunityService service;
	
	@GetMapping("index")
	public String index(
			@RequestParam(value = "p", defaultValue = "1") Integer page
			, Model model
			) {		
		List<Community> communities = service.getList(page);
		model.addAttribute("communities",communities);
		return "community.index";
	}
	
	@GetMapping("detail")
	public String detail() {

		return "community.detail";
	}
	
	@GetMapping("write")
	public String write() {

		return "community.write";
	}
	
	@PostMapping("reg")
	public String communityReg(Community community
			
			) {
		int result = service.insertCommunity(community);
		return null;
	}
}
