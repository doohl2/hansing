package com.hansing.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hansing.entity.Member;
import com.hansing.entity.MemberRole;
import com.hansing.entity.MemberRoleId;
import com.hansing.service.MemberService;

@Controller
@RequestMapping("/member/")
@SessionAttributes({"member"})
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("login")
	public String login(HttpServletRequest request, Model model, Principal principal) {
		String referrer = request.getHeader("Referer");
	    request.getSession().setAttribute("prevPage", referrer);
	    
	    if(principal!=null)
	    	return "redirect:../index";
	    
		return "member.login";
	}
		
	@PostMapping("join")
	public String join(Member member
			, @RequestParam("id") String id) {
		String pwd = member.getPwd();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPwd = passwordEncoder.encode(pwd);
		member.setPwd(hashedPwd);
	
		MemberRole memberRole = new MemberRole();
		MemberRoleId memberRoleId = new MemberRoleId(id,"	ROLE_ALL");
		memberRole.setMemberRoleId(memberRoleId);
		
		int result = service.insertMember(member, memberRole);
		
		return "redirect:login";
	}
}