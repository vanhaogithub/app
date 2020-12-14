package com.bachkhoa.dto;

import java.util.Date;

public class LeaveDayDTO extends AbstractDTO<LeaveDayDTO> {
	private Date dateleave;

	private Float timesleave;

	private String reason;

	private String status;

	private Long userid;

	public Date getDateleave() {
		return dateleave;
	}

	public void setDateleave(Date dateleave) {
		this.dateleave = dateleave;
	}

	public Float getTimesleave() {
		return timesleave;
	}

	public void setTimesleave(Float timesleave) {
		this.timesleave = timesleave;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}
}