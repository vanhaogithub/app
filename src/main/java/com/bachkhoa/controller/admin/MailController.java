package com.bachkhoa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.OtApprovalDTO;
import com.bachkhoa.service.IOtService;

@Controller(value = "mailControllerOfAdmin")
public class MailController {
	@Autowired
	private IOtService otService;
	
	@RequestMapping(value = "/admin/mail/send", method = RequestMethod.GET)
	public ModelAndView showList(HttpServletRequest request) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		MailSender mailSender = (MailSender) context.getBean("mailSender");
		System.out.println("Sending text...");
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("mailserver0501@gmail.com");
		message.setTo("nguyenhao.mailfortest@gmail.com");
		message.setSubject("Test mail timekeeping");
		message.setText("Test mail timekeeping");
		// sending message
		mailSender.send(message);
		System.out.println("Sending text done!");
		context.close();
		OtApprovalDTO model = new OtApprovalDTO();
		model.setPage(1);
		model.setLimit(5);
		ModelAndView mav = new ModelAndView("admin/ot/list");
		model.setListResult(otService.findPageNeedApproval(1, 5));
		model.setTotalItem(otService.getTotalItemApproval());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);

		return mav;
	}
}
