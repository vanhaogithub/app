package com.bachkhoa.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class Encoder {
	private PasswordEncoder encoder = new BCryptPasswordEncoder();

	public String createHashPassword(String password) {
		String passHash = encoder.encode(password);
		return passHash;
	}

	public boolean checkCorectPassword(String password, String passwordHash) {
		boolean result = encoder.matches(password, passwordHash);
		return result;
	}
}
