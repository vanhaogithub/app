package com.bachkhoa.controller.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.service.IUserDetailService;
import com.bachkhoa.util.MessageUtil;
import com.bachkhoa.util.SecurityUtils;

@Controller
public class UserController {
	@Autowired
	private IUserDetailService userDetailService;
	@Autowired
	private MessageUtil messageUtil;
	@RequestMapping(value = "/home/user/edit", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/user/edit");
		UserDetailDTO model = new UserDetailDTO();
		model = userDetailService.findByOriginid(SecurityUtils.getPrincipal().getId());
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}
}
