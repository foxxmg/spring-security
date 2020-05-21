package com.foxxmg.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

	@GetMapping("/")
	public String showHome(){
		return "home";
	}
	
	//add Request Mapping for leaders
	@GetMapping("/leaders")
	public String showLeaders(){
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String showSystems(){
		return "systems";
	}
}
