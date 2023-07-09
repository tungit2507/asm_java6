package com.ps23244.controller.user;

import java.io.File;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.websocket.Extension.Parameter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("home")
public class FeedbackController {
	@Autowired
	JavaMailSender mailer;
	
	@RequestMapping("feedback")
	public String index() {
		return "user/feedback";
	}
	
	@RequestMapping("send.htm")
	public String send(ModelMap model,
	                   @RequestParam("to") String to,
	                   @RequestParam("subject") String subject,
	                   @RequestParam("body") String body,
	                   @RequestParam("name") String name) {
	    try {
	        // Tạo mail
	        MimeMessage mail = mailer.createMimeMessage();
	        // Sử dụng lớp trợ giúp
	        MimeMessageHelper helper = new MimeMessageHelper(mail);
	        String messageBody = "Họ Tên:" + name + "\n\n" + "Nội Dung" + body; // Include the name in the message body
	        helper.setTo(to);
	        helper.setReplyTo(to);
	        helper.setSubject(subject);
	        helper.setText(messageBody, true);

	        // Gửi mail
	        mailer.send(mail);

	        model.addAttribute("message", "Gửi email thành công !");
	    } catch (Exception ex) {
	        model.addAttribute("message", "Gửi email thất bại !");
	        System.out.println(ex);
	    }
	    return "user/feedback";
	}


	

	
	
}
