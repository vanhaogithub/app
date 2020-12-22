package com.bachkhoa.repository;

import java.time.LocalDate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.TimekeepingEntity;

public interface TimekeepingRepository extends JpaRepository<TimekeepingEntity, Long>{
	@Query(value = "SELECT * FROM timekeeping t WHERE t.userid = :userid and t.workday = :workday", nativeQuery = true)
	TimekeepingEntity findByUseridAndDateQuery(@Param("userid") Long userid,@Param("workday") LocalDate date);
}
