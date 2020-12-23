package com.bachkhoa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.OTApprovalDTO;
import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.service.IOtService;
import com.bachkhoa.util.SecurityUtils;

@Controller(value = "otControllerOfAdmin")
public class OTController {
	@Autowired
	private IOtService otService;
	
	@RequestMapping(value = "/admin/ot/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		OTApprovalDTO model = new OTApprovalDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/ot/list");
		
		//model.setListResult(otService.findAll(pageable));
		model.setTotalItem(otService.getTotalItem(SecurityUtils.getPrincipal().getId()));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);

		return mav;
	}
	
}
