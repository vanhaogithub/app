package com.bachkhoa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "leaveday")
public class LeaveDayEntity extends BaseEntity {
	@Column(name = "dateleave")
	private Date dateleave;

	@Column(name = "timesleave")
	private Float timesleave;

	@Column(name = "reason")
	private String reason;

	@Column(name = "status")
	private String status;

	@Column(name = "userid")
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
