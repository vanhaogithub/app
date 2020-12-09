package com.bachkhoa.dto;

import java.util.Date;

public class TimekeepingDTO extends AbstractDTO<TimekeepingDTO> {
	private Long userid;

	private Date startTime;

	private Date endTime;

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
}
