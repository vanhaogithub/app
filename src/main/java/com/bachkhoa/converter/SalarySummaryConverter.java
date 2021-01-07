package com.bachkhoa.converter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.entity.SalarySummaryEntity;
import com.bachkhoa.util.StringUtils;

@Component
public class SalarySummaryConverter {
	@Autowired
	private StringUtils stringUtils;

	public SalarySummaryDTO toDTO(SalarySummaryEntity entity) {
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

	public SalarySummaryOutDTO toOutDTO(SalarySummaryDTO dto) {
		SalarySummaryOutDTO outDto = new SalarySummaryOutDTO();
		outDto.setId(dto.getId());
		outDto.setUserid(dto.getUserid());
		outDto.setFullname(dto.getFullname());
		outDto.setMonth(dto.getMonth());
		outDto.setSumOtAmount(stringUtils.doubleToString(dto.getSumOtAmount()));
		outDto.setSumLeaveDayAmount(stringUtils.doubleToString(dto.getSumLeaveDayAmount()));
		outDto.setSumDelayAmount(stringUtils.doubleToString(dto.getSumDelayAmount()));
		outDto.setSumSalary(stringUtils.doubleToString(dto.getSumSalary()));
		return outDto;
	}

	public List<SalarySummaryOutDTO> toListOutDTO(List<SalarySummaryDTO> salarySummaryDTOs) {
		List<SalarySummaryOutDTO> salarySummaryOutDTOs = new ArrayList<>();
		for (SalarySummaryDTO salarySummaryDTO : salarySummaryDTOs) {
			SalarySummaryOutDTO salarySummaryOutDTO = this.toOutDTO(salarySummaryDTO);
			salarySummaryOutDTOs.add(salarySummaryOutDTO);
		}
		return salarySummaryOutDTOs;
	}

	public SalarySummaryEntity toEntity(SalarySummaryEntity origEntity, SalarySummaryEntity entity) {
		origEntity.setUserid(entity.getUserid());
		origEntity.setFullname(entity.getFullname());
		origEntity.setMonth(entity.getMonth());
		origEntity.setSumOtAmount(entity.getSumOtAmount());
		origEntity.setSumLeaveDayAmount(entity.getSumLeaveDayAmount());
		origEntity.setSumDelayAmount(entity.getSumDelayAmount());
		origEntity.setSumSalary(entity.getSumSalary());
		return origEntity;
	}
}
