package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.SalarySummaryDTO;

public interface ISalarySummaryService {
	List<SalarySummaryDTO> findByMonth(Pageable pageable, int month, int year);

	int getTotalItem(int month, int year);
}
