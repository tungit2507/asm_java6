package com.ps23244.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ps23244.service.ShoppingCartService;
import com.ps23244.untils.SessionService;
import com.ps23244.entity.Account;


@Component
public class LoggerInterceptor implements HandlerInterceptor{
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		Account user = sessionService.get("user");
		if(user!=null) {
			request.setAttribute("isLogin", true);
			request.setAttribute("admin", user.isAdmin());
			request.setAttribute("fullname", user.getFullname());
			request.setAttribute("username", user.getUsername());
			request.setAttribute("photo", user.getPhoto());
			request.setAttribute("email", user.getEmail());
		}else {
			request.setAttribute("isLogin", false);
		}
		request.setAttribute("cart", shoppingCartService);
		System.out.println("LoggerInterceptor.postHandle() - " + request.getRequestURI());
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("LoggerInterceptor.afterCompletion() - " + request.getRequestURI());
		
	}
		
}
