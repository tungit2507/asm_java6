package com.ps23244.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ps23244.interceptor.SecurityInterceptor;
import com.ps23244.interceptor.LoggerInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	LoggerInterceptor loggerInterceptor;

	@Autowired
	SecurityInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
//		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");
//
//		registry.addInterceptor(auth)
//				.addPathPatterns ("/home/myorder/**", "/account/**", "/product/**", "/reportcategory/**", "/reportOrderByDate/**",
//						"/category/**", "/order/**", "/ordedetail**", "/admin/**", "/checkout/**")
//				.excludePathPatterns("/home/login");
	}

}
