package com.bachkhoa.api.admin;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.UserDetailDTO;

@RestController(value = "mailAPIOfAdmin")
public class MailAPI {
	
	@PutMapping("/api/admin/mail/send")
	public UserDetailDTO sendTimeKeepingMail(@RequestBody String month) {
		
		return null;
	}
}
