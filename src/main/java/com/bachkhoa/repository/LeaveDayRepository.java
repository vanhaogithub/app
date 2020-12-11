package com.bachkhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.LeaveDayEntity;

public interface LeaveDayRepository extends JpaRepository<LeaveDayEntity, Long> {
	List<LeaveDayEntity> findByUserid(long userid);
}
