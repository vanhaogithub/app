package com.bachkhoa.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "project")
public class ProjectEntity extends BaseEntity {

	@Column(name = "name")
	private String name;

	@Column(name = "code")
	private String code;

	@ManyToMany(mappedBy = "projects")
	private List<UserDetailEntity> userDetails = new ArrayList<>();

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

	public List<UserDetailEntity> getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(List<UserDetailEntity> userDetails) {
		this.userDetails = userDetails;
	}
}

