package com.test.service;


import com.github.pagehelper.PageInfo;
import com.test.entity.Dress;

public interface DressService {

	//插入婚纱
	boolean insertDress(Dress dress);
	
	//得到所有婚纱
	PageInfo<Dress> getAllDress(Integer pageNum);
	
	//根据颜色获得对应婚纱
	PageInfo<Dress> getAllDressByColor(Integer color,Integer pageNum);
	
	//删除婚纱
	boolean deleteDress(Integer did);
	
	//根据did得到婚纱所有信息
	Dress getDressByDid(Integer did);
	
	//购买后数量减一
	boolean updateNum(Dress dress);
}
