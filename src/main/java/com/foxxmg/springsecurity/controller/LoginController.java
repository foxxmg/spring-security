package com.foxxmg.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class LoginController {

	@GetMapping("/login-page")
	public String showLoginPage(){
		
		return "custom-login";
	}
}
