package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.LeaveDayDTO;

public interface ILeaveDayService {
	List<LeaveDayDTO> findByUserid(long userid);
	List<LeaveDayDTO> findAll(Pageable pageable);
	List<LeaveDayDTO> findAllNeedApproval(Pageable pageable);
	int getTotalItem(Long userId);
	LeaveDayDTO findById(long id);
	LeaveDayDTO save(LeaveDayDTO dto);
	void delete(long[] ids);
}
