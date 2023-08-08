package com.ps23244.controller.admin;

import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.OrderDAO;
import com.ps23244.dao.OrderDetailDAO;
import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.ReportCategory;
import com.ps23244.untils.CookieService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;

import com.ps23244.entity.RevenueReport;
import com.ps23244.service.ProductService;
import com.ps23244.entity.Order;
import com.ps23244.entity.Product;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/report-category")
public class ReportCategoryRestController {

//	@Autowired
//	CookieService cookieService;
//	@Autowired
//	ParamService paramService;
//	@Autowired
//	SessionService sessionService;
//	@Autowired
//	AccountDAO accDAO;	
//	
//	@Autowired
//	ProductDAO proDAO;
//	
//	@Autowired
//	OrderDAO orderDAO;
//	
//	@Autowired
//	OrderDetailDAO orderDetailDAO;
//	
	@Autowired
	ProductService productService;
	@GetMapping
	public List<ReportCategory> getAll() {
		return productService.reportCategory();
	}


//	@RequestMapping("reportcategory")
//	public String inventory(Model model) {
//		List<ReportCategory> items = proDAO.getReportCategory();
//		model.addAttribute("items", items);
//		return "admin/reportcategory";
//	}
//	
//	@RequestMapping("reportOrderByDate")
//	public String reportOrderByDate(Model model) {
//		return "admin/reportorderbydate";
//	}
//	
//	
//	@PostMapping("reportOrderByDate")
//	public String reportByDate(Model model, @RequestParam("p") Optional<Integer> p) {
//		Date firstDate = paramService.getDate("firstDate", "MM-dd-yyyy");
//		Date lastDate = paramService.getDate("lastDate", "MM-dd-yyyy");
//		sessionService.set("firstDate", firstDate);
//		sessionService.set("lastDate", lastDate);
//		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
//		Page<Order> page = orderDAO.findOrderByDate(firstDate, lastDate, pageable);
//		model.addAttribute("page", page);
//		return "admin/reportorderbydate";
//	}
//	
//	
//	@RequestMapping("revenuereport")
//	public String RevenueReport(Model model) {
//		List<RevenueReport> items = orderDetailDAO.getRevenueByCategory();
//		model.addAttribute("items", items);
//		return "admin/revenuereport";
//	}

}
