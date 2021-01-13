package com.bachkhoa.service;

import java.util.List;

import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.dto.UserDetailDTO;

public interface IMailService {
	void sendTimeKeepingMail(UserDetailDTO user, SalarySummaryOutDTO salary);

	List<SalarySummaryOutDTO> processTimeKeepingMail(String month);
}
