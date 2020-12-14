package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.converter.OtConverter;
import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.repository.OtRepository;
import com.bachkhoa.service.IOtService;

@Service
public class OtService implements IOtService {
	@Autowired
	private OtRepository otRepository;
	@Autowired
	private OtConverter otConverter;

	@Override
	public List<OtDTO> findByUserid(long userid) {
		List<OtEntity> entities = otRepository.findByUserid(userid);
		List<OtDTO> dtos = new ArrayList<>();
		for (OtEntity item : entities) {
			OtDTO dto = otConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public List<OtDTO> findAll(Pageable pageable) {
		List<OtDTO> models = new ArrayList<>();
		List<OtEntity> entities = otRepository.findAll(pageable).getContent();
		for (OtEntity item : entities) {
			OtDTO dto = otConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) otRepository.count();
	}

	@Override
	public OtDTO findById(long id) {
		OtEntity entity = otRepository.findOne(id);
		return otConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public OtDTO save(OtDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id : ids) {
			otRepository.delete(id);
		}

	}
}