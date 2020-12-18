package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.util.SecurityUtils;

@Component
public class UserDetailConverter {

	public UserDetailDTO toDto(UserDetailEntity entity) {
		UserDetailDTO result = new UserDetailDTO();
		result.setId(entity.getId());
		result.setOriginid(entity.getOriginid());
		result.setFullname(entity.getFullname());
		result.setEmail(entity.getEmail());
		result.setPhone(entity.getPhone());
		result.setDepartmentid(entity.getDepartmentid());
		result.setManager01id(entity.getManager01id());
		result.setManager02id(entity.getManager02id());
		result.setDaySalaryAmount(entity.getDaySalaryAmount());
		result.setDayBonusAmount(entity.getDayBonusAmount());
		result.setEffectiveDate(entity.getEffectiveDate());
		result.setExpirationDate(entity.getExpirationDate());
		result.setProjects(entity.getProjects());
		return result;
	}

	public UserDetailEntity toEntity(UserDetailEntity result, UserDetailDTO dto) {
		result.setFullname(dto.getFullname());
		result.setEmail(dto.getEmail());
		result.setPhone(dto.getPhone());
		/*result.setDepartmentid(dto.getDepartmentid());
		result.setManager01id(dto.getManager01id());
		result.setManager02id(dto.getManager02id());
		result.setDaySalaryAmount(dto.getDaySalaryAmount());
		result.setDayBonusAmount(dto.getDayBonusAmount());
		result.setEffectiveDate(dto.getEffectiveDate());
		result.setExpirationDate(dto.getExpirationDate());
		result.setProjects(dto.getProjects());*/
		return result;
	}
	
	public UserDetailEntity toEntity(UserDetailDTO dto) {
		UserDetailEntity entity = new UserDetailEntity();
		entity.setOriginid(SecurityUtils.getPrincipal().getId());
		entity.setFullname(dto.getFullname());
		entity.setEmail(dto.getEmail());
		entity.setPhone(dto.getPhone());
		entity.setDepartmentid(dto.getDepartmentid());
		entity.setManager01id(dto.getManager01id());
		entity.setManager02id(dto.getManager02id());
		entity.setDaySalaryAmount(dto.getDaySalaryAmount());
		entity.setDayBonusAmount(dto.getDayBonusAmount());
		entity.setEffectiveDate(dto.getEffectiveDate());
		entity.setExpirationDate(dto.getExpirationDate());
		entity.setProjects(dto.getProjects());
		return entity;
	}
}
