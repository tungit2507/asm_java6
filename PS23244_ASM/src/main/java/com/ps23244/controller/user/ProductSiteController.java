package com.ps23244.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.Product;
import com.ps23244.untils.CookieService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;



@Controller
@RequestMapping("home")
public class ProductSiteController {

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
	
	
	@RequestMapping("product")
	public String index() {
		return "user/productdetail";
	}
	
	
	@RequestMapping(value = "product/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) {
		Product product = new Product();
		List<Product> products = proDAO.findAll();
		for (Product pr : products) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("products", products);
		model.addAttribute("pr", product);
		return "user/productdetail";
	}
}
