package com.test.entity;

public class Place {
	private Integer pid;
	private Integer rid;
	private String picture;
	
	private Region region;
	
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public Region getRegion() {
		return region;
	}
	public void setRegion(Region region) {
		this.region = region;
	}
	@Override
	public String toString() {
		return "Place [pid=" + pid + ", rid=" + rid + ", picture=" + picture + "]";
	}
	
	
}
