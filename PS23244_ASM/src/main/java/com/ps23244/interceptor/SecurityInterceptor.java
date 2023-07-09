package com.ps23244.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.ps23244.entity.Account;

@Service
public class SecurityInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        Account user = (Account) session.getAttribute("user");

        if (user != null) {
            if (user.isAdmin()) {
                return true;
            } else {
                response.sendRedirect(request.getContextPath() + "/home/index");
                return false;
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/home/login");
            return false;
        }
    }
}
