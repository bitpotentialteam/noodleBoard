package org.noodle.domain;

public class ClientVO {

	
	private String UUID_ID;
	private String UUID_PW;
	
	
	public String getUUID_ID() {
		return UUID_ID;
	}
	public void setUUID_ID(String uUID_ID) {
		UUID_ID = uUID_ID;
	}
	public String getUUID_PW() {
		return UUID_PW;
	}
	public void setUUID_PW(String uUID_PW) {
		UUID_PW = uUID_PW;
	}
	@Override
	public String toString() {
		return "ClientVO [UUID_ID=" + UUID_ID + ", UUID_PW=" + UUID_PW + "]";
	}
	
}
