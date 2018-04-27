package com.hansing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hansing.controller.service.RoomService;

@Controller
@RequestMapping("/room/")
public class RoomController {

	@RequestMapping("index")
	public String index() {
		
		return "room.index";
	}
	
	@RequestMapping("detail")
	public String detail() {

		return "room.detail";
	}
	
	@RequestMapping("write")
	public String write() {

		return "room.write";
	}
}
