package com.bachkhoa.converter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.bachkhoa.dto.ProjectDTO;
import com.bachkhoa.entity.ProjectEntity;

@Component
public class ProjectConverter {

	public ProjectDTO toDTO(ProjectEntity entity) {
		ProjectDTO projectDTO = new ProjectDTO();
		projectDTO.setCode(entity.getCode());
		projectDTO.setName(entity.getName());
		return projectDTO;
	}

	public List<ProjectDTO> toDTOs(List<ProjectEntity> entities) {
		List<ProjectDTO> projectDTOs = new ArrayList<>();
		for (ProjectEntity item : entities) {
			ProjectDTO dto = this.toDTO(item);
			projectDTOs.add(dto);
		}
		return projectDTOs;
	}
}
