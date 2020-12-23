package com.bachkhoa.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.service.IOtService;

@RestController(value = "otAPIOfWeb")
public class OtAPI {
	@Autowired
	private IOtService otService;

	@PostMapping("/api/ot")
	public OtDTO create(@RequestBody OtDTO dto) {
		return otService.save(dto);
	}

	@PutMapping("/api/ot")
	public OtDTO update(@RequestBody OtDTO dto) {
		return otService.save(dto);
	}

	@DeleteMapping("/api/ot")
	public void delete(@RequestBody long[] ids) {
		otService.delete(ids);
	}
}