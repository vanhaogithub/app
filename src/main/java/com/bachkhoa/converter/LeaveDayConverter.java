package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.util.SecurityUtils;

@Component
public class LeaveDayConverter {

	public LeaveDayDTO toDTO(LeaveDayEntity entity) {
		LeaveDayDTO dto = new LeaveDayDTO();
		dto.setId(entity.getId());
		dto.setDateleave(entity.getDateleave());
		dto.setTimesleave(entity.getTimesleave());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		return dto;
	}

	public LeaveDayEntity toEntity(LeaveDayEntity result, LeaveDayDTO dto) {
		result.setDateleave(dto.getDateleave());
		result.setTimesleave(dto.getTimesleave());
		result.setReason(dto.getReason());
		result.setUserid(dto.getUserid());
		result.setStatus(dto.getStatus());
		return result;
	}

	public LeaveDayEntity toEntity(LeaveDayDTO dto) {
		LeaveDayEntity entity = new LeaveDayEntity();
		entity.setUserid(SecurityUtils.getPrincipal().getId());
		entity.setDateleave(dto.getDateleave());
		entity.setTimesleave(dto.getTimesleave());
		entity.setReason(dto.getReason());
		entity.setStatus(ApprovalStatus.REQUEST_STATUS);
		return entity;
	}
}
