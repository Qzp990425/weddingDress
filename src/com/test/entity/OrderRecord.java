package com.test.entity;

public class OrderRecord {
	//订单id
	private Integer oid;
	//用户id
	private Integer uid;
	//管理员id
	private Integer aid;
	//婚纱id
	private Integer did;
	//拍摄日期
	private String preTime;
	//结束日期
	private String endTime;
	//拍摄地点
	private String place;
	//摄影师名称
	private String name;
	//订单状态
	private Integer status;
	//场地数量
	private Integer number;
	
	
	private User user;
	private Admin admin;
	private Dress dress;
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getPreTime() {
		return preTime;
	}
	public void setPreTime(String preTime) {
		this.preTime = preTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Dress getDress() {
		return dress;
	}
	public void setDress(Dress dress) {
		this.dress = dress;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}	
	
}
