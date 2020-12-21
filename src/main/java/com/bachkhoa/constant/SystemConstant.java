package com.bachkhoa.constant;

import java.time.LocalTime;

public class SystemConstant {

	public static final int ACTIVE_STATUS = 1;
	public static final int INACTIVE_STATUS = 0;
	public static final String[] LIST_URL = 
		{"/home","/login","/home/ot/list","/home/ot/edit","/api/ot","/home/leave/list","/home/leave/edit","/api/leave",
		"/admin/home","/admin/news/list","/home/user/edit","/api/userDetail",
		"/admin/news/edit","/error","/logout","/accessDenied","/j_spring_security_check"};
	public static final String[] LIST_URL_PARTEN = {"^/template.+"};
	
	public static final String UPDATE_SUCCESS = "update_success";
	public static final String INSERT_SUCCESS = "insert_success";
	public static final String DELETE_SUCCESS = "delete_success";
	public static final String ERROR_SYSTEM = "error_system";
	public static final String WORK_LATE = "work_late";
	public static final LocalTime START_WORK_TIME = LocalTime.parse("08:00");

}
