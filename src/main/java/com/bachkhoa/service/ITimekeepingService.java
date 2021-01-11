package com.bachkhoa.service;

import java.util.List;

import com.bachkhoa.dto.TimekeepingDTO;

public interface ITimekeepingService {

	boolean registerStartTime();

	boolean registerEndTime();

	List<TimekeepingDTO> findByMonth(int page, int limit, String month);

	int getTotalItem(String month);
	
	List<TimekeepingDTO> findAllByMonth(String month);
}
