package com.bachkhoa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.UserDetailEntity;

public interface UserDetailRepository extends JpaRepository<UserDetailEntity, Long> {
	UserDetailEntity findOneByOriginid(Long originid);

	@Query(value = "SELECT * FROM userdetail u WHERE u.originid = :originid", nativeQuery = true)
	UserDetailEntity findUserDetailEntityByOriginidQuery(@Param("originid") Long originid);
}
