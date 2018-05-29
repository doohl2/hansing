package com.hansing.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hansing.entity.Member;
import com.hansing.entity.MemberRole;
import com.hansing.service.MemberService;

@Controller
@RequestMapping("/member/")
@SessionAttributes({"member"})
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("login")
	public String login(HttpServletRequest request, Model model) {
		String referrer = request.getHeader("Referer");
	    request.getSession().setAttribute("prevPage", referrer);
		return "member.login";
	}
	
	@GetMapping("join")
	public String join() {
		return "member.login";
	}
	
	@PostMapping("join")
	public String join(Member member) {
		String pwd = member.getPwd();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPwd = passwordEncoder.encode(pwd);
		member.setPwd(hashedPwd);
		int result = service.insertMember(member);
		return "member.login";
	}
}