package com.bachkhoa.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bachkhoa.dto.SalarySummaryDTO;
import com.bachkhoa.service.ISalarySummaryService;

@RestController(value = "salaryAPIOfAdmin")
public class SalaryAPI {
	@Autowired
	private ISalarySummaryService salarySummaryService;
	
	@PostMapping("/api/admin/salary/timeKeeping")
	public List<SalarySummaryDTO> runTimeKeeping(@RequestBody String month) {
		return salarySummaryService.timeKeeping(month);
	}
}
