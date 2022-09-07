package com.luv2code.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	
	@GetMapping("/showLoginPage")
	public String showLoginPage() {
		
		return "fancy-login";
	}
	
	
	@GetMapping("/leaders")
	public String showManagerParty() {
		return "brazil-party";
		
	}
	
	@GetMapping("system")
	public String showAdminParty() {
		return "admin-party";
	}
}
	