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
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.entity.SalarySummaryEntity;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.repository.LeaveDayRepository;
import com.bachkhoa.repository.OtRepository;
import com.bachkhoa.repository.SalarySummaryRepository;
import com.bachkhoa.repository.TimekeepingRepository;
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
	private UserDetailRepository userDeatilRepository;
	@Autowired
	private OtRepository otRepository;
	@Autowired
	private LeaveDayRepository leaveDayRepository;
	@Autowired
	private TimekeepingRepository timekeepingRepository;

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
	public Float getSalaryByUserId(Long userId, String month) {
		Date date = dateUtils.stringToDate(month);
		return salarySummaryRepository.getSalaryByUserId(userId, date);
	}

	// param 10/2020
	@Override
	public List<SalarySummaryDTO> timeKeeping(String month) {
		SalaryEntity salaryEntity = new SalaryEntity();
		Date startMonth = null;
		Date endMonth = null;
		List<UserDetailEntity> allUser = userDeatilRepository.findAll();
		for (UserDetailEntity user : allUser) {
			// get OT, LeaveDay, TimeKeep with month and userId
			List<TimekeepingEntity> timekeepings = timekeepingRepository.findAllByUseridAndDate(user.getOriginid(),startMonth, endMonth);
			List<LeaveDayEntity> leaveDays = leaveDayRepository.findAllByUseridAndDate(user.getOriginid(), startMonth, endMonth);
			List<OtEntity> ots = otRepository.findAllByUseridAndDate(user.getOriginid(), startMonth, endMonth);
		}
		return null;
	}

}
