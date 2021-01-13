package com.bachkhoa.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.service.IMailService;

@RestController(value = "mailAPIOfAdmin")
public class MailAPI {
	@Autowired
	private IMailService mailService;

	@PutMapping("/api/admin/mail/send")
	public List<SalarySummaryOutDTO> sendTimeKeepingMail(@RequestBody String month) {
		List<SalarySummaryOutDTO> salarySummaryOutDTOs = mailService.processTimeKeepingMail(month);
		return salarySummaryOutDTOs;
	}
}
