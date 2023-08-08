package com.ps23244.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps23244.untils.SessionService;



@Controller
@RequestMapping("home")
public class LogoutController {
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("/logout")
	public String logout() {
		sessionService.remove("authentication");
		return "redirect:/home/index";
	}
	@RequestMapping("/logout/success")
	public String logoutsc() {
		sessionService.remove("authentication");
		return "redirect:/home/index";
	}
}
