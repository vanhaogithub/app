package com.bachkhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.LeaveDayEntity;

public interface LeaveDayRepository extends JpaRepository<LeaveDayEntity, Long> {
	List<LeaveDayEntity> findByUserid(long userid);
	
	@Query(value = "SELECT * FROM leaveday u WHERE u.originid = :originid", nativeQuery = true)
	List<LeaveDayEntity> findLeaveDayEntityPage(@Param("originid") Long originid);
	
	@Query(value = "SELECT count(*) FROM leaveday u WHERE u.userid = :userid", nativeQuery = true)
	int countUserId(@Param("userid") Long userid);
}
