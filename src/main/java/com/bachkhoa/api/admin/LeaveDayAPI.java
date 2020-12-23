package com.bachkhoa.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.dto.RequestApprovalDTO;
import com.bachkhoa.service.ILeaveDayService;

@RestController(value = "leaveDayAPIOfAdmin")
public class LeaveDayAPI {
	@Autowired
	private ILeaveDayService leaveDayService;

	@PutMapping("/api/admin/leave")
	public LeaveDayDTO update(@RequestBody RequestApprovalDTO requestApproval) {
		return leaveDayService.updateStatus(requestApproval);
	}

}
