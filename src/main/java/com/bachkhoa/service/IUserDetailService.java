package com.bachkhoa.service;

import com.bachkhoa.dto.UserDetailDTO;

public interface IUserDetailService {
	UserDetailDTO findByOriginid(long originid);
}
