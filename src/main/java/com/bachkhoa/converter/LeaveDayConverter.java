package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.entity.LeaveDayEntity;

@Component
public class LeaveDayConverter {

	public LeaveDayDTO toDTO(LeaveDayEntity entity) {
		LeaveDayDTO dto = new LeaveDayDTO();
		dto.setDateleave(entity.getDateleave());
		dto.setTimesleave(entity.getTimesleave());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		return dto;
	}
}
