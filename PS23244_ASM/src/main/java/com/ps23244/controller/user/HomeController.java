package com.ps23244.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.OrderDetailDAO;
import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.Product;
import com.ps23244.untils.CookieService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;




@Controller
@RequestMapping("home")
public class HomeController {
	
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;	
	
	@Autowired
	ProductDAO proDAO;
	
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	
	// show index
	@RequestMapping("index")
	public String shop(Model model) {
		List<Product> top4Products = proDAO.findTop4Products();
		List<Product> top5Products = proDAO.findTop5Products();
		model.addAttribute("products", top4Products);
		model.addAttribute("productstop5",top5Products);
        return "user/index";
		
		
	}

}
