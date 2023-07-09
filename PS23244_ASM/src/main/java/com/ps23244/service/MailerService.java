package com.ps23244.service;

import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

import com.ps23244.entity.MailInfo;




public interface MailerService {
	void send(MailInfo mail) throws MessagingException;
	void send(String to, String subject, String body) throws MessagingException;

	void queue(MailInfo mail);
	void queue(String to, String subject, String body);

	
	
	
}
