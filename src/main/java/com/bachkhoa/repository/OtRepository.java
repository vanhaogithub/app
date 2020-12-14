package com.bachkhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.OtEntity;

public interface OtRepository extends JpaRepository<OtEntity, Long>{
	List<OtEntity> findByUserid(long userid);
}
