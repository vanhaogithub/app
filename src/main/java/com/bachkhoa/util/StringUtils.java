package com.bachkhoa.util;

import java.text.NumberFormat;
import java.util.Locale;

import org.springframework.stereotype.Component;

@Component
public class StringUtils {

	public String doubleToString(Double amount) {
		String amountString = "0";
		if(amount != null){
			Locale localeEN = new Locale("en", "EN");
			NumberFormat en = NumberFormat.getInstance(localeEN);
			amountString = en.format(amount);
		}
		
		return amountString;
	}
}
