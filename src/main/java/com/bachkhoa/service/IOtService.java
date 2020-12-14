package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.OtDTO;

public interface IOtService {
	List<OtDTO> findByUserid(long userid);
	List<OtDTO> findAll(Pageable pageable);
	int getTotalItem();
	OtDTO findById(long id);
	OtDTO save(OtDTO dto);
	void delete(long[] ids);
}
