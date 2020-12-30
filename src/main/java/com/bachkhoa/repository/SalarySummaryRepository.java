package com.bachkhoa.repository;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bachkhoa.entity.SalarySummaryEntity;
@Repository
public interface SalarySummaryRepository extends JpaRepository<SalarySummaryEntity, Long> {
	/*@Query("SELECT * FROM salarysummary u WHERE u.month = :month")
	Page<SalarySummaryEntity> findByMonth(@Param("month") Date month, Pageable pageable);*/
	@Query(value = "SELECT count(*) FROM salarysummary u WHERE u.month = :month", nativeQuery = true)
	int countMonth(@Param("month") Date month);
	
	@Query(value = "SELECT u.sumsalary FROM salarysummary u WHERE u.month = :month and u.userid =:userid", nativeQuery = true)
	Float getSalaryByUserId(@Param("userid") Long  userid, @Param("month") Date month);
}
