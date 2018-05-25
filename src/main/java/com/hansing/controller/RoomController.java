package com.hansing.controller;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.hansing.entity.RoomComment;
import com.hansing.entity.RoomCommentView;
import com.hansing.entity.RoomView;
import com.hansing.service.RoomService;


@Controller
@RequestMapping("/room/")
public class RoomController {
	
	@Autowired
	private RoomService service;
	
	@GetMapping("index")
	public String index(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) {
		List<RoomView> rooms = service.getList(page);
		model.addAttribute("rooms",rooms);
		return "room.index";
	}
	
	@GetMapping("{id}")
	public String detail(
			@PathVariable("id") Integer id
			, Model model) {
		RoomView room = service.getRoom(id);		
		model.addAttribute("room",room);
		return "room.detail";
	}
	
	@GetMapping("write")
	public String write() {

		return "room.write";
	}
	
	@GetMapping(value="{id}/ajax-comment-list",produces="text/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCommentList(@PathVariable("id") Integer roomId) {
		List<RoomCommentView> comments = service.getRoomCommentByRoom(roomId);	
		return new Gson().toJson(comments);
	}
	
	@PostMapping(value="{id}/comment/reg",produces="text/json; charset=UTF-8")
	@ResponseBody
	public String commentReg(RoomComment comment
			, @RequestParam(value="secret",defaultValue="false")  Boolean secret
			, @PathVariable("id") Integer roomId
			, Principal principal
			) {
		
			String memberId = principal.getName();
			comment.setRoomId(roomId);
			comment.setMemberId(memberId);
			int result = service.addComment(comment);
	
		return String.valueOf(result);
	}
	
	
	
	
	@GetMapping(value="{id}/ajax-comment-edit",produces="text/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCommentEdit(@PathVariable("id") Integer roomId
			,Model model
			,Principal principal) {
		RoomCommentView comments = service.getRoomCommentByRoom(roomId).get(1);
		
		String memberId = principal.getName();
		String writerId = comments.getMemberId();
		
		if(memberId.equals(writerId))
			model.addAttribute("auth", true);
		else
			model.addAttribute("auth", false);
		
		return new Gson().toJson(comments);
	}
	
/*	@PostMapping(value="{id}/ajax-comment-del",produces="text/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCommentDel(@PathVariable("id") Integer roomId
			,Model model
			,Principal principal) {
		
		RoomCommentView roomCommnet = service.getRoom
		String memberId = principal.getName();
		String writerId = 
		
		if(memberId.equals(writerId))
			model.addAttribute("auth", true);
		else
			model.addAttribute("auth", false);
		
		return new Gson().toJson(comments);
	}*/
}