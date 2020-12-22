package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.converter.LeaveDayConverter;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.repository.LeaveDayRepository;
import com.bachkhoa.service.ILeaveDayService;
import com.bachkhoa.util.SecurityUtils;

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
		//List<LeaveDayEntity> entities = leaveDayRepository.findAll(pageable).getContent();
		LeaveDayEntity leaveDayEntity = new LeaveDayEntity();
		leaveDayEntity.setUserid(SecurityUtils.getPrincipal().getId());
		Example<LeaveDayEntity> example = Example.of(leaveDayEntity);
		List<LeaveDayEntity> entities = leaveDayRepository.findAll(example, pageable).getContent();
		for (LeaveDayEntity item: entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}
	
	@Override
	public List<LeaveDayDTO> findAllNeedApproval(Pageable pageable) {
		// tao new 1 DTO cho man hinh approval: userId, leaveDayId... 
		List<LeaveDayDTO> models = new ArrayList<>();
		LeaveDayEntity leaveDayEntity = new LeaveDayEntity();
		leaveDayEntity.setUserid(SecurityUtils.getPrincipal().getId());
		Example<LeaveDayEntity> example = Example.of(leaveDayEntity);
		List<LeaveDayEntity> entities = leaveDayRepository.findAll(example, pageable).getContent();
		for (LeaveDayEntity item: entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem(Long userId) {
		return (int) leaveDayRepository.countUserId(userId);
	}

	@Override
	public LeaveDayDTO findById(long id) {
		LeaveDayEntity entity = leaveDayRepository.findOne(id);
		return leaveDayConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public LeaveDayDTO save(LeaveDayDTO dto) {
		LeaveDayEntity entity = new LeaveDayEntity();
		if (dto.getId() != null) {
			LeaveDayEntity oldEntity = leaveDayRepository.findOne(dto.getId());
			entity = leaveDayConverter.toEntity(oldEntity, dto);
		} else {
			entity = leaveDayConverter.toEntity(dto);
		}
		return leaveDayConverter.toDTO(leaveDayRepository.save(entity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			leaveDayRepository.delete(id);
		}
		
	}

}
