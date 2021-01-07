package com.bachkhoa.service;

import java.util.List;

import com.bachkhoa.dto.UserDetailDTO;

public interface IUserDetailService {
	UserDetailDTO findByOriginid(Long originid);
	UserDetailDTO save(UserDetailDTO dto);
	List<UserDetailDTO> findBymanagerid(long managerid);
	String getNameByOriginid(long originid);
}
