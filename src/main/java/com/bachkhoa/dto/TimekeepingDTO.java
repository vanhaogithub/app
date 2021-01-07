package com.bachkhoa.dto;

import java.util.Date;

public class TimekeepingDTO extends AbstractDTO<TimekeepingDTO> {
	private Long userid;

	private Date startTime;

	private Date endTime;

	private boolean isDelay;

	private Double timeDelay;

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

	public Double getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(Double timeDelay) {
		this.timeDelay = timeDelay;
	}

	public boolean isAbsolve() {
		return isAbsolve;
	}

	public void setAbsolve(boolean isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

}
