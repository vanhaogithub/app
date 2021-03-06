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

import com.bachkhoa.dto.UserDetailOutDTO;
import com.bachkhoa.service.IUserDetailService;

@Controller(value = "userDetailControllerOfAdmin")
public class UserDetailController {
	@Autowired
	private IUserDetailService userDetailService;
	
	@RequestMapping(value = "/admin/user/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		// tao UserDetailOutDTO rieng lay ten thay Id
		UserDetailOutDTO model = new UserDetailOutDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("/admin/user/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(userDetailService.findAll(pageable));
		model.setTotalItem(userDetailService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;
	}
}
