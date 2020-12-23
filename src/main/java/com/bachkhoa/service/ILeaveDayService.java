package com.bachkhoa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.bachkhoa.dto.LeaveDayApprovalDTO;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.dto.RequestApprovalDTO;

public interface ILeaveDayService {
	List<LeaveDayDTO> findByUserid(long userid);
	List<LeaveDayDTO> findAll(Pageable pageable);
	List<LeaveDayApprovalDTO> findAllNeedApproval();
	List<LeaveDayApprovalDTO> findPageNeedApproval(int page, int limit);
	int getTotalItem(Long userId);
	int getTotalItemApproval();
	LeaveDayDTO findById(long id);
	LeaveDayDTO save(LeaveDayDTO dto);
	LeaveDayDTO updateStatus(RequestApprovalDTO dto);
	void delete(long[] ids);
}
