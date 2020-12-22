package com.bachkhoa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bachkhoa.entity.OtEntity;

public interface OtRepository extends JpaRepository<OtEntity, Long>{
	List<OtEntity> findByUserid(long userid);
	
	@Query(value = "SELECT count(*) FROM ot u WHERE u.userid = :userid", nativeQuery = true)
	int countUserId(@Param("userid") Long userid);
}
