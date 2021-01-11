package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.SystemConstant;
import com.bachkhoa.converter.TimeKeepingConverter;
import com.bachkhoa.dto.TimekeepingDTO;
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

	@Autowired
	private TimeKeepingConverter timeKeepingConverter;

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

	@Override
	public List<TimekeepingDTO> findByMonth(int page, int limit, String month) {
		List<TimekeepingDTO> models = new ArrayList<>();
		List<TimekeepingDTO> all = this.findAllByMonth(month);
		int start = (page - 1) * limit;
		int end = (page - 1) * limit + limit - 1;
		end = end < all.size() ? end : (all.size()-1);
		for (int i = start; i <= end; i++) {
			models.add(all.get(i));
		}
		return models;
	}

	@Override
	public int getTotalItem(String month) {
		return this.findAllByMonth(month).size();
	}

	@Override
	public List<TimekeepingDTO> findAllByMonth(String month) {
		Date startMonth = dateUtils.stringToDate(month);
		Date endMonth = dateUtils.getNextMonth(startMonth);
		List<TimekeepingEntity> timekeepings = timekeepingRepository
				.findAllByUseridAndDate(SecurityUtils.getPrincipal().getId(), startMonth, endMonth);
		List<TimekeepingDTO> models = timeKeepingConverter.toListDTO(timekeepings);
		return models;
	}
}
