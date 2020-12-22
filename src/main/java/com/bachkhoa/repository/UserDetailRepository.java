package com.bachkhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.UserDetailEntity;

public interface UserDetailRepository extends JpaRepository<UserDetailEntity, Long> {
	UserDetailEntity findOneByOriginid(Long originid);

	@Query(value = "SELECT * FROM userdetail u WHERE u.originid = :originid", nativeQuery = true)
	UserDetailEntity findUserDetailEntityByOriginidQuery(@Param("originid") Long originid);
	
	@Query(value = "SELECT * FROM userdetail u WHERE u.manager01id = :managerid or u.manager02id = :managerid", nativeQuery = true)
	List<UserDetailEntity> findBymanagerid(@Param("managerid") Long managerid);
}
