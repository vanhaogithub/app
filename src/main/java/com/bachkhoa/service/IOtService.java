package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.OtApprovalDTO;
import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.dto.RequestApprovalDTO;

public interface IOtService {
	List<OtDTO> findByUserid(long userid);
	List<OtDTO> findAll(Pageable pageable);
	int getTotalItem(Long userId);
	OtDTO findById(long id);
	OtDTO save(OtDTO dto);
	void delete(long[] ids);
	List<OtApprovalDTO> findAllNeedApproval();
	List<OtApprovalDTO> findPageNeedApproval(int page, int limit);
	int getTotalItemApproval();
	OtDTO updateStatus(RequestApprovalDTO dto);
}
