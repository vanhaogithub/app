package com.bachkhoa.dto;

import java.util.Date;

public class SalarySummaryDTO extends AbstractDTO<SalarySummaryDTO> {
	private Long userid;

	private Date month;

	private String fullname;

	private Double sumOtAmount;

	private Double sumLeaveDayAmount;

	private Double sumDelayAmount;

	private Double sumSalary;

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

	public Double getSumOtAmount() {
		return sumOtAmount;
	}

	public void setSumOtAmount(Double sumOtAmount) {
		this.sumOtAmount = sumOtAmount;
	}

	public Double getSumLeaveDayAmount() {
		return sumLeaveDayAmount;
	}

	public void setSumLeaveDayAmount(Double sumLeaveDayAmount) {
		this.sumLeaveDayAmount = sumLeaveDayAmount;
	}

	public Double getSumDelayAmount() {
		return sumDelayAmount;
	}

	public void setSumDelayAmount(Double sumDelayAmount) {
		this.sumDelayAmount = sumDelayAmount;
	}

	public Double getSumSalary() {
		return sumSalary;
	}

	public void setSumSalary(Double sumSalary) {
		this.sumSalary = sumSalary;
	}

}
