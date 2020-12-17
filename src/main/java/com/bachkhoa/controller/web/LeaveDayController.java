package com.bachkhoa.controller.web;

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

import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.service.ILeaveDayService;
import com.bachkhoa.util.MessageUtil;

@Controller
public class LeaveDayController {
	@Autowired
	private ILeaveDayService leaveDayService;
	@Autowired
	private MessageUtil messageUtil;
	@RequestMapping(value = "/home/leave/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		LeaveDayDTO model = new LeaveDayDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("web/leave/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(leaveDayService.findAll(pageable));
		model.setTotalItem(leaveDayService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);

		return mav;
	}
	@RequestMapping(value = "/home/leave/edit", method = RequestMethod.GET)
	public ModelAndView editLeaveDay(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/leave/edit");
		LeaveDayDTO model = new LeaveDayDTO();
		if (id != null) {
			model = leaveDayService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}
}
