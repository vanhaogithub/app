package com.bachkhoa.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.converter.SalaryConverter;
import com.bachkhoa.dto.SalaryOutDTO;
import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.service.ISalaryService;
import com.bachkhoa.service.ISalarySummaryService;
import com.bachkhoa.service.IUserDetailService;
import com.bachkhoa.util.MessageUtil;

@Controller(value = "salaryControllerOfAdmin")
public class SalaryController {

	@Autowired
	private ISalarySummaryService salarySummaryService;

	@Autowired
	private ISalaryService salaryService;

	@Autowired
	private IUserDetailService userDetailService;
	
	@Autowired
	private MessageUtil messageUtil;

	@Autowired
	private SalaryConverter salaryConverter;
	
	@RequestMapping(value = "/admin/salary/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam("month") String month, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/salary/list");
		SalarySummaryDTO model = new SalarySummaryDTO();
		model.setPage(page);
		model.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(salarySummaryService.findByMonth(pageable, month));
		model.setTotalItem(salarySummaryService.getTotalItem(month));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		mav.addObject("month", month);
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		return mav;
	}

	@RequestMapping(value = "/admin/salary/detail", method = RequestMethod.GET)
	public ModelAndView showDetail(@RequestParam("page") int page, @RequestParam("limit") int limit,
			@RequestParam("userid") Long userid, @RequestParam("month") String month, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/salary/detail");
		SalaryOutDTO model = new SalaryOutDTO();
		model.setPage(page);
		model.setLimit(limit);
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(salaryConverter.toListOutDTO(salaryService.findByMonthAndUserId(pageable, month, userid)));
		model.setTotalItem(salaryService.getTotalItem(month, userid));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		mav.addObject("month", month);
		mav.addObject("userid", userid);
		mav.addObject("userName", userDetailService.getNameByOriginid(userid));
		mav.addObject("sumSalary", salarySummaryService.getSalaryByUserId(userid, month));
		return mav;
	}
}
