package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.bachkhoa.converter.SalarySummaryConverter;
import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.entity.SalarySummaryEntity;
import com.bachkhoa.repository.SalarySummaryRepository;
import com.bachkhoa.service.ISalarySummaryService;
import com.bachkhoa.util.DateUtils;

@Service
public class SalarySummaryService implements ISalarySummaryService {

	@Autowired
	private SalarySummaryRepository salarySummaryRepository;
	@Autowired
	private SalarySummaryConverter salarySummaryConverter;
	@Autowired
	private DateUtils dateUtils;
	@Override
	public List<SalarySummaryDTO> findByMonth(Pageable pageable, String month) {
		Date date = dateUtils.stringToDate(month);
		List<SalarySummaryDTO> dtos = new ArrayList<>();
		SalarySummaryEntity salarySummaryEntity = new SalarySummaryEntity();
		salarySummaryEntity.setMonth(date);
		Example<SalarySummaryEntity> example = Example.of(salarySummaryEntity);
		List<SalarySummaryEntity> entities = salarySummaryRepository.findAll(example, pageable).getContent();

		for (SalarySummaryEntity item : entities) {
			SalarySummaryDTO dto = salarySummaryConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public int getTotalItem(String month) {
		Date date = dateUtils.stringToDate(month);
		return (int) salarySummaryRepository.countMonth(date);
	}
	
	

}
