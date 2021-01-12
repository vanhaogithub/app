package com.bachkhoa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "mailControllerOfAdmin")
public class MailController {
	
	@RequestMapping(value = "/admin/mail/send", method = RequestMethod.GET)
	public String send(HttpServletRequest request) {
		
		return null;
	}
}
