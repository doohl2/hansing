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
import com.hansing.entity.Room;
import com.hansing.entity.RoomComment;
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
	
	@GetMapping("{id}/ajax-comment-list")
	@ResponseBody
	public String ajaxCommentList(@PathVariable("id") Integer roomId) {
		List<RoomComment> comments = service.getRoomCommentByRoom(roomId);	
		return new Gson().toJson(comments);
	}
	
	@PostMapping("{id}/comment/reg")
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
}
