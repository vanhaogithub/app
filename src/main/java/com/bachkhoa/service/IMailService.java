package com.bachkhoa.service;

import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.dto.UserDetailDTO;

public interface IMailService {
	void sendTimeKeepingMail(UserDetailDTO user, SalarySummaryOutDTO salary);
}
