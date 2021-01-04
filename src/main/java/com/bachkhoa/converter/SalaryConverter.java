package com.bachkhoa.converter;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.entity.UserDetailEntity;

@Component
public class SalaryConverter {
	public SalaryDTO toDTO(SalaryEntity entity) {
		SalaryDTO dto = new SalaryDTO();
		dto.setId(entity.getId());
		dto.setWorkDay(entity.getWorkDay());
		dto.setUserid(entity.getUserid());
		dto.setFullname(entity.getFullname());
		dto.setTimesOt(entity.getTimesOt());
		dto.setStatusOt(entity.getStatusOt());
		dto.setOtAmount(entity.getOtAmount());
		dto.setTimesLeave(entity.getTimesLeave());
		dto.setStatusLeave(entity.getStatusLeave());
		dto.setLeaveDayAmount(entity.getLeaveDayAmount());
		dto.setIsDelay(entity.getIsDelay());
		dto.setDelayAmount(entity.getDelayAmount());
		dto.setDaySalaryAmount(entity.getDaySalaryAmount());
		dto.setDayBonusAmount(entity.getDayBonusAmount());
		dto.setDaySalary(entity.getDaySalary());
		dto.setAbsolve(entity.isAbsolve());
		dto.setTimeDelay(entity.getTimeDelay());
		return dto;
	}

	public SalaryEntity toEntity(UserDetailEntity user, TimekeepingEntity timeKeeping, LeaveDayEntity leaveDay,
			OtEntity ot) {
		SalaryEntity entity = new SalaryEntity();
		Date workDay = null;
		Float timesOt = (float) 0;
		String statusOt = null;
		Float otAmount = (float) 0;
		Float timesLeave = (float) 0;
		String statusLeave = null;
		Float leaveDayAmount = (float) 0;
		boolean isDelay = false;
		Float timeDelay = (float) 0;
		boolean isAbsolve = false;
		Float delayAmount = (float) 0;
		Float daySalary = user.getDayBonusAmount() + user.getDaySalaryAmount();
		Float housSalary = (user.getDayBonusAmount() + user.getDaySalaryAmount()) / 8;
		if (timeKeeping.getStartTime() != null) {
			workDay = timeKeeping.getStartTime();
			isDelay = timeKeeping.isDelay();
			timeDelay = timeKeeping.getTimeDelay();
			isAbsolve = timeKeeping.isAbsolve();
			delayAmount = isAbsolve ? (float) 0 : timeDelay * housSalary;
			daySalary = daySalary - delayAmount;
		} else if (leaveDay.getDateleave() != null) {
			workDay = leaveDay.getDateleave();
			timesLeave = leaveDay.getTimesleave();
			statusLeave = leaveDay.getStatus();
			leaveDayAmount = ApprovalStatus.APPROVALE_STATUS.equals(statusLeave) ? (float) 0
					: leaveDay.getTimesleave() * housSalary;
			daySalary = daySalary - leaveDayAmount;
		} else if (ot.getDateot() != null) {
			workDay = ot.getDateot();
			timesOt = ot.getTimesot();
			statusOt = ot.getStatus();
			otAmount = ApprovalStatus.APPROVALE_STATUS.equals(statusOt) ? ot.getTimesot() * housSalary : (float) 0;
			daySalary = daySalary + otAmount;
		}
		entity.setWorkDay(workDay);
		entity.setUserid(user.getOriginid());
		entity.setFullname(user.getFullname());
		entity.setTimesOt(timesOt);
		entity.setStatusOt(statusOt);
		entity.setOtAmount(otAmount);
		entity.setTimesLeave(timesLeave);
		entity.setStatusLeave(statusLeave);
		entity.setLeaveDayAmount(leaveDayAmount);
		entity.setIsDelay(isDelay);
		entity.setTimeDelay(timeDelay);
		entity.setAbsolve(isAbsolve);
		entity.setDelayAmount(delayAmount);
		entity.setDayBonusAmount(user.getDayBonusAmount());
		entity.setDaySalaryAmount(user.getDaySalaryAmount());
		entity.setDaySalary(daySalary);
		return null;
	}
}
