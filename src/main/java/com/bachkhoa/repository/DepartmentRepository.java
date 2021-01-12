package com.bachkhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.DepartmentEntity;

public interface DepartmentRepository extends JpaRepository<DepartmentEntity, Long>{

}
