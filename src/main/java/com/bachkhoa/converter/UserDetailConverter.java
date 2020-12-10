package com.bachkhoa.converter;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.UserDetailEntity;

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
}
