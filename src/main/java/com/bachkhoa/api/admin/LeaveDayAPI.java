package com.bachkhoa.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

	@PostMapping("/api/admin/leave")
	public LeaveDayDTO create(@RequestBody LeaveDayDTO dto) {
		return leaveDayService.save(dto);
	}

	@PutMapping("/api/admin/leave")
	public LeaveDayDTO update(@RequestBody RequestApprovalDTO requestApproval) {
		return leaveDayService.updateStatus(requestApproval);
	}

	@DeleteMapping("/api/admin/leave")
	public void delete(@RequestBody long[] ids) {
		leaveDayService.delete(ids);
	}
}
