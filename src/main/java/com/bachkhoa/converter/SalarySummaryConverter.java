package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.entity.SalarySummaryEntity;

@Component
public class SalarySummaryConverter {

	public SalarySummaryDTO toDTO(SalarySummaryEntity entity){
		SalarySummaryDTO dto = new SalarySummaryDTO();
		dto.setId(entity.getId());
		dto.setUserid(entity.getUserid());
		dto.setFullname(entity.getFullname());
		dto.setMonth(entity.getMonth());
		dto.setSumOtAmount(entity.getSumOtAmount());
		dto.setSumLeaveDayAmount(entity.getSumLeaveDayAmount());
		dto.setSumDelayAmount(entity.getSumDelayAmount());
		dto.setSumSalary(entity.getSumSalary());
		return dto;
	}
}
