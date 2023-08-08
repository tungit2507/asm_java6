package com.ps23244.controller.user;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.Account;
import com.ps23244.untils.CookieService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;

@Controller
public class LoginController {
	@RequestMapping("/home/login/form")
	public String login() {
		return "user/account/login";
	}
	@RequestMapping("/home/login/error")
	public String loginError(Model model) {
		model.addAttribute("message", "Sai thông tin đăng nhập!");
		return "user/account/login";
	}
	
	@CrossOrigin("*")
	@ResponseBody
	@RequestMapping("/rest/login/authentication")
	public Object getAuthentication(HttpSession session) {
		return session.getAttribute("authentication");
	}
	
	
//	@GetMapping("login")
//	public String index() {
//		return "user/account/login";
//	}
//
//	@PostMapping("login")
//	public String loginPost(Model model) {
//		String username = paramService.getString("username", "");
//		String password = paramService.getString("password", "");
//		boolean remember = paramService.getBoolean("remember", false);
//		try {
//			Account user = accDAO.findById(username).get();
//			if (!user.getPassword().equals(password)) {
//				model.addAttribute("message", "Sai mật khẩu!");
//			} else {
//				sessionService.set("user", user);
//				if (remember) {
//					cookieService.add("username", user.getUsername(), 10);
//					cookieService.add("password", user.getPassword(), 10);
//				} else {
//					cookieService.remove("username");
//					cookieService.remove("password");
//				}
//				model.addAttribute("message", "Đăng nhập thành công");
//				return "redirect:/home/index";
//			}
//		} catch (Exception e) {
//			model.addAttribute("message", "Tài khoản không hợp lệ!");
//		}
//		return "user/account/login";
//	}

}
