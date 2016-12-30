package org.noodle.domain;

import java.util.Arrays;

public class RecipeImageVO {
	
	
	private Integer bno;
	private Integer ino;
	private Integer step;
	private String image;
	private String thumbnail;
	
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public Integer getIno() {
		return ino;
	}
	public void setIno(Integer ino) {
		this.ino = ino;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	@Override
	public String toString() {
		return "RecipeImageVO [bno=" + bno + ", ino=" + ino + ", step=" + step + ", image=" + image + ", thumbnail="
				+ thumbnail + "]";
	}
		
}
