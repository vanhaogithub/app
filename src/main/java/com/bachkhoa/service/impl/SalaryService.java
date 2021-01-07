package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.converter.SalaryConverter;
import com.bachkhoa.dto.SalaryDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.entity.SalaryEntity;
import com.bachkhoa.entity.TimekeepingEntity;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.repository.LeaveDayRepository;
import com.bachkhoa.repository.OtRepository;
import com.bachkhoa.repository.SalaryRepository;
import com.bachkhoa.repository.TimekeepingRepository;
import com.bachkhoa.repository.UserDetailRepository;
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
	@Autowired
	private UserDetailRepository userDetailRepository;
	@Autowired
	private OtRepository otRepository;
	@Autowired
	private LeaveDayRepository leaveDayRepository;
	@Autowired
	private TimekeepingRepository timekeepingRepository;

	@Override
	public List<SalaryDTO> findByMonthAndUserId(Pageable pageable, String month, Long userId) {
		List<SalaryDTO> models = new ArrayList<>();
		List<SalaryDTO> all = this.findAllByMonthAndUserId(month, userId);
		int start = pageable.getPageNumber() * pageable.getPageSize();
		int end = pageable.getPageNumber() * pageable.getPageSize() + pageable.getPageSize() - 1;
		end = end < all.size() ? end : (all.size() - 1);
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

	// param 10/2020
	@Override
	@Transactional
	public List<SalaryDTO> timeKeeping(String month) {
		List<SalaryDTO> salaryDTOs = new ArrayList<>();
		Date startMonth = dateUtils.stringToDate(month);
		Date endMonth = dateUtils.getNextMonth(startMonth);
		List<UserDetailEntity> allUser = userDetailRepository.findAll();
		for (UserDetailEntity user : allUser) {
			// get OT, LeaveDay, TimeKeep with month and userId
			List<TimekeepingEntity> timekeepings = timekeepingRepository.findAllByUseridAndDate(user.getOriginid(),
					startMonth, endMonth);
			List<LeaveDayEntity> leaveDays = leaveDayRepository.findAllByUseridAndDate(user.getOriginid(), startMonth,
					endMonth);
			List<OtEntity> ots = otRepository.findAllByUseridAndDate(user.getOriginid(), startMonth, endMonth);
			for (int i = 1; i <= 31; i++) {
				boolean checkDay = false;
				Calendar calendar = Calendar.getInstance();
				TimekeepingEntity timeKeeping = new TimekeepingEntity();
				LeaveDayEntity leaveDay = new LeaveDayEntity();
				OtEntity ot = new OtEntity();

				for (TimekeepingEntity entity : timekeepings) {
					calendar.setTime(entity.getStartTime());
					if (calendar.get(Calendar.DAY_OF_MONTH) == i) {
						timeKeeping = entity;
						checkDay = true;
						break;
					}
				}

				for (LeaveDayEntity entity : leaveDays) {
					calendar.setTime(entity.getDateleave());
					if (calendar.get(Calendar.DAY_OF_MONTH) == i) {
						leaveDay = entity;
						checkDay = true;
						break;
					}
				}

				for (OtEntity entity : ots) {
					calendar.setTime(entity.getDateot());
					if (calendar.get(Calendar.DAY_OF_MONTH) == i) {
						ot = entity;
						checkDay = true;
						break;
					}
				}
				if (checkDay) {
					SalaryEntity newEntity = new SalaryEntity();
					SalaryEntity calculateEntity = this.calculateTimeKeeping(user, timeKeeping, leaveDay, ot);
					SalaryEntity oldEntity = salaryRepo.findOneByWorkDay(calculateEntity.getWorkDay(), user.getOriginid());
					if (oldEntity != null) {
						newEntity = salaryConverter.toEntity(oldEntity, calculateEntity);
					} else {
						newEntity = calculateEntity;
					}
					SalaryEntity salary = salaryRepo.save(newEntity);
					salaryDTOs.add(salaryConverter.toDTO(salary));
				}
			}
		}
		return salaryDTOs;
	}

	@Override
	public SalaryEntity calculateTimeKeeping(UserDetailEntity user, TimekeepingEntity timeKeeping,
			LeaveDayEntity leaveDay, OtEntity ot) {
		SalaryEntity entity = new SalaryEntity();
		Date workDay = null;
		Double timesOt = (double) 0;
		String statusOt = null;
		Double otAmount = (double) 0;
		Double timesLeave = (double) 0;
		String statusLeave = null;
		Double leaveDayAmount = (double) 0;
		boolean isDelay = false;
		Double timeDelay = (double) 0;
		boolean isAbsolve = false;
		Double delayAmount = (double) 0;
		Double daySalary = user.getDayBonusAmount() + user.getDaySalaryAmount();
		Double housSalary = (user.getDayBonusAmount() + user.getDaySalaryAmount()) / 8;
		if (timeKeeping.getStartTime() != null) {
			workDay = timeKeeping.getStartTime();
			isDelay = timeKeeping.isDelay();
			timeDelay = timeKeeping.getTimeDelay();
			isAbsolve = timeKeeping.isAbsolve();
			delayAmount = isAbsolve ? (double) 0 : timeDelay * housSalary;
			daySalary = daySalary - delayAmount;
		}
		if (leaveDay.getDateleave() != null) {
			workDay = leaveDay.getDateleave();
			timesLeave = leaveDay.getTimesleave();
			statusLeave = leaveDay.getStatus();
			leaveDayAmount = ApprovalStatus.APPROVALE_STATUS.equals(statusLeave) ? (double) 0
					: leaveDay.getTimesleave() * housSalary;
			daySalary = daySalary - leaveDayAmount;
		}
		if (ot.getDateot() != null) {
			workDay = ot.getDateot();
			timesOt = ot.getTimesot();
			statusOt = ot.getStatus();
			otAmount = ApprovalStatus.APPROVALE_STATUS.equals(statusOt) ? ot.getTimesot() * housSalary : (double) 0;
			daySalary = daySalary + otAmount;
		}
		workDay = dateUtils.getStartDay(workDay);
		entity.setWorkDay(workDay);
		entity.setUserid(user.getOriginid());
		entity.setFullname(user.getFullname());
		entity.setTimesOt(timesOt);
		entity.setStatusOt(statusOt);
		entity.setOtAmount(otAmount);
		entity.setTimesLeave(timesLeave);
		entity.setStatusLeave(statusLeave);
		entity.setLeaveDayAmount(leaveDayAmount);
		entity.setIsDelay(isDelay);
		entity.setTimeDelay(timeDelay);
		entity.setAbsolve(isAbsolve);
		entity.setDelayAmount(delayAmount);
		entity.setDayBonusAmount(user.getDayBonusAmount());
		entity.setDaySalaryAmount(user.getDaySalaryAmount());
		entity.setDaySalary(daySalary);
		return entity;
	}
}
