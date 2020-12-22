package com.bachkhoa.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.LeaveDayApprovalDTO;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.service.ILeaveDayService;
import com.bachkhoa.util.MessageUtil;

@Controller(value = "leaveDayControllerOfAdmin")
public class LeaveDayController {
	@Autowired
	private ILeaveDayService leaveDayService;
	@Autowired
	private MessageUtil messageUtil;
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
	@RequestMapping(value = "/admin/leave/edit", method = RequestMethod.GET)
	public ModelAndView editLeaveDay(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/leave/edit");
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
