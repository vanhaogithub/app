package com.bachkhoa.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.TimekeepingEntity;

public interface TimekeepingRepository extends JpaRepository<TimekeepingEntity, Long> {
	@Query(value = "SELECT TOP 1 * FROM timekeeping t WHERE t.userid = :userid and t.starttime >= :start and t.starttime < :next", nativeQuery = true)
	TimekeepingEntity findOneByUseridAndDate(@Param("userid") Long userid, @Param("start") Date start,
			@Param("next") Date next);
	
	@Query(value = "SELECT * FROM timekeeping t WHERE t.userid = :userid and t.starttime >= :start and t.starttime < :next", nativeQuery = true)
	List<TimekeepingEntity> findAllByUseridAndDate(@Param("userid") Long userid, @Param("start") Date start,
			@Param("next") Date next);
}
