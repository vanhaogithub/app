package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.entity.OtEntity;

@Component
public class OtConverter {
	public OtDTO toDTO(OtEntity entity) {
		OtDTO dto = new OtDTO();
		dto.setDateot(entity.getDateot());
		dto.setTimesot(entity.getTimesot());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		return dto;
	}
}
