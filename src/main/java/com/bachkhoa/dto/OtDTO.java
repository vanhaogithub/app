package com.bachkhoa.dto;

import java.util.Date;

public class OtDTO extends AbstractDTO<OtDTO> {
	private Date dateot;

	private Float timesot;

	private String reason;

	private String status;

	private Long userid;

	public Date getDateot() {
		return dateot;
	}

	public void setDateot(Date dateot) {
		this.dateot = dateot;
	}

	public Float getTimesot() {
		return timesot;
	}

	public void setTimesot(Float timesot) {
		this.timesot = timesot;
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
