package com.bachkhoa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "salaryControllerOfAdmin")
public class SalaryController {

	@RequestMapping(value = "/admin/salary/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam("month") int month, @RequestParam("year") int year, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/salary/list");
		return mav;
	}
}
