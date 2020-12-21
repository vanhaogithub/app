package com.bachkhoa.dto;

import java.time.LocalDate;
import java.time.LocalTime;

public class TimekeepingDTO extends AbstractDTO<TimekeepingDTO> {
	private Long userid;

	private LocalDate workDay;

	private LocalTime startTime;

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
