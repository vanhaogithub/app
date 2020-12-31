package com.bachkhoa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "timekeeping")
public class TimekeepingEntity extends BaseEntity {
	@Column(name = "userid")
	private Long userid;

	@Column(name = "starttime")
	private Date startTime;

	@Column(name = "endtime")
	private Date endTime;

	@Column(name = "isdelay")
	private boolean isDelay;

	@Column(name = "timedelay")
	private Float timeDelay;

	@Column(name = "isabsolve")
	private boolean isAbsolve;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public boolean isDelay() {
		return isDelay;
	}

	public void setDelay(boolean isDelay) {
		this.isDelay = isDelay;
	}

	public Float getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(Float timeDelay) {
		this.timeDelay = timeDelay;
	}

	public boolean isAbsolve() {
		return isAbsolve;
	}

	public void setAbsolve(boolean isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

}
