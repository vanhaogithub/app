package com.bachkhoa.util;

import org.springframework.stereotype.Component;

@Component
public class StringUtils {

	public String floatToString(Float amount){
		Float a = (float) 1000000000;
		String amountString = amount.toString();
		return amountString;
	}
}
