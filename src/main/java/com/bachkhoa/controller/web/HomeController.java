package com.bachkhoa.controller.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bachkhoa.converter.ProjectConverter;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.dto.ProjectDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.service.ILeaveDayService;
import com.bachkhoa.service.IUserDetailService;
import com.bachkhoa.util.SecurityUtils;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	private IUserDetailService userDetailService;
	@Autowired
	private ProjectConverter projectConverter;
	@Autowired
	private ILeaveDayService leaveDayService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		UserDetailDTO userDetailDTO = userDetailService.findByOriginid(SecurityUtils.getPrincipal().getId());
		UserDetailDTO manager01DTO = userDetailService.findByOriginid(userDetailDTO.getManager01id());
		UserDetailDTO manager02DTO = userDetailService.findByOriginid(userDetailDTO.getManager02id());
		List<ProjectDTO> projectDTOs = projectConverter.toDTOs(userDetailDTO.getProjects());
		List<LeaveDayDTO> leaveDayDTOs = leaveDayService.findByUserid(userDetailDTO.getOriginid());
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("userDetailDTO", userDetailDTO);
		mav.addObject("manager01DTO", manager01DTO);
		mav.addObject("manager02DTO", manager02DTO);
		mav.addObject("projectDTOs", projectDTOs);
		mav.addObject("leaveDayDTOs", leaveDayDTOs);
		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/home");
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}
}