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

import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.service.ISalarySummaryService;

@Controller(value = "salaryControllerOfAdmin")
public class SalaryController {

	@Autowired
	private ISalarySummaryService salarySummaryService;

	@RequestMapping(value = "/admin/salary/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam("month") int month, @RequestParam("year") int year, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/salary/list");
		SalarySummaryDTO model = new SalarySummaryDTO();
		model.setPage(page);
		model.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(salarySummaryService.findByMonth(pageable, month, year));
		model.setTotalItem(salarySummaryService.getTotalItem(month, year));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;
	}
}
