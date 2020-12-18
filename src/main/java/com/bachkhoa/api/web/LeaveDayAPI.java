package com.bachkhoa.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.service.ILeaveDayService;

@RestController
public class LeaveDayAPI {
	@Autowired
	private ILeaveDayService leaveDayService;

	@PostMapping("/api/leave")
	public LeaveDayDTO create(@RequestBody LeaveDayDTO dto) {
		return leaveDayService.save(dto);
	}

	@PutMapping("/api/leave")
	public LeaveDayDTO update(@RequestBody LeaveDayDTO dto) {
		return leaveDayService.save(dto);
	}

	@DeleteMapping("/api/leave")
	public void delete(@RequestBody long[] ids) {
		leaveDayService.delete(ids);
	}
}
