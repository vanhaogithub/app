package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.LeaveDayApprovalDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.LeaveDayEntity;

@Component
public class LeaveDayApprovalConverter {
	public LeaveDayApprovalDTO toDTO(LeaveDayEntity entity, UserDetailDTO userDetailDTO) {
		LeaveDayApprovalDTO dto = new LeaveDayApprovalDTO();
		dto.setId(entity.getId());
		dto.setDateleave(entity.getDateleave());
		dto.setTimesleave(entity.getTimesleave());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		dto.setUserName(userDetailDTO.getFullname());
		return dto;
	}
}
