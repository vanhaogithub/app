package com.bachkhoa.util;

import org.springframework.stereotype.Component;

@Component
public class StringUtils {

	public String floatToString(Float amount){
		String amountString = amount.toString();
		return amountString;
	}
}
