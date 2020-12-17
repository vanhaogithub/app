package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.util.SecurityUtils;

@Component
public class OtConverter {
	public OtDTO toDTO(OtEntity entity) {
		OtDTO dto = new OtDTO();
		dto.setId(entity.getId());
		dto.setDateot(entity.getDateot());
		dto.setTimesot(entity.getTimesot());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		return dto;
	}

	public OtEntity toEntity(OtEntity result, OtDTO dto) {
		result.setDateot(dto.getDateot());
		result.setTimesot(dto.getTimesot());
		result.setReason(dto.getReason());
		result.setUserid(dto.getUserid());
		result.setStatus(dto.getStatus());
		return result;
	}

	public OtEntity toEntity(OtDTO dto) {
		OtEntity entity = new OtEntity();
		entity.setUserid(SecurityUtils.getPrincipal().getId());
		entity.setDateot(dto.getDateot());
		entity.setTimesot(dto.getTimesot());
		entity.setReason(dto.getReason());
		entity.setStatus(ApprovalStatus.REQUEST_STATUS);
		return entity;
	}
}
