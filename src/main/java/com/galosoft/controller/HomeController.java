package com.galosoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "inicio";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error", required=false) String error, 
			            @RequestParam(value="logout", required=false) String logout, Model model) {
		if(error != null) {
			model.addAttribute("error", "Invalid user and password");
		}
		if(logout != null) {
			model.addAttribute("msg", "logout successfully");
		}
		return "login";
	}

}
