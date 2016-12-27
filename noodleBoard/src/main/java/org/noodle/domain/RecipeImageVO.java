package org.noodle.domain;

public class RecipeImageVO {
	
	
	private int bno;
	private int ino;
	private int order;
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
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
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
		return "RecipeImageVO [bno=" + bno + ", ino=" + ino + ", order=" + order + ", image=" + image + ", thumbnail="
				+ thumbnail + "]";
	}
	
}
