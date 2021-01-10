package com.bachkhoa.constant;

public class SystemConstant {

	public static final int ACTIVE_STATUS = 1;
	public static final int INACTIVE_STATUS = 0;
	public static final String[] LIST_URL = 
		{"/home","/login","/home/ot/list","/home/ot/edit","/api/ot","/home/leave/list","/home/leave/edit","/api/leave",
		"/admin/home","/admin/news/list","/home/user/edit","/api/userDetail","/admin/leave/list","/api/admin/leave",
		"/admin/ot/list","/api/admin/ot","/admin/salary/list","/api/admin/salary/timeKeeping","/admin/salary/detail",
		"/admin/news/edit","/error","/logout","/accessDenied","/j_spring_security_check","/home/timekeep/list"};
	public static final String[] LIST_URL_PARTEN = {"^/template.+"};
	
	public static final String UPDATE_SUCCESS = "update_success";
	public static final String INSERT_SUCCESS = "insert_success";
	public static final String DELETE_SUCCESS = "delete_success";
	public static final String ERROR_SYSTEM = "error_system";
	public static final String WORK_LATE = "work_late";
	public static final String START_WORK_TIME =" 08:00:00";
	public static final String END_WORK_TIME =" 17:00:00";
	public static final String END_RELAX_WORK_TIME =" 13:00:00";
	public static final String START_RELAX_WORK_TIME =" 12:00:00";
	public static final String YES ="YES";
	public static final String NO ="NO";

}
