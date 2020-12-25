package com.bachkhoa.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.SalarySummaryEntity;

public interface SalarySummaryRepository extends JpaRepository<SalarySummaryEntity, Long> {
	List<SalarySummaryEntity> findByMonth(LocalDate month);
	@Query(value = "SELECT count(*) FROM salarysummary u WHERE u.month = :month", nativeQuery = true)
	int countMonth(@Param("month") LocalDate month);
}
