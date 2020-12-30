package com.bachkhoa.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
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

	public Date getNextMonth(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date nextMonth = null;
		String next = sdf.format(date);
		String year = next.substring(0, 4);
		String month = next.substring(5, 7);
		String day = next.substring(8, 10);
		int y, m, d;
		if ("12".equals(month)) {
			try {
				y = Integer.parseInt(year);
				y++;
				m = Integer.parseInt("01");
				d = Integer.parseInt(day);
				LocalDate localDate = LocalDate.of(y, m, d);
				String str = localDate.toString();
				nextMonth = sdf.parse(str.substring(0, 10));

			} catch (NumberFormatException e) {
				y = 10;
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			try {
				y = Integer.parseInt(year);
				m = Integer.parseInt(month);
				m++;
				d = Integer.parseInt(day);
				LocalDate localDate = LocalDate.of(y, m, d);
				String str = localDate.toString();
				nextMonth = sdf.parse(str.substring(0, 10));

			} catch (NumberFormatException e) {
				y = 10;
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

		return nextMonth;
	}
}
