package com.bachkhoa.dto;

import java.util.Date;

public class UserDetailDTO extends AbstractDTO<UserDetailDTO> {
	private Long originid;

	private String fullname;

	private String email;

	private String phone;

	private Long departmentid;

	private Long manager01id;

	private Long manager02id;

	private Float daySalary;

	private Float dayBonus;

	private Date effectiveDate;

	private Date expirationDate;

	private String name;

	private String code;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

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

	public Long getManager01id() {
		return manager01id;
	}

	public void setManager01id(Long manager01id) {
		this.manager01id = manager01id;
	}

	public Long getManager02id() {
		return manager02id;
	}

	public void setManager02id(Long manager02id) {
		this.manager02id = manager02id;
	}

	public Float getDaySalary() {
		return daySalary;
	}

	public void setDaySalary(Float daySalary) {
		this.daySalary = daySalary;
	}

	public Float getDayBonus() {
		return dayBonus;
	}

	public void setDayBonus(Float dayBonus) {
		this.dayBonus = dayBonus;
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
