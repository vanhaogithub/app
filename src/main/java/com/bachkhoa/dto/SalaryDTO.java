package com.bachkhoa.dto;

import java.util.Date;

public class SalaryDTO extends AbstractDTO<SalaryDTO> {
	private Long userid;

	private Date workDay;

	private String fullname;

	private Float timesOt;

	private String statusOt;

	private Float otAmount;

	private Float timesLeave;

	private String statusLeave;

	private Float leaveDayAmount;

	private boolean isDelay;

	private Float timeDelay;
	
	private Float delayAmount;
	
	private boolean isAbsolve;

	private Float daySalaryAmount;

	private Float dayBonusAmount;

	private Float daySalary;

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

	public Float getOtAmount() {
		return otAmount;
	}

	public void setOtAmount(Float otAmount) {
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

	public Float getLeaveDayAmount() {
		return leaveDayAmount;
	}

	public void setLeaveDayAmount(Float leaveDayAmount) {
		this.leaveDayAmount = leaveDayAmount;
	}

	public boolean getIsDelay() {
		return isDelay;
	}

	public void setIsDelay(boolean isDelay) {
		this.isDelay = isDelay;
	}

	public Float getDelayAmount() {
		return delayAmount;
	}

	public void setDelayAmount(Float delayAmount) {
		this.delayAmount = delayAmount;
	}

	public Float getDaySalaryAmount() {
		return daySalaryAmount;
	}

	public void setDaySalaryAmount(Float daySalaryAmount) {
		this.daySalaryAmount = daySalaryAmount;
	}

	public Float getDayBonusAmount() {
		return dayBonusAmount;
	}

	public void setDayBonusAmount(Float dayBonusAmount) {
		this.dayBonusAmount = dayBonusAmount;
	}

	public Float getDaySalary() {
		return daySalary;
	}

	public void setDaySalary(Float daySalary) {
		this.daySalary = daySalary;
	}

	public Float getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(Float timeDelay) {
		this.timeDelay = timeDelay;
	}

	public boolean isAbsolve() {
		return isAbsolve;
	}

	public void setAbsolve(boolean isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

}
