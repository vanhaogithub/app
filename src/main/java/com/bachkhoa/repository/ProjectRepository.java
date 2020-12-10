package com.bachkhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.ProjectEntity;

public interface ProjectRepository extends JpaRepository<ProjectEntity, Long> {

}
