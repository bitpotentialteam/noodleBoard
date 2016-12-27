package org.noodle.domain;

public class RecipeRegistVO {
	
	private int bno;
	private int ino;
	private String image;
	private String thumbnail;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
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
		return "RecipeRegistVO [bno=" + bno + ", ino=" + ino + ", image=" + image + ", thumbnail=" + thumbnail + "]";
	}
	
	
}
