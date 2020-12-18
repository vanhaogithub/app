package com.bachkhoa.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.service.IUserDetailService;

@RestController
public class UserDetailAPI {
	@Autowired
	private IUserDetailService userDetailService;

	@PostMapping("/api/userDetail")
	public UserDetailDTO create(@RequestBody UserDetailDTO dto) {
		return userDetailService.save(dto);
	}

	@PutMapping("/api/userDetail")
	public UserDetailDTO update(@RequestBody UserDetailDTO dto) {
		return userDetailService.save(dto);
	}

	@DeleteMapping("/api/userDetail")
	public void delete(@RequestBody long[] ids) {
		//userDetailService.delete(ids);
	}
}
