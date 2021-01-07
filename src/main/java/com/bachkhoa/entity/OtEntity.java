package com.bachkhoa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ot")
public class OtEntity extends BaseEntity {
	@Column(name = "dateot")
	private Date dateot;

	@Column(name = "timesot")
	private Double timesot;

	@Column(name = "reason")
	private String reason;

	@Column(name = "status")
	private String status;

	@Column(name = "userid")
	private Long userid;

	public Date getDateot() {
		return dateot;
	}

	public void setDateot(Date dateot) {
		/*
		 * String pattern = "yyyy-mm-dd hh:mm:ss"; SimpleDateFormat
		 * simpleDateFormat = new SimpleDateFormat(pattern); try { this.dateot =
		 * simpleDateFormat.parse(dateot); } catch (ParseException e) {
		 * this.dateot = null; }
		 */
		this.dateot = dateot;
	}

	public Double getTimesot() {
		return timesot;
	}

	public void setTimesot(Double timesot) {
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
