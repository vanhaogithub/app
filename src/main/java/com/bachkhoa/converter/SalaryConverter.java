package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.entity.SalaryEntity;

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

	public SalaryEntity toEntity(SalaryEntity origEntity, SalaryEntity entity) {
		origEntity.setWorkDay(entity.getWorkDay());
		origEntity.setUserid(entity.getUserid());
		origEntity.setFullname(entity.getFullname());
		origEntity.setTimesOt(entity.getTimesOt());
		origEntity.setStatusOt(entity.getStatusOt());
		origEntity.setOtAmount(entity.getOtAmount());
		origEntity.setTimesLeave(entity.getTimesLeave());
		origEntity.setStatusLeave(entity.getStatusLeave());
		origEntity.setLeaveDayAmount(entity.getLeaveDayAmount());
		origEntity.setIsDelay(entity.getIsDelay());
		origEntity.setDelayAmount(entity.getDelayAmount());
		origEntity.setDaySalaryAmount(entity.getDaySalaryAmount());
		origEntity.setDayBonusAmount(entity.getDayBonusAmount());
		origEntity.setDaySalary(entity.getDaySalary());
		origEntity.setAbsolve(entity.isAbsolve());
		origEntity.setTimeDelay(entity.getTimeDelay());
		return origEntity;
	}
}
