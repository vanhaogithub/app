package com.bachkhoa.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bachkhoa.entity.SalaryEntity;

@Repository
public interface SalaryRepository extends JpaRepository<SalaryEntity, Long> {
	@Query(value = "SELECT count(*) FROM salary u WHERE u.workday >= :start and u.workday <= :end and u.userid = :userid", nativeQuery = true)
	int countByUserIdAndMonth(@Param("start") Date start, @Param("end") Date end, @Param("userid") Long userid);

	@Query(value = "SELECT * FROM salary u WHERE u.workday >= :start and u.workday <= :end and u.userid = :userid", nativeQuery = true)
	List<SalaryEntity> findByUserIdAndMonth(@Param("start") Date start, @Param("end") Date end,
			@Param("userid") Long userid);

}
