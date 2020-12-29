package com.bachkhoa.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class DateUtils {

	public Date stringToDate(String text) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			String[] parts = text.split("/");
			String dateText = parts[1] + "-" + parts[0] + "-01";
			date = sdf.parse(dateText);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
}
