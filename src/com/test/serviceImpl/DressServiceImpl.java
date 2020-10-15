package com.test.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.DressMapper;
import com.test.entity.Dress;
import com.test.service.DressService;
import com.test.utils.Util;

@Service
public class DressServiceImpl implements DressService{
	
	@Autowired
	DressMapper dressMapper;

	@Override
	public boolean insertDress(Dress dress) {
		// TODO Auto-generated method stub
		dress.setTime(Util.formatDate(new Date()));
		Integer result = dressMapper.insertDress(dress);
		if(result == 1 ){
			return true;
		} else {
			return false;
		}
	}

	@Override
	public PageInfo<Dress> getAllDress(Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<Dress> list = dressMapper.getAllDress();
		// TODO Auto-generated method stub
		return new PageInfo<Dress>(list);
	}

	@Override
	public PageInfo<Dress> getAllDressByColor(Integer color,Integer pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 4);
		List<Dress> list = dressMapper.getAllDressByColor(color);
		return new PageInfo<Dress>(list);
	}

	@Override
	public boolean deleteDress(Integer did) {
		// TODO Auto-generated method stub
		Integer result = dressMapper.deleteDress(did);
		if(result == 1 ){
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Dress getDressByDid(Integer did) {
		// TODO Auto-generated method stub
		return dressMapper.getDressByDid(did);
	}

	@Override
	public boolean updateNum(Dress dress) {
		// TODO Auto-generated method stub
		dress.setNumber(dress.getNumber()-1);
		Integer result = dressMapper.updateNum(dress);
		if(result == 1){
			return true;
		} else {
			return false;
		}
	}
}
