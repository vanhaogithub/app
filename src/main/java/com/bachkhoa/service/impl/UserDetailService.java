package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.converter.UserDetailConverter;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.dto.UserDetailOutDTO;
import com.bachkhoa.entity.DepartmentEntity;
import com.bachkhoa.entity.UserDetailEntity;
import com.bachkhoa.repository.DepartmentRepository;
import com.bachkhoa.repository.UserDetailRepository;
import com.bachkhoa.service.IUserDetailService;

@Service
public class UserDetailService implements IUserDetailService {

	@Autowired
	private UserDetailRepository userDetailRepository;

	@Autowired
	private DepartmentRepository departmentRepository;

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
	public List<UserDetailOutDTO> findAll(Pageable pageable) {
		List<UserDetailOutDTO> models = new ArrayList<>();
		List<UserDetailEntity> entities = userDetailRepository.findAll(pageable).getContent();
		for (UserDetailEntity item : entities) {
			UserDetailOutDTO dto = userDetailConverter.toOutDto(item);
			UserDetailDTO manage01 = this.findByOriginid(item.getManager01id());
			UserDetailDTO manage02 = this.findByOriginid(item.getManager02id());
			dto.setManager01Name(manage01.getFullname());
			dto.setManager02Name(manage02.getFullname());
			DepartmentEntity department = departmentRepository.findOne(item.getDepartmentid());
			dto.setDepartmentName(department.getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) userDetailRepository.count();
	}
}
