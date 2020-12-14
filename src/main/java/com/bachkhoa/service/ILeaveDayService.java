package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.LeaveDayDTO;

public interface ILeaveDayService {
	List<LeaveDayDTO> findByUserid(long userid);
	List<LeaveDayDTO> findAll(Pageable pageable);
	int getTotalItem();
	LeaveDayDTO findById(long id);
	LeaveDayDTO save(LeaveDayDTO dto);
	void delete(long[] ids);
}
