package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.converter.SalarySummaryConverter;
import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.entity.SalarySummaryEntity;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.repository.SalaryRepository;
import com.bachkhoa.repository.SalarySummaryRepository;
import com.bachkhoa.repository.UserDetailRepository;
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
	@Autowired
	private UserDetailRepository userDetailRepository;
	@Autowired
	private SalaryRepository salaryRepo;

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

	@Override
	public Double getSalaryByUserId(Long userId, String month) {
		Date date = dateUtils.stringToDate(month);
		return salarySummaryRepository.getSalaryByUserId(userId, date);
	}

	// param 10/2020
	@Override
	@Transactional
	public List<SalarySummaryDTO> timeKeeping(String month) {
		List<SalarySummaryDTO> salarySummaryDTOs = new ArrayList<>();
		Date startMonth = dateUtils.stringToDate(month);
		Date endMonth = dateUtils.getNextMonth(startMonth);
		List<UserDetailEntity> allUser = userDetailRepository.findAll();
		for (UserDetailEntity user : allUser) {
			List<SalaryEntity> salarys = salaryRepo.findByUserIdAndMonth(startMonth, endMonth, user.getOriginid());
			SalarySummaryEntity entity = new SalarySummaryEntity();
			Double sumOtAmount = (double) 0;
			Double sumLeaveDayAmount = (double) 0;
			Double sumDelayAmount = (double) 0;
			Double sumSalary = (double) 0;
			for (SalaryEntity salaryEntity : salarys) {
				sumOtAmount = sumOtAmount + salaryEntity.getOtAmount();
				sumLeaveDayAmount = sumLeaveDayAmount + salaryEntity.getLeaveDayAmount();
				sumDelayAmount = sumDelayAmount + salaryEntity.getDelayAmount();
				sumSalary = sumSalary + salaryEntity.getDaySalary();
			}
			entity.setUserid(user.getOriginid());
			entity.setMonth(startMonth);
			entity.setFullname(user.getFullname());
			entity.setSumOtAmount(sumOtAmount);
			entity.setSumLeaveDayAmount(sumLeaveDayAmount);
			entity.setSumDelayAmount(sumDelayAmount);
			entity.setSumSalary(sumSalary);
			SalarySummaryEntity origEntity = salarySummaryRepository.findOneByMonth(startMonth, user.getOriginid());
			SalarySummaryEntity newEntity = new SalarySummaryEntity();
			if (origEntity != null) {
				newEntity = salarySummaryConverter.toEntity(origEntity, entity);
			} else {
				newEntity = entity;
			}
			SalarySummaryEntity salarySummary = salarySummaryRepository.save(newEntity);
			salarySummaryDTOs.add(salarySummaryConverter.toDTO(salarySummary));
		}
		return salarySummaryDTOs;
	}

	@Override
	public List<SalarySummaryOutDTO> findAllByMonth(String month) {
		Date date = dateUtils.stringToDate(month);
		List<SalarySummaryOutDTO> dtos = new ArrayList<>();
		SalarySummaryEntity salarySummaryEntity = new SalarySummaryEntity();
		salarySummaryEntity.setMonth(date);
		Example<SalarySummaryEntity> example = Example.of(salarySummaryEntity);
		List<SalarySummaryEntity> entities = salarySummaryRepository.findAll(example);

		for (SalarySummaryEntity item : entities) {
			SalarySummaryOutDTO dto = salarySummaryConverter.toOutDTO(salarySummaryConverter.toDTO(item));
			dtos.add(dto);
		}
		return dtos;
	}

}
