package com.bachkhoa.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {
	
	/**
	 * @param message
	 * @return
	 */
	public Map<String, String> getMessage(String message) {
		Map<String, String> result = new HashMap<>();
		if (message.equals("update_success")) {
			result.put("message", "Update success");
			result.put("alert", "success");
		} else if (message.equals("insert_success")) {
			result.put("message", "Insert success");
			result.put("alert", "success");
		} else if (message.equals("delete_success")) {
			result.put("message", "Delete success");
			result.put("alert", "success");
		} else if (message.equals("error_system")) {
			result.put("message", "Error system");
			result.put("alert", "danger");
		}else if (message.equals("work_late")) {
			result.put("message", "Ban da di lam tre!");
			result.put("alert", "danger");
		}else if (message.equals("send_mail_success")) {
			result.put("message", "Send mail success!");
			result.put("alert", "success");
		}else if (message.equals("send_mail_error")) {
			result.put("message", "Send mail error!");
			result.put("alert", "danger");
		}else if (message.equals("timeKeeping_success")) {
			result.put("message", "TimeKeeping success!");
			result.put("alert", "success");
		}else if (message.equals("timeKeeping_error")) {
			result.put("message", "TimeKeeping error!");
			result.put("alert", "danger");
		}

		return result;
	}
}
