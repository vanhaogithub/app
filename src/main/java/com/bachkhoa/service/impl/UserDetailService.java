package com.bachkhoa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public UserDetailDTO findByOriginid(long originid) {
		UserDetailEntity userDetailEntity = userDetailRepository.findOneByOriginid(originid);
		UserDetailDTO userDetailDTO = userDetailConverter.toDto(userDetailEntity);
		return userDetailDTO;
	}

}
