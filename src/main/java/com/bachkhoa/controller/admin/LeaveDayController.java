package com.bachkhoa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.LeaveDayApprovalDTO;
import com.bachkhoa.service.ILeaveDayService;

@Controller(value = "leaveDayControllerOfAdmin")
public class LeaveDayController {
	@Autowired
	private ILeaveDayService leaveDayService;

	@RequestMapping(value = "/admin/leave/list", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		LeaveDayApprovalDTO model = new LeaveDayApprovalDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/leave/list");
		model.setListResult(leaveDayService.findPageNeedApproval(page, limit));
		model.setTotalItem(leaveDayService.getTotalItemApproval());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);

		return mav;
	}
}
