package com.bachkhoa.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.bachkhoa.constant.SystemConstant;
import com.bachkhoa.dto.SalarySummaryOutDTO;
import com.bachkhoa.dto.UserDetailDTO;
import com.bachkhoa.service.IMailService;
import com.bachkhoa.service.ISalarySummaryService;
import com.bachkhoa.service.IUserDetailService;

@Service
public class MailService implements IMailService {

	static String emailToRecipient, emailSubject, emailMessage;

	@Autowired
	private ISalarySummaryService salarySummaryService;

	@Autowired
	private JavaMailSender mailSenderObj;

	@Autowired
	private IUserDetailService userDetailService;

	@Override
	public void sendTimeKeepingMail(UserDetailDTO user, SalarySummaryOutDTO salary) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		emailToRecipient = "nguyenhao.mailfortest@gmail.com"; //user.getEmail();
		emailSubject = "Cong ty XXX tra luong thang " + sdf.format(salary.getMonth()).substring(0, 10);
		emailMessage = "<b>Dear " + salary.getFullname() + "</b>,<br>"
				+ "<i>Sau day la thong tin luong ban nhan duoc trong thang </i>"
				+ sdf.format(salary.getMonth()).substring(0, 10) + " <br>" + "<i>Tong tien OT nhan duoc: </i>"
				+ salary.getSumOtAmount() + " <br>" + "<i>Tong tien nghi phep duoc cong bu: </i>"
				+ salary.getSumLeaveDayAmount() + " <br>" + "<i>Tong tien di lam tre bi tru: </i>"
				+ salary.getSumDelayAmount() + " <br>" + "<i>Tong luong nhan duoc: </i>" + salary.getSumSalary()
				+ " <br>";
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(SystemConstant.EMAIL_SERVER);
				mimeMsgHelperObj.setText(emailMessage, true);
				mimeMsgHelperObj.setSubject(emailSubject);
			}
		});
		System.out.println("\nMessage Send Successfully!\n");

	}

	@Override
	public List<SalarySummaryOutDTO> processTimeKeepingMail(String month) {
		List<SalarySummaryOutDTO> salarySummaryOutDTOs = salarySummaryService.findAllByMonth(month);
		for (SalarySummaryOutDTO salarySummaryOutDTO : salarySummaryOutDTOs) {
			UserDetailDTO userDetailDTO = userDetailService.findByOriginid(salarySummaryOutDTO.getUserid());
			this.sendTimeKeepingMail(userDetailDTO, salarySummaryOutDTO);
		}
		return salarySummaryOutDTOs;
	}

}
