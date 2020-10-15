package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.Dress;

@Repository
public interface DressMapper {
	
	//插入婚纱
	Integer insertDress(Dress dress);
	
	//得到所有婚纱
	List<Dress> getAllDress();
	
	//根据颜色获得对应婚纱
	List<Dress> getAllDressByColor(Integer color);
	
	//删除婚纱
	Integer deleteDress(Integer did);
	
	//根据did得到婚纱所有信息
	Dress getDressByDid(Integer did);
	
	//购买后数量减一
	Integer updateNum(Dress dress);
}
