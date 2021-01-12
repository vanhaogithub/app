package com.bachkhoa.dto;

import java.util.Date;

public class UserDetailOutDTO extends AbstractDTO<UserDetailOutDTO> {
	private Long originid;

	private String fullname;

	private String email;

	private String phone;

	private Long departmentid;

	private String departmentName;

	private Long manager01id;

	private String manager01Name;

	private Long manager02id;

	private String manager02Name;

	private Double daySalaryAmount;

	private Double dayBonusAmount;

	private Date effectiveDate;

	private Date expirationDate;

	public Long getOriginid() {
		return originid;
	}

	public void setOriginid(Long originid) {
		this.originid = originid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(Long departmentid) {
		this.departmentid = departmentid;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public Long getManager01id() {
		return manager01id;
	}

	public void setManager01id(Long manager01id) {
		this.manager01id = manager01id;
	}

	public String getManager01Name() {
		return manager01Name;
	}

	public void setManager01Name(String manager01Name) {
		this.manager01Name = manager01Name;
	}

	public Long getManager02id() {
		return manager02id;
	}

	public void setManager02id(Long manager02id) {
		this.manager02id = manager02id;
	}

	public String getManager02Name() {
		return manager02Name;
	}

	public void setManager02Name(String manager02Name) {
		this.manager02Name = manager02Name;
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

	public Date getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

}
