package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.SalaryDTO;

public interface ISalaryService {
	List<SalaryDTO> findByMonthAndUserId(Pageable pageable, String month, Long userId);

	List<SalaryDTO> findAllByMonthAndUserId(String month, Long userId);

	int getTotalItem(String month, Long userId);

	List<SalaryDTO> timeKeeping(String month);
}
