package com.ps23244.controller.user;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.Product;
import com.ps23244.untils.CookieService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;



@Controller
@RequestMapping("home")
public class ShopController {

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



	@RequestMapping("shop")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "user/shopcontroller";
	}

	// Submit lọc theo hãng
	@RequestMapping("brand")
	public String locBrand(Model model, @RequestParam("field1") Optional<String> field1,
			@RequestParam("p") Optional<Integer> p) {
		String field = field1.orElse(sessionService.get("field1"));
		sessionService.set("field1", field);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = proDAO.findByCategory(field, pageable);
		model.addAttribute("page", page);
		return "user/category";
	}

	// Submit theo khoang gia
	@RequestMapping("price")
	public String searchGia(Model model, @RequestParam("min") Optional<Integer> min,
			@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
		Integer minPrice = min.orElse(Integer.MIN_VALUE);
		Integer maxPrice = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0),8);
		Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "user/searchprice";

	}
	
	

	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "user/searchshop";
	}

}
