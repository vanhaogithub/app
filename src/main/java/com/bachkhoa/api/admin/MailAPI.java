package com.bachkhoa.api.admin;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.UserDetailDTO;

@RestController(value = "mailAPIOfAdmin")
public class MailAPI {
	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "mailserver0501@gmail.com";

	@Autowired
	private JavaMailSender mailSenderObj;
	
	@PutMapping("/api/admin/mail/send")
	public UserDetailDTO update() {
		/*
		 * ClassPathXmlApplicationContext context = new
		 * ClassPathXmlApplicationContext("applicationContext.xml"); MailSender
		 * mailSender = (MailSender) context.getBean("mailSender");
		 * System.out.println("Sending text..."); SimpleMailMessage message =
		 * new SimpleMailMessage(); message.setFrom("mailserver0501@gmail.com");
		 * message.setTo("nguyenhao.mailfortest@gmail.com");
		 * message.setSubject("Test mail timekeeping");
		 * message.setText("Test mail timekeeping"); // sending message
		 * mailSender.send(message); System.out.println("Sending text done!");
		 * context.close();
		 */
		// Reading Email Form Input Parameters
		
		emailSubject = "Test mail timekeeping";
		emailMessage = "<b>Dear friend</b>,<br><i>Please find the book attached.</i>";
		emailToRecipient = "nguyenhao.mailfortest@gmail.com";

		// Logging The Email Form Parameters For Debugging Purpose
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= "
				+ emailMessage + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);
				mimeMsgHelperObj.setText(emailMessage, true);
				mimeMsgHelperObj.setSubject(emailSubject);
			}
		});
		System.out.println("\nMessage Send Successfully.... Hurrey!\n");
		return null;
	}
}
