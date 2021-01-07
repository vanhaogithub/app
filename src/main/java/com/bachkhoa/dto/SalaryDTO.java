package com.bachkhoa.dto;

import java.util.Date;

public class SalaryDTO extends AbstractDTO<SalaryDTO> {
	private Long userid;

	private Date workDay;

	private String fullname;

	private Double timesOt;

	private String statusOt;

	private Double otAmount;

	private Double timesLeave;

	private String statusLeave;

	private Double leaveDayAmount;

	private boolean isDelay;

	private Double timeDelay;

	private Double delayAmount;

	private boolean isAbsolve;

	private Double daySalaryAmount;

	private Double dayBonusAmount;

	private Double daySalary;

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

	public Double getTimesOt() {
		return timesOt;
	}

	public void setTimesOt(Double timesOt) {
		this.timesOt = timesOt;
	}

	public String getStatusOt() {
		return statusOt;
	}

	public void setStatusOt(String statusOt) {
		this.statusOt = statusOt;
	}

	public Double getOtAmount() {
		return otAmount;
	}

	public void setOtAmount(Double otAmount) {
		this.otAmount = otAmount;
	}

	public Double getTimesLeave() {
		return timesLeave;
	}

	public void setTimesLeave(Double timesLeave) {
		this.timesLeave = timesLeave;
	}

	public String getStatusLeave() {
		return statusLeave;
	}

	public void setStatusLeave(String statusLeave) {
		this.statusLeave = statusLeave;
	}

	public Double getLeaveDayAmount() {
		return leaveDayAmount;
	}

	public void setLeaveDayAmount(Double leaveDayAmount) {
		this.leaveDayAmount = leaveDayAmount;
	}

	public boolean getIsDelay() {
		return isDelay;
	}

	public void setIsDelay(boolean isDelay) {
		this.isDelay = isDelay;
	}

	public Double getDelayAmount() {
		return delayAmount;
	}

	public void setDelayAmount(Double delayAmount) {
		this.delayAmount = delayAmount;
	}

	public Double getDaySalaryAmount() {
		return daySalaryAmount;
	}

	public void setDaySalaryAmount(Double daySalaryAmount) {
		this.daySalaryAmount = daySalaryAmount;
	}

	public Double getDayBonusAmount() {
		return dayBonusAmount;
	}

	public void setDayBonusAmount(Double dayBonusAmount) {
		this.dayBonusAmount = dayBonusAmount;
	}

	public Double getDaySalary() {
		return daySalary;
	}

	public void setDaySalary(Double daySalary) {
		this.daySalary = daySalary;
	}

	public Double getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(Double timeDelay) {
		this.timeDelay = timeDelay;
	}

	public boolean isAbsolve() {
		return isAbsolve;
	}

	public void setAbsolve(boolean isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

}
