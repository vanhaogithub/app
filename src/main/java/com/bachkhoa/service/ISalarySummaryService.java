package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.dto.SalarySummaryOutDTO;

public interface ISalarySummaryService {
	List<SalarySummaryDTO> findByMonth(Pageable pageable, String month);

	int getTotalItem(String month);

	Double getSalaryByUserId(Long userId, String month);

	List<SalarySummaryDTO> timeKeeping(String month);
	
	List<SalarySummaryOutDTO> findAllByMonth(String month);
}
