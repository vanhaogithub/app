package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public List<LeaveDayDTO> findAll(Pageable pageable) {
		List<LeaveDayDTO> models = new ArrayList<>();
		List<LeaveDayEntity> entities = leaveDayRepository.findAll(pageable).getContent();
		for (LeaveDayEntity item: entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) leaveDayRepository.count();
	}

	@Override
	public LeaveDayDTO findById(long id) {
		LeaveDayEntity entity = leaveDayRepository.findOne(id);
		return leaveDayConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public LeaveDayDTO save(LeaveDayDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			leaveDayRepository.delete(id);
		}
		
	}

}
