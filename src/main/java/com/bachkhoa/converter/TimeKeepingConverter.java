package com.bachkhoa.converter;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.bachkhoa.constant.SystemConstant;
import com.bachkhoa.dto.TimekeepingDTO;
import com.bachkhoa.entity.TimekeepingEntity;

@Component
public class TimeKeepingConverter {
	public TimekeepingDTO toDTO(TimekeepingEntity entity) {
		DecimalFormat df = new DecimalFormat("#.##");
		TimekeepingDTO dto = new TimekeepingDTO();
		dto.setId(entity.getId());
		dto.setUserid(entity.getUserid());
		dto.setStartTime(entity.getStartTime());
		dto.setEndTime(entity.getEndTime());
		String isDelay = "";
		if (entity.isDelay()) {
			isDelay = SystemConstant.YES;
		} else {
			isDelay = SystemConstant.NO;
		}
		dto.setIsDelay(isDelay);
		dto.setTimeDelay(df.format(entity.getTimeDelay()));
		String isAbsolve = "";
		if (entity.isAbsolve()) {
			isAbsolve = SystemConstant.YES;
		} else {
			isAbsolve = SystemConstant.NO;
		}
		dto.setIsAbsolve(isAbsolve);
		return dto;
	}
	
	public List<TimekeepingDTO> toListDTO(List<TimekeepingEntity> entities) {
		List<TimekeepingDTO> dtos = new ArrayList<>();
		for (TimekeepingEntity en : entities) {
			TimekeepingDTO dto = this.toDTO(en);
			dtos.add(dto);
		}
		return dtos;
	}
}
