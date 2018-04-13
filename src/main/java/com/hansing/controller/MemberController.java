package com.hansing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hansing.controller.entity.Member;

@Controller
@RequestMapping("/member/")
public class MemberController {

//	@Autowired
//	private MemberService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "member.login";
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String join() {
		return "member.join";
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join(Member member) {
		
//		int result = service.insertMember(member);
		
		return "redirect:../index";
	}
}