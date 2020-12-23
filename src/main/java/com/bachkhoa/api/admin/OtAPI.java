package com.bachkhoa.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.dto.RequestApprovalDTO;
import com.bachkhoa.service.IOtService;

@RestController(value = "otAPIOfAdmin")
public class OtAPI {
	@Autowired
	private IOtService otService;

	@PutMapping("/api/admin/ot")
	public OtDTO update(@RequestBody RequestApprovalDTO requestApproval) {
		return otService.updateStatus(requestApproval);
	}
}
