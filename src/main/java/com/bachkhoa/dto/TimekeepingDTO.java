package com.bachkhoa.dto;

import java.util.Date;

public class TimekeepingDTO extends AbstractDTO<TimekeepingDTO> {
	private Long userid;

	private Date startTime;

	private Date endTime;

	private String isDelay;

	private String timeDelay;

	private String isAbsolve;

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

	public String getIsDelay() {
		return isDelay;
	}

	public void setIsDelay(String isDelay) {
		this.isDelay = isDelay;
	}

	public String getIsAbsolve() {
		return isAbsolve;
	}

	public void setIsAbsolve(String isAbsolve) {
		this.isAbsolve = isAbsolve;
	}

	public String getTimeDelay() {
		return timeDelay;
	}

	public void setTimeDelay(String timeDelay) {
		this.timeDelay = timeDelay;
	}

}
