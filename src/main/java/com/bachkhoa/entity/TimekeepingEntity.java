package com.bachkhoa.entity;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "timekeeping")
public class TimekeepingEntity extends BaseEntity {
	@Column(name = "userid")
	private Long userid;
	
	@Column(name = "workday")
	private LocalDate workDay;

	@Column(name = "starttime")
	private LocalTime startTime;

	@Column(name = "endtime")
	private LocalTime endTime;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public LocalDate getWorkDay() {
		return workDay;
	}

	public void setWorkDay(LocalDate workDay) {
		this.workDay = workDay;
	}

	public LocalTime getStartTime() {
		return startTime;
	}

	public void setStartTime(LocalTime startTime) {
		this.startTime = startTime;
	}

	public LocalTime getEndTime() {
		return endTime;
	}

	public void setEndTime(LocalTime endTime) {
		this.endTime = endTime;
	}


}
