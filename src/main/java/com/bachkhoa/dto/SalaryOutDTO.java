package com.bachkhoa.dto;

import java.util.Date;

public class SalaryOutDTO extends AbstractDTO<SalaryOutDTO> {
	private Long userid;

	private Date workDay;

	private String fullname;

	private Float timesOt;

	private String statusOt;

	private String otAmount;

	private Float timesLeave;

	private String statusLeave;

	private String leaveDayAmount;

	private boolean isDelay;

	private Float timeDelay;

	private String delayAmount;

	private boolean isAbsolve;

	private String daySalaryAmount;

	private String dayBonusAmount;

	private String daySalary;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getWorkDay() {
		return workDay;
	}

	public void setWorkDay(Date workDay) {
		this.workDay = workDay;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Float getTimesOt() {
		return timesOt;
	}

	public void setTimesOt(Float timesOt) {
		this.timesOt = timesOt;
	}

	public String getStatusOt() {
		return statusOt;
	}

	public void setStatusOt(String statusOt) {
		this.statusOt = statusOt;
	}

	public String getOtAmount() {
		return otAmount;
	}

	public void setOtAmount(String otAmount) {
		this.otAmount = otAmount;
	}

	public Float getTimesLeave() {
		return timesLeave;
	}

	public void setTimesLeave(Float timesLeave) {
		this.timesLeave = timesLeave;
	}

	public String getStatusLeave() {
		return statusLeave;
	}

	public void setStatusLeave(String statusLeave) {
		this.statusLeave = statusLeave;
	}

	public String getLeaveDayAmount() {
		return leaveDayAmount;
	}

	public void setLeaveDayAmount(String leaveDayAmount) {
		this.leaveDayAmount = leaveDayAmount;
	}

	public boolean getIsDelay() {
		return isDelay;
	}

	public void setIsDelay(boolean isDelay) {
		this.isDelay = isDelay;
	}

	public Float getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(Float timeDelay) {
		this.timeDelay = timeDelay;
	}

	public String getDelayAmount() {
		return delayAmount;
	}

	public void setDelayAmount(String delayAmount) {
		this.delayAmount = delayAmount;
	}

	public boolean isAbsolve() {
		return isAbsolve;
	}

	public void setAbsolve(boolean isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

	public String getDaySalaryAmount() {
		return daySalaryAmount;
	}

	public void setDaySalaryAmount(String daySalaryAmount) {
		this.daySalaryAmount = daySalaryAmount;
	}

	public String getDayBonusAmount() {
		return dayBonusAmount;
	}

	public void setDayBonusAmount(String dayBonusAmount) {
		this.dayBonusAmount = dayBonusAmount;
	}

	public String getDaySalary() {
		return daySalary;
	}

	public void setDaySalary(String daySalary) {
		this.daySalary = daySalary;
	}

}
