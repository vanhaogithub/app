package com.bachkhoa.converter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.dto.SalaryOutDTO;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.util.StringUtils;

@Component
public class SalaryConverter {
	@Autowired
	private StringUtils stringUtils;

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

	public SalaryOutDTO toOutDTO(SalaryDTO salaryDTO) {
		SalaryOutDTO dto = new SalaryOutDTO();
		dto.setId(salaryDTO.getId());
		dto.setWorkDay(salaryDTO.getWorkDay());
		dto.setUserid(salaryDTO.getUserid());
		dto.setFullname(salaryDTO.getFullname());
		dto.setTimesOt(salaryDTO.getTimesOt());
		dto.setStatusOt(salaryDTO.getStatusOt());
		dto.setOtAmount(stringUtils.floatToString(salaryDTO.getOtAmount()));
		dto.setTimesLeave(salaryDTO.getTimesLeave());
		dto.setStatusLeave(salaryDTO.getStatusLeave());
		dto.setLeaveDayAmount(stringUtils.floatToString(salaryDTO.getLeaveDayAmount()));
		dto.setDelay(salaryDTO.getIsDelay());
		dto.setDelayAmount(stringUtils.floatToString(salaryDTO.getDelayAmount()));
		dto.setDaySalaryAmount(stringUtils.floatToString(salaryDTO.getDaySalaryAmount()));
		dto.setDayBonusAmount(stringUtils.floatToString(salaryDTO.getDayBonusAmount()));
		dto.setDaySalary(stringUtils.floatToString(salaryDTO.getDaySalary()));
		dto.setAbsolve(salaryDTO.isAbsolve());
		dto.setTimeDelay(salaryDTO.getTimeDelay());
		return dto;
	}

	public List<SalaryOutDTO> toListOutDTO(List<SalaryDTO> salaryDTOs) {
		List<SalaryOutDTO> salaryOutDTOs = new ArrayList<>();
		for (SalaryDTO salaryDTO : salaryDTOs) {
			SalaryOutDTO salaryOutDTO = this.toOutDTO(salaryDTO);
			salaryOutDTOs.add(salaryOutDTO);
		}
		return salaryOutDTOs;
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
