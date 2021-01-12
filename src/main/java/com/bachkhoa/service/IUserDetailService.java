package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.dto.UserDetailOutDTO;

public interface IUserDetailService {
	UserDetailDTO findByOriginid(Long originid);

	UserDetailDTO save(UserDetailDTO dto);

	List<UserDetailDTO> findBymanagerid(long managerid);

	String getNameByOriginid(long originid);

	List<UserDetailOutDTO> findAll(Pageable pageable);

	int getTotalItem();
}
