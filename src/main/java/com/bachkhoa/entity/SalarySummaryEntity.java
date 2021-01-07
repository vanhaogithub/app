package com.bachkhoa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "salarysummary")
public class SalarySummaryEntity extends BaseEntity {
	@Column(name = "userid")
	private Long userid;

	@Column(name = "month")
	private Date month;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "sumotamount")
	private Double sumOtAmount;

	@Column(name = "sumleavedayamount")
	private Double sumLeaveDayAmount;

	@Column(name = "sumdelayamount")
	private Double sumDelayAmount;

	@Column(name = "sumsalary")
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
