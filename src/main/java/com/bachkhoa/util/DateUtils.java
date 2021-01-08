package com.bachkhoa.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.bachkhoa.constant.SystemConstant;

@Component
public class DateUtils {

	// input 10/2020
	// output 2020-10-01
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

	// input 2020-10-01
	// output 2020-11-01
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

	// output 2020-10-10 00:00:00
	public Date getStartDay(Date date) {
		Date startDay = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			startDay = sdf.parse(sdf.format(date).substring(0, 10));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return startDay;
	}

	public Date getNextDay(Date date) {
		Date nextday = null;
		final Calendar calendar = Calendar.getInstance();
		calendar.setTime(this.getStartDay(date));
		calendar.add(Calendar.DAY_OF_YEAR, 1);
		nextday = calendar.getTime();
		return nextday;
	}
	
	public Date getFinalWorkTime(Date date, String finalTime) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String text = sdf.format(date).substring(0, 10) + finalTime;
		Date finalWorkTime = null;
		try {
			finalWorkTime = sdf.parse(text);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return finalWorkTime;
	}

	public Double getHours(Date loginDate, Date startWorkDate) {
		Double hours = (double) (loginDate.getTime() - startWorkDate.getTime());
		hours = hours / (60 * 60 * 1000);
		return hours;
	}
	
	public Double getActualWorkTime(Date startTime, Date endTime){
		Double timeWork = (double) 0;
		Date startWorkTime = this.getFinalWorkTime(startTime, SystemConstant.START_WORK_TIME);
		Date endWorkTime = this.getFinalWorkTime(startTime, SystemConstant.END_WORK_TIME);
		Date startRelaxWorkTime = this.getFinalWorkTime(startTime, SystemConstant.START_RELAX_WORK_TIME);
		Date endRelaxWorkTime = this.getFinalWorkTime(startTime, SystemConstant.END_RELAX_WORK_TIME);
		if (startTime.before(startWorkTime) && endTime.after(startWorkTime) && endTime.before(startRelaxWorkTime)) {
			timeWork = this.getHours(endTime, startWorkTime);
		} else if(startTime.before(startWorkTime) && endTime.before(endRelaxWorkTime) && endTime.after(startRelaxWorkTime)){
			timeWork = this.getHours(startRelaxWorkTime, startWorkTime);
		} else if(startTime.before(startWorkTime) && endTime.before(endWorkTime) && endTime.after(endRelaxWorkTime)){
			timeWork = this.getHours(endTime, startWorkTime) - 1;
		} else if(startTime.before(startWorkTime) && endTime.after(endWorkTime)){
			timeWork = this.getHours(endWorkTime, startWorkTime) - 1;
		} else if(startTime.after(startWorkTime) && startTime.before(startRelaxWorkTime) && endTime.after(startWorkTime) && endTime.before(startRelaxWorkTime)){
			timeWork = this.getHours(endTime, startTime);
		} else if(startTime.after(startWorkTime) && startTime.before(startRelaxWorkTime) && endTime.before(endRelaxWorkTime) && endTime.after(startRelaxWorkTime)){
			timeWork = this.getHours(startRelaxWorkTime, startTime);
		} else if(startTime.after(startWorkTime) && startTime.before(startRelaxWorkTime) && endTime.before(endWorkTime) && endTime.after(endRelaxWorkTime)){
			timeWork = this.getHours(endTime, startTime) - 1;
		} else if(startTime.after(startWorkTime) && startTime.before(startRelaxWorkTime) && endTime.after(endWorkTime)){
			timeWork = this.getHours(endWorkTime, startTime) - 1;
		} else if(startTime.after(startRelaxWorkTime) && startTime.before(endRelaxWorkTime) && endTime.before(endWorkTime) && endTime.after(endRelaxWorkTime)){
			timeWork = this.getHours(endTime, endRelaxWorkTime);
		} else if(startTime.after(startRelaxWorkTime) && startTime.before(endRelaxWorkTime) && endTime.after(endWorkTime)){
			timeWork = this.getHours(endWorkTime, endRelaxWorkTime);
		} else if(startTime.after(endRelaxWorkTime) && startTime.before(endWorkTime) && endTime.before(endWorkTime) && endTime.after(endRelaxWorkTime)){
			timeWork = this.getHours(endTime, startTime);
		} else if(startTime.after(endRelaxWorkTime) && startTime.before(endWorkTime) && endTime.after(endWorkTime)){
			timeWork = this.getHours(endWorkTime, startTime);
		}
		
		return timeWork;
	}
}
