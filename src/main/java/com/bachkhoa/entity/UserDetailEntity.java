package com.bachkhoa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "userdetail")
public class UserDetailEntity extends BaseEntity {

	@Column(name = "originid")
	private Long originid;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "email")
	private String email;

	@Column(name = "phone")
	private String phone;

	@Column(name = "departmentid")
	private Long departmentid;

	@Column(name = "manager01id")
	private Long manager01id;

	@Column(name = "manager02id")
	private Long manager02id;

	@Column(name = "daysalaryamount")
	private Double daySalaryAmount;

	@Column(name = "daybonusamount")
	private Double dayBonusAmount;

	@Column(name = "effectivedate")
	private Date effectiveDate;

	@Column(name = "expirationdate")
	private Date expirationDate;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "user_project", joinColumns = @JoinColumn(name = "userid"), inverseJoinColumns = @JoinColumn(name = "projectid"))
	private List<ProjectEntity> projects = new ArrayList<>();

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
