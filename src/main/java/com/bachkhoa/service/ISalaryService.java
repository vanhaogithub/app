package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.entity.UserDetailEntity;

public interface ISalaryService {
	List<SalaryDTO> findByMonthAndUserId(Pageable pageable, String month, Long userId);

	List<SalaryDTO> findAllByMonthAndUserId(String month, Long userId);

	int getTotalItem(String month, Long userId);

	List<SalaryDTO> timeKeeping(String month);

	SalaryEntity calculateTimeKeeping(UserDetailEntity user, TimekeepingEntity timeKeeping, LeaveDayEntity leaveDay,
			OtEntity ot);
}
