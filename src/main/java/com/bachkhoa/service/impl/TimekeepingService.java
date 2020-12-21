package com.bachkhoa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bachkhoa.repository.TimekeepingRepository;
import com.bachkhoa.service.ITimekeepingService;

@Service
public class TimekeepingService implements ITimekeepingService{
	@Autowired
	private TimekeepingRepository timekeepingRepository;
	@Override
	public boolean registerStartTime() {
		timekeepingRepository.findByUseridAndDateQuery(1, '');
		return false;
	}

	@Override
	public boolean registerEndTime() {
		// TODO Auto-generated method stub
		return false;
	}

}
