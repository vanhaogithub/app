package com.bachkhoa.dto;

import java.util.Date;

public class SalarySummaryOutDTO extends AbstractDTO<SalarySummaryOutDTO> {
	private Long userid;

	private Date month;

	private String fullname;

	private String sumOtAmount;

	private String sumLeaveDayAmount;

	private String sumDelayAmount;

	private String sumSalary;

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

	public String getSumOtAmount() {
		return sumOtAmount;
	}

	public void setSumOtAmount(String sumOtAmount) {
		this.sumOtAmount = sumOtAmount;
	}

	public String getSumLeaveDayAmount() {
		return sumLeaveDayAmount;
	}

	public void setSumLeaveDayAmount(String sumLeaveDayAmount) {
		this.sumLeaveDayAmount = sumLeaveDayAmount;
	}

	public String getSumDelayAmount() {
		return sumDelayAmount;
	}

	public void setSumDelayAmount(String sumDelayAmount) {
		this.sumDelayAmount = sumDelayAmount;
	}

	public String getSumSalary() {
		return sumSalary;
	}

	public void setSumSalary(String sumSalary) {
		this.sumSalary = sumSalary;
	}
	
	
}
