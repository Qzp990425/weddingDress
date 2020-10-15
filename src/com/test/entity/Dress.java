package com.test.entity;

public class Dress {
	private Integer did;
	private String uuid;
	//婚纱名字
	private String name;
	//库存
	private Integer number;
	//婚纱简介
	private String introduction;
	//0-黑色  1-白色
	private Integer color;
	//上架时间
	private String time;
	
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Integer getColor() {
		return color;
	}
	public void setColor(Integer color) {
		this.color = color;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	
}
