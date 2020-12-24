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
		return dto;
	}
}
