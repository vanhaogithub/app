package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.TimekeepingDTO;

public interface ITimekeepingService {

	boolean registerStartTime();

	boolean registerEndTime();

	List<TimekeepingDTO> findByMonth(Pageable pageable, String month);

	int getTotalItem(String month);
}
