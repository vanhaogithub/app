package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.converter.UserDetailConverter;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.repository.UserDetailRepository;
import com.bachkhoa.service.IUserDetailService;

@Service
public class UserDetailService implements IUserDetailService {

	@Autowired
	private UserDetailRepository userDetailRepository;

	@Autowired
	private UserDetailConverter userDetailConverter;

	@Override
	public UserDetailDTO findByOriginid(Long originid) {
		UserDetailEntity userDetailEntity = userDetailRepository.findOneByOriginid(originid);
		UserDetailDTO userDetailDTO = userDetailConverter.toDto(userDetailEntity);
		return userDetailDTO;
	}

	@Override
	public List<UserDetailDTO> findBymanagerid(long managerid) {
		List<UserDetailDTO> models = new ArrayList<>();
		List<UserDetailEntity> entities = userDetailRepository.findBymanagerid(managerid);
		for (UserDetailEntity item : entities) {
			UserDetailDTO dto = userDetailConverter.toDto(item);
			models.add(dto);
		}

		return models;
	}

	@Override
	@Transactional
	public UserDetailDTO save(UserDetailDTO dto) {
		UserDetailEntity entity = new UserDetailEntity();
		if (dto.getId() != null) {
			UserDetailEntity oldEntity = userDetailRepository.findOne(dto.getId());
			entity = userDetailConverter.toEntity(oldEntity, dto);
		} else {
			entity = userDetailConverter.toEntity(dto);
		}
		UserDetailEntity entityAfter = userDetailRepository.save(entity);
		return userDetailConverter.toDto1(entityAfter);
	}

	@Override
	public String getNameByOriginid(long originid) {
		return userDetailRepository.getNameByOriginid(originid);
	}

	@Override
	public List<UserDetailDTO> findAll(Pageable pageable) {
		List<UserDetailDTO> models = new ArrayList<>();
		List<UserDetailEntity> entities = userDetailRepository.findAll(pageable).getContent();
		for (UserDetailEntity item : entities) {
			UserDetailDTO dto = userDetailConverter.toDto1(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) userDetailRepository.count();
	}
}
