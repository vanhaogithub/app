package com.bachkhoa.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.service.IOtService;

@Controller
public class OTAPI {
	@Autowired
	private IOtService otService;

	//@PostMapping("/api/ot")
	@RequestMapping(value = "/api/ot", method = RequestMethod.POST)
	@ResponseBody
	public OtDTO createOt(@RequestBody OtDTO dto) {
		return otService.save(dto);
	}

	//@PutMapping("/api/ot")
	@RequestMapping(value = "/api/ot", method = RequestMethod.PUT)
	@ResponseBody
	public OtDTO updateOt(@RequestBody OtDTO dto) {
		return otService.save(dto);
	}

	//@DeleteMapping("/api/ot")
	@RequestMapping(value = "/api/ot", method = RequestMethod.DELETE)
	@ResponseBody
	public void deletePt(@RequestBody long[] ids) {
		otService.delete(ids);
	}
}