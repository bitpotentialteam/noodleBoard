package org.noodle.util;

import java.util.UUID;

public enum ClientUtils {
	
	INSTANCE;
	
	public String addUUID(Integer mno) {
		
		UUID uid = UUID.randomUUID();
		
		String client = mno.toString() +"_" + uid;
		
		return client;
	}

}
