package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
					}
				}

				for (LeaveDayEntity entity : leaveDays) {
					calendar.setTime(entity.getDateleave());
					if (calendar.get(Calendar.DAY_OF_MONTH) == i) {
						leaveDay = entity;
						checkDay = true;
					}
				}

				for (OtEntity entity : ots) {
					calendar.setTime(entity.getDateot());
					if (calendar.get(Calendar.DAY_OF_MONTH) == i) {
						ot = entity;
						checkDay = true;
					}
				}
				if (checkDay) {
					SalaryEntity salaryEntity = salaryConverter.toEntity(user, timeKeeping, leaveDay, ot);
					SalaryEntity salary = salaryRepo.save(salaryEntity);
					salaryDTOs.add(salaryConverter.toDTO(salary));
				}
			}
		}
		return salaryDTOs;
	}
}
