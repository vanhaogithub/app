package com.bachkhoa.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.service.IUserDetailService;

//@RestController
@Controller
public class UserDetailAPI {
	@Autowired
	private IUserDetailService userDetailService;

	//@PostMapping("/api/userDetail")
	@RequestMapping(value = "/api/userDetail", method = RequestMethod.POST)
	@ResponseBody
	public UserDetailDTO create(@RequestBody UserDetailDTO dto) {
		return userDetailService.save(dto);
	}

	//@PutMapping("/api/userDetail")
	@RequestMapping(value = "/api/userDetail", method = RequestMethod.PUT)
	@ResponseBody
	public UserDetailDTO update(@RequestBody UserDetailDTO dto) {
		return userDetailService.save(dto);
	}

	//@DeleteMapping("/api/userDetail")
	@RequestMapping(value = "/api/userDetail", method = RequestMethod.DELETE)
	@ResponseBody
	public void delete(@RequestBody long[] ids) {
		//userDetailService.delete(ids);
	}
}
