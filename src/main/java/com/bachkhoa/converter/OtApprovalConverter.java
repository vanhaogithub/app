package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.OtApprovalDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.OtEntity;

@Component
public class OtApprovalConverter {
	public OtApprovalDTO toDTO(OtEntity entity, UserDetailDTO userDetailDTO) {
		OtApprovalDTO dto = new OtApprovalDTO();
		dto.setId(entity.getId());
		dto.setDateot(entity.getDateot());
		dto.setTimesot(entity.getTimesot());
		dto.setReason(entity.getReason());
		dto.setStatus(entity.getStatus());
		dto.setUserid(entity.getUserid());
		dto.setUserName(userDetailDTO.getFullname());
		return dto;
	}
}
