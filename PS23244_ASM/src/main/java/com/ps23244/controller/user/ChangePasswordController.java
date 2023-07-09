package com.ps23244.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps23244.dao.AccountDAO;
import com.ps23244.entity.Account;
import com.ps23244.untils.ParamService;



@Controller
@RequestMapping("home")
public class ChangePasswordController {

	@Autowired
	ParamService paramService;
	
	@Autowired
	AccountDAO accDAO;
	
	@RequestMapping("change-password")
	public String index() {
		return "user/account/change";
	}
	
	@PostMapping("change-password")
	public String change(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String newpassword= paramService.getString("newpassword", "");
		String confirmpassword= paramService.getString("confirmpassword", "");
		try {
			Account user = accDAO.findById(username).get();
				if(!user.getPassword().equals(password)) {
					model.addAttribute("message", "Sai mật khẩu!");
				}else {
					if(newpassword.equals(confirmpassword)) {
						user.setPassword(confirmpassword);
						accDAO.save(user);
						model.addAttribute("message", "mật khẩu đã được thay đổi!");
					}else {
						model.addAttribute("message", "Mật khẩu không khớp!");
					}
				}
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không hợp lệ!");
		}
		return "user/account/change";
	}
}
