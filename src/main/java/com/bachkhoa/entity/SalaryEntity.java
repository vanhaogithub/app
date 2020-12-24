package com.bachkhoa.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "salary")
public class SalaryEntity extends BaseEntity {
	@Column(name = "userid")
	private Long userid;

	@Column(name = "workday")
	private LocalDate workDay;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "timesot")
	private Float timesOt;

	@Column(name = "statusot")
	private String statusOt;

	@Column(name = "otamount")
	private Float otAmount;

	@Column(name = "timesleave")
	private Float timesLeave;

	@Column(name = "statusleave")
	private String statusLeave;

	@Column(name = "leavedayamount")
	private Float leaveDayAmount;

	@Column(name = "isdelay")
	private boolean isDelay;

	@Column(name = "delayamount")
	private Float delayAmount;

	@Column(name = "daysalaryamount")
	private Float daySalaryAmount;

	@Column(name = "daybonusamount")
	private Float dayBonusAmount;

	@Column(name = "daysalary")
	private Float daySalary;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public LocalDate getWorkDay() {
		return workDay;
	}

	public void setWorkDay(LocalDate workDay) {
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

}
