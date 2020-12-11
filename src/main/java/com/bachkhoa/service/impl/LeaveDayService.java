package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bachkhoa.converter.LeaveDayConverter;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.repository.LeaveDayRepository;
import com.bachkhoa.service.ILeaveDayService;

@Service
public class LeaveDayService implements ILeaveDayService {
	@Autowired
	private LeaveDayRepository leaveDayRepository;
	@Autowired
	private LeaveDayConverter leaveDayConverter;

	@Override
	public List<LeaveDayDTO> findByUserid(long userid) {
		List<LeaveDayEntity> entities = leaveDayRepository.findByUserid(userid);
		List<LeaveDayDTO> dtos = new ArrayList<>();
		for (LeaveDayEntity item : entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

}
