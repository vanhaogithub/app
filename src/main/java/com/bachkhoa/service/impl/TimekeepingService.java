package com.bachkhoa.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.SystemConstant;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.repository.TimekeepingRepository;
import com.bachkhoa.service.ITimekeepingService;
import com.bachkhoa.util.DateUtils;
import com.bachkhoa.util.SecurityUtils;

@Service
public class TimekeepingService implements ITimekeepingService {
	@Autowired
	private TimekeepingRepository timekeepingRepository;

	@Autowired
	private DateUtils dateUtils;

	@Override
	@Transactional
	public boolean registerStartTime() {
		boolean result = true;
		Date date = new Date();
		TimekeepingEntity timekeepingEntity = timekeepingRepository.findOneByUseridAndDate(
				SecurityUtils.getPrincipal().getId(), dateUtils.getStartDay(date), dateUtils.getNextDay(date));
		if (timekeepingEntity == null) {
			timekeepingEntity = new TimekeepingEntity();
			timekeepingEntity.setUserid(SecurityUtils.getPrincipal().getId());
			timekeepingEntity.setStartTime(date);
			Date startWorkTime = dateUtils.getFinalWorkTime(date, SystemConstant.START_WORK_TIME);
			if (date.after(startWorkTime)) {
				result = false;
				timekeepingEntity.setDelay(true);
				timekeepingEntity.setTimeDelay(dateUtils.getHours(date, startWorkTime));
			} else {
				timekeepingEntity.setDelay(false);
				timekeepingEntity.setTimeDelay((double) 0);
			}
			timekeepingEntity.setAbsolve(false);
			timekeepingRepository.save(timekeepingEntity);
		}
		return result;
	}

	@Override
	@Transactional
	public boolean registerEndTime() {
		boolean result = false;
		Date date = new Date();
		TimekeepingEntity timekeepingEntity = timekeepingRepository.findOneByUseridAndDate(
				SecurityUtils.getPrincipal().getId(), dateUtils.getStartDay(date), dateUtils.getNextDay(date));
		if (timekeepingEntity != null && timekeepingEntity.getEndTime() == null) {
			timekeepingEntity.setEndTime(date);
			timekeepingRepository.save(timekeepingEntity);
			result = true;
		}
		return result;
	}

}
