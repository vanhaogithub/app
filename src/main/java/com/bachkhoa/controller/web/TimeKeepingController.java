package com.bachkhoa.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.TimekeepingDTO;
import com.bachkhoa.service.ITimekeepingService;

@Controller(value = "timeKeepingControllerOfWeb")
public class TimeKeepingController {
	@Autowired
	private ITimekeepingService timeKeepingService;

	@RequestMapping(value = "/home/timekeep/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("month") String month,
			@RequestParam("limit") int limit, HttpServletRequest request) {
		TimekeepingDTO model = new TimekeepingDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("web/timekeep/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(timeKeepingService.findByMonth(pageable, month));
		model.setTotalItem(timeKeepingService.getTotalItem(month));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		mav.addObject("month", month);
		return mav;
	}
}
