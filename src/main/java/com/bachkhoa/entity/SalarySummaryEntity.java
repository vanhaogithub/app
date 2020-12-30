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
	private Float sumOtAmount;

	@Column(name = "sumleavedayamount")
	private Float sumLeaveDayAmount;

	@Column(name = "sumdelayamount")
	private Float sumDelayAmount;

	@Column(name = "sumsalary")
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
