package com.bachkhoa.service.impl;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.SystemConstant;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.repository.TimekeepingRepository;
import com.bachkhoa.service.ITimekeepingService;
import com.bachkhoa.util.SecurityUtils;

@Service
public class TimekeepingService implements ITimekeepingService {
	@Autowired
	private TimekeepingRepository timekeepingRepository;

	@Override
	@Transactional
	public boolean registerStartTime() {
		LocalDate date = LocalDate.now();
		LocalTime time = LocalTime.now();
		TimekeepingEntity timekeepingEntity = timekeepingRepository
				.findByUseridAndDateQuery(SecurityUtils.getPrincipal().getId(), date);
		if (timekeepingEntity == null) {
			timekeepingEntity = new TimekeepingEntity();
			timekeepingEntity.setUserid(SecurityUtils.getPrincipal().getId());
			timekeepingEntity.setWorkDay(date);
			timekeepingEntity.setStartTime(time);
			timekeepingRepository.save(timekeepingEntity);
			if (time.isAfter(SystemConstant.START_WORK_TIME)) {
				return false;
			}
		}
		return true;
	}

	@Override
	@Transactional
	public boolean registerEndTime() {
		LocalDate date = LocalDate.now();
		LocalTime time = LocalTime.now();
		TimekeepingEntity timekeepingEntity = timekeepingRepository
				.findByUseridAndDateQuery(SecurityUtils.getPrincipal().getId(), date);
		if (timekeepingEntity != null && timekeepingEntity.getEndTime() == null) {
			timekeepingEntity.setEndTime(time);
			timekeepingRepository.save(timekeepingEntity);
			return true;
		}
		return false;
	}

}
