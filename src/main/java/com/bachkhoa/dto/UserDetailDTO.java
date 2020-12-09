package com.bachkhoa.dto;

import java.util.Date;
import java.util.List;

import com.bachkhoa.entity.ProjectEntity;

public class UserDetailDTO extends AbstractDTO<UserDetailDTO> {
	private Long originid;

	private String fullname;

	private String email;

	private String phone;

	private Long departmentid;

	private Long manager01id;

	private Long manager02id;

	private Float daySalaryAmount;

	private Float dayBonusAmount;

	private Date effectiveDate;

	private Date expirationDate;

	private List<ProjectEntity> projects;

	public List<ProjectEntity> getProjects() {
		return projects;
	}

	public void setProjects(List<ProjectEntity> projects) {
		this.projects = projects;
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
