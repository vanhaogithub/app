package com.bachkhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.CategoryEntity;

public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {
	CategoryEntity findOneByCode(String code);
}
