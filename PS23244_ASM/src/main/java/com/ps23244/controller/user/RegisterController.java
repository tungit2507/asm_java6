package com.ps23244.controller.user;


import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps23244.dao.AccountDAO;
import com.ps23244.entity.Account;
import com.ps23244.untils.ParamService;


@Controller
@RequestMapping("home")
public class RegisterController {
	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accountDAO;
	
	@RequestMapping("register")
	public String register(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		return "user/account/register";
	}
	
	@RequestMapping("/register/create")
	public String create(Model model, Account item) {
		item.setActivated(false);
		item.setAdmin(false);
		accountDAO.save(item);
		model.addAttribute("message", "Insert successfully");
		return "redirect:/home/login";
	}
	/*
	 * @RequestMapping("/register/create") public String create(Model model, Account
	 * item) { // Kiểm tra xem username đã tồn tại trong cơ sở dữ liệu hay chưa
	 * Optional<Account> existingAccount =
	 * accountDAO.findByUsername(item.getUsername()); if (existingAccount != null) {
	 * 
	 * return "redirect:/home/register"; // Điều hướng đến trang thông báo lỗi }
	 * 
	 * item.setActivated(false); item.setAdmin(false); accountDAO.save(item);
	 * model.addAttribute("message", "Thêm tài khoản thành công"); return
	 * "redirect:/home/login"; }
	 */

	

	@ModelAttribute("activateds")
	public Map<Boolean, String>getActivateds(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Active");
		map.put(false, "Unactive");
		return map;
	}
	
	@ModelAttribute("admins")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}
}
