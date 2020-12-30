package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.bachkhoa.converter.SalaryConverter;
import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.repository.SalaryRepository;
import com.bachkhoa.service.ISalaryService;
import com.bachkhoa.util.DateUtils;

@Service
public class SalaryService implements ISalaryService {

	@Autowired
	private SalaryRepository salaryRepo;
	@Autowired
	private DateUtils dateUtils;
	@Autowired
	private SalaryConverter salaryConverter;

	@Override
	public List<SalaryDTO> findByMonthAndUserId(Pageable pageable, String month, Long userId) {
		List<SalaryDTO> models = new ArrayList<>();
		List<SalaryDTO> all = this.findAllByMonthAndUserId(month, userId);
		int start = pageable.getPageNumber() * pageable.getPageSize();
		int end = pageable.getPageNumber() * pageable.getPageSize() + pageable.getPageSize() - 1;
		end = end < all.size() ? end : (all.size()-1);
		for (int i = start; i <= end; i++) {
			models.add(all.get(i));
		}
		return models;
	}

	@Override
	public int getTotalItem(String month, Long userId) {
		return (int) salaryRepo.countByUserIdAndMonth(dateUtils.stringToDate(month),
				dateUtils.getNextMonth(dateUtils.stringToDate(month)), userId);
	}

	@Override
	public List<SalaryDTO> findAllByMonthAndUserId(String month, Long userId) {
		List<SalaryDTO> dtos = new ArrayList<>();
		List<SalaryEntity> entities = salaryRepo.findByUserIdAndMonth(dateUtils.stringToDate(month),
				dateUtils.getNextMonth(dateUtils.stringToDate(month)), userId);
		for (SalaryEntity en : entities) {
			SalaryDTO dto = salaryConverter.toDTO(en);
			dtos.add(dto);
		}
		return dtos;
	}

}
