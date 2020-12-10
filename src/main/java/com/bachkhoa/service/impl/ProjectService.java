package com.bachkhoa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bachkhoa.converter.ProjectConverter;
import com.bachkhoa.dto.ProjectDTO;
import com.bachkhoa.entity.ProjectEntity;
import com.bachkhoa.repository.ProjectRepository;
import com.bachkhoa.service.IProjectService;

@Service
public class ProjectService implements IProjectService {

	@Autowired
	private ProjectRepository projectRepository;
	@Autowired
	private ProjectConverter projectConverter;

	@Override
	public ProjectDTO findById(long id) {
		ProjectEntity entity = projectRepository.findOne(id);
		ProjectDTO dto = projectConverter.toDTO(entity);
		return dto;
	}

}
