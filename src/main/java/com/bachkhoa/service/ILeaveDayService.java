package com.bachkhoa.service;

import java.util.List;

import com.bachkhoa.dto.LeaveDayDTO;

public interface ILeaveDayService {
	List<LeaveDayDTO> findByUserid(long userid);
}
