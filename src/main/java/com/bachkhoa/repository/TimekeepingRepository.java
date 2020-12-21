package com.bachkhoa.repository;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.TimekeepingEntity;

public interface TimekeepingRepository extends JpaRepository<TimekeepingEntity, Long>{
	@Query(value = "SELECT * FROM timekeeping t WHERE t.userid = :userid and t.starttime = :starttime", nativeQuery = true)
	TimekeepingEntity findByUseridAndDateQuery(@Param("userid") Long userid,@Param("starttime") Date starttime);
}
