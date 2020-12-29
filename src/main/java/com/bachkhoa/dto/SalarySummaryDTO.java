package com.bachkhoa.dto;

import java.util.Date;

public class SalarySummaryDTO extends AbstractDTO<SalarySummaryDTO>{
	private Long userid;

	private Date month;

	private String fullname;

	private Float sumOtAmount;

	private Float sumLeaveDayAmount;

	private Float sumDelayAmount;

	private Float sumSalary;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getMonth() {
		return month;
	}

	public void setMonth(Date month) {
		this.month = month;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Float getSumOtAmount() {
		return sumOtAmount;
	}

	public void setSumOtAmount(Float sumOtAmount) {
		this.sumOtAmount = sumOtAmount;
	}

	public Float getSumLeaveDayAmount() {
		return sumLeaveDayAmount;
	}

	public void setSumLeaveDayAmount(Float sumLeaveDayAmount) {
		this.sumLeaveDayAmount = sumLeaveDayAmount;
	}

	public Float getSumDelayAmount() {
		return sumDelayAmount;
	}

	public void setSumDelayAmount(Float sumDelayAmount) {
		this.sumDelayAmount = sumDelayAmount;
	}

	public Float getSumSalary() {
		return sumSalary;
	}

	public void setSumSalary(Float sumSalary) {
		this.sumSalary = sumSalary;
	}

}
