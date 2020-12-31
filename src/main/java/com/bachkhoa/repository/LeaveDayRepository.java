package com.bachkhoa.repository;

import java.util.Date;
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
	
	@Query(value = "SELECT * FROM leaveday t WHERE t.userid = :userid and t.dateleave >= :start and t.dateleave < :next", nativeQuery = true)
	List<LeaveDayEntity> findAllByUseridAndDate(@Param("userid") Long userid, @Param("start") Date start,
			@Param("next") Date next);
}
