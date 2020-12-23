package com.bachkhoa.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bachkhoa.constant.ApprovalStatus;
import com.bachkhoa.converter.OtApprovalConverter;
import com.bachkhoa.converter.OtConverter;
import com.bachkhoa.dto.OtApprovalDTO;
import com.bachkhoa.dto.OtDTO;
import com.bachkhoa.dto.RequestApprovalDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.entity.OtEntity;
import com.bachkhoa.repository.OtRepository;
import com.bachkhoa.service.IOtService;
import com.bachkhoa.service.IUserDetailService;
import com.bachkhoa.util.SecurityUtils;

@Service
public class OtService implements IOtService {
	@Autowired
	private OtRepository otRepository;
	@Autowired
	private OtConverter otConverter;
	@Autowired
	private OtApprovalConverter otApprovalConverter;
	@Autowired
	private IUserDetailService userDetailService;

	@Override
	public List<OtDTO> findByUserid(long userid) {
		List<OtEntity> entities = otRepository.findByUserid(userid);
		List<OtDTO> dtos = new ArrayList<>();
		for (OtEntity item : entities) {
			OtDTO dto = otConverter.toDTO(item);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public List<OtDTO> findAll(Pageable pageable) {
		List<OtDTO> models = new ArrayList<>();
		// List<OtEntity> entities = otRepository.findAll(pageable).getContent();
		OtEntity otEntity = new OtEntity();
		otEntity.setUserid(SecurityUtils.getPrincipal().getId());
		Example<OtEntity> example = Example.of(otEntity);
		List<OtEntity> entities = otRepository.findAll(example, pageable).getContent();
		for (OtEntity item : entities) {
			OtDTO dto = otConverter.toDTO(item);
			models.add(dto);
		}
		return models;
	}

	@Override
	public int getTotalItem(Long userId) {
		return (int) otRepository.countUserId(userId);
	}

	@Override
	public OtDTO findById(long id) {
		OtEntity entity = otRepository.findOne(id);
		return otConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public OtDTO save(OtDTO dto) {
		OtEntity entity = new OtEntity();
		if (dto.getId() != null) {
			OtEntity oldEntity = otRepository.findOne(dto.getId());
			entity = otConverter.toEntity(oldEntity, dto);
		} else {
			entity = otConverter.toEntity(dto);
		}
		return otConverter.toDTO(otRepository.save(entity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id : ids) {
			otRepository.delete(id);
		}

	}

	@Override
	public List<OtApprovalDTO> findAllNeedApproval() {
		List<OtApprovalDTO> models = new ArrayList<>();
		List<UserDetailDTO> users = userDetailService.findBymanagerid(SecurityUtils.getPrincipal().getId());
		for (UserDetailDTO item : users) {
			OtEntity entity = new OtEntity();
			entity.setUserid(item.getOriginid());
			entity.setStatus(ApprovalStatus.REQUEST_STATUS);
			Example<OtEntity> example = Example.of(entity);
			List<OtEntity> entities = otRepository.findAll(example);
			for (OtEntity en : entities) {
				OtApprovalDTO dto = otApprovalConverter.toDTO(en, item);
				models.add(dto);
			}
		}
		return models;
	}

	@Override
	public List<OtApprovalDTO> findPageNeedApproval(int page, int limit) {
		List<OtApprovalDTO> models = new ArrayList<>();
		List<OtApprovalDTO> all = this.findAllNeedApproval();
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
	public OtDTO updateStatus(RequestApprovalDTO dto) {
		OtEntity entity = otRepository.findOne(dto.getId());
		if (ApprovalStatus.REJECT_STATUS.equals(dto.getStatus())
				|| ApprovalStatus.APPROVALE_STATUS.equals(dto.getStatus())) {
			entity.setStatus(dto.getStatus());
		}

		return otConverter.toDTO(otRepository.save(entity));
	}
}
