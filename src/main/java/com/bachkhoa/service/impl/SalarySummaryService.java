package com.bachkhoa.service.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.bachkhoa.converter.SalarySummaryConverter;
import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.entity.SalarySummaryEntity;
import com.bachkhoa.repository.SalarySummaryRepository;
import com.bachkhoa.service.ISalarySummaryService;

@Service
public class SalarySummaryService implements ISalarySummaryService {

	@Autowired
	private SalarySummaryRepository salarySummaryRepository;
	@Autowired
	private SalarySummaryConverter salarySummaryConverter;

	@Override
	public List<SalarySummaryDTO> findByMonth(Pageable pageable, int month, int year) {
		LocalDate localDate = LocalDate.of(year, month, 1);
		List<SalarySummaryDTO> dtos = new ArrayList<>();
		String date = localDate.toString();
		LocalDate local = LocalDate.parse(date);
		List<SalarySummaryEntity> entities = salarySummaryRepository.findByMonth(local);

		for (SalarySummaryEntity item : entities) {
			SalarySummaryDTO dto = salarySummaryConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public int getTotalItem(int month, int year) {
		LocalDate localDate = LocalDate.of(year, month, 1);
		return (int) salarySummaryRepository.countMonth(localDate);
	}

}
