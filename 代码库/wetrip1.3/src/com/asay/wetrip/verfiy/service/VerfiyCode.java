package com.asay.wetrip.verfiy.service;
import org.springframework.stereotype.Service;

@Service
public class VerfiyCode {
	public boolean verfiyCode(String key,String code) {
		if(key.equals(code))
			return true;
		else
			return false;
	}
}


