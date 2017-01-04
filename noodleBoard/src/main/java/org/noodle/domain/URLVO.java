package org.noodle.domain;

public class URLVO {

	
	private Integer mno;
	private Integer uno;
	private String url;
	
	
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
	}
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "URLVO [mno=" + mno + ", uno=" + uno + ", url=" + url + "]";
	}
	
}