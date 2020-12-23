package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.converter.LeaveDayApprovalConverter;
import com.bachkhoa.converter.LeaveDayConverter;
import com.bachkhoa.dto.LeaveDayApprovalDTO;
import com.bachkhoa.dto.LeaveDayDTO;
import com.bachkhoa.dto.RequestApprovalDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.LeaveDayEntity;
import com.bachkhoa.repository.LeaveDayRepository;
import com.bachkhoa.service.ILeaveDayService;
import com.bachkhoa.service.IUserDetailService;
import com.bachkhoa.util.SecurityUtils;

@Service
public class LeaveDayService implements ILeaveDayService {
	@Autowired
	private LeaveDayRepository leaveDayRepository;

	@Autowired
	private LeaveDayConverter leaveDayConverter;

	@Autowired
	private LeaveDayApprovalConverter leaveDayApprovalConverter;

	@Autowired
	private IUserDetailService userDetailService;

	@Override
	public List<LeaveDayDTO> findByUserid(long userid) {
		List<LeaveDayEntity> entities = leaveDayRepository.findByUserid(userid);
		List<LeaveDayDTO> dtos = new ArrayList<>();
		for (LeaveDayEntity item : entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public List<LeaveDayDTO> findAll(Pageable pageable) {
		List<LeaveDayDTO> models = new ArrayList<>();
		// List<LeaveDayEntity> entities =
		// leaveDayRepository.findAll(pageable).getContent();
		LeaveDayEntity leaveDayEntity = new LeaveDayEntity();
		leaveDayEntity.setUserid(SecurityUtils.getPrincipal().getId());
		Example<LeaveDayEntity> example = Example.of(leaveDayEntity);
		List<LeaveDayEntity> entities = leaveDayRepository.findAll(example, pageable).getContent();
		for (LeaveDayEntity item : entities) {
			LeaveDayDTO dto = leaveDayConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public List<LeaveDayApprovalDTO> findAllNeedApproval() {
		// tao new 1 DTO cho man hinh approval: userId, leaveDayId...
		List<LeaveDayApprovalDTO> models = new ArrayList<>();
		List<UserDetailDTO> users = userDetailService.findBymanagerid(SecurityUtils.getPrincipal().getId());
		for (UserDetailDTO item : users) {
			LeaveDayEntity leaveDayEntity = new LeaveDayEntity();
			leaveDayEntity.setUserid(item.getOriginid());
			leaveDayEntity.setStatus(ApprovalStatus.REQUEST_STATUS);
			Example<LeaveDayEntity> example = Example.of(leaveDayEntity);
			List<LeaveDayEntity> entities = leaveDayRepository.findAll(example);
			for (LeaveDayEntity entity : entities) {
				LeaveDayApprovalDTO dto = leaveDayApprovalConverter.toDTO(entity, item);
				models.add(dto);
			}
		}
		return models;
	}

	@Override
	public List<LeaveDayApprovalDTO> findPageNeedApproval(int page, int limit) {
		List<LeaveDayApprovalDTO> models = new ArrayList<>();
		List<LeaveDayApprovalDTO> all = this.findAllNeedApproval();
		int start = (page - 1) * limit;
		int end = (page - 1) * limit + limit - 1;
		end = end < all.size() ? end : all.size();
		for (int i = start; i < end; i++) {
			models.add(all.get(i));
		}
		return models;
	}

	@Override
	public int getTotalItemApproval() {
		return this.findAllNeedApproval().size();
	}

	@Override
	public int getTotalItem(Long userId) {
		return (int) leaveDayRepository.countUserId(userId);
	}

	@Override
	public LeaveDayDTO findById(long id) {
		LeaveDayEntity entity = leaveDayRepository.findOne(id);
		return leaveDayConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public LeaveDayDTO save(LeaveDayDTO dto) {
		LeaveDayEntity entity = new LeaveDayEntity();
		if (dto.getId() != null) {
			LeaveDayEntity oldEntity = leaveDayRepository.findOne(dto.getId());
			entity = leaveDayConverter.toEntity(oldEntity, dto);
		} else {
			entity = leaveDayConverter.toEntity(dto);
		}
		return leaveDayConverter.toDTO(leaveDayRepository.save(entity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id : ids) {
			leaveDayRepository.delete(id);
		}

	}

	@Override
	public LeaveDayDTO updateStatus(RequestApprovalDTO dto) {
		LeaveDayEntity entity = leaveDayRepository.findOne(dto.getId());
		entity.setStatus(dto.getStatus());
		return leaveDayConverter.toDTO(leaveDayRepository.save(entity));
	}

}
