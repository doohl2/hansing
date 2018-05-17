package com.hansing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hansing.entity.CommunityView;
import com.hansing.entity.Room;
import com.hansing.service.RoomService;


@Controller
@RequestMapping("/room/")
public class RoomController {
	
	@Autowired
	private RoomService service;
	
	@GetMapping("index")
	public String index(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) {
		List<Room> rooms = service.getList(page);
		model.addAttribute("rooms",rooms);
		return "room.index";
	}
	
	@GetMapping("${id}")
	public String detail(
			@PathVariable("id") Integer id
			, Model model) {
		Room room = service.getRoom(id);		
		model.addAttribute("room",room);
		return "room.detail";
	}
	
	@GetMapping("write")
	public String write() {

		return "room.write";
	}
}
