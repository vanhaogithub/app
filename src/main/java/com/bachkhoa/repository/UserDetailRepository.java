package com.bachkhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bachkhoa.entity.UserDetailEntity;

public interface UserDetailRepository extends JpaRepository<UserDetailEntity, Long> {
	UserDetailEntity findByOriginid(Long originid);
}
