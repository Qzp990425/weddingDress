package com.test.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.AdminMapper;
import com.test.dao.DressMapper;
import com.test.dao.OrderRecordMapper;
import com.test.dao.RegionMapper;
import com.test.dao.UserMapper;
import com.test.entity.Dress;
import com.test.entity.OrderRecord;
import com.test.service.OrderRecordService;
import com.test.utils.Util;

@Service
public class OrderRecordServiceImpl implements OrderRecordService{
	
	@Autowired
	OrderRecordMapper orderRecordMapper;
	@Autowired
	RegionMapper regionMapper;
	@Autowired
	DressMapper dressMapper;
	@Autowired
	UserMapper userMapper;
	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public PageInfo<OrderRecord> getAllOrderByStatus(Integer status, Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<OrderRecord> list = orderRecordMapper.getAllOrderByStatus(status);
		list = readyList(list);
		return new PageInfo<>(list);
	}

	@Override
	public PageInfo<OrderRecord> getOrderByUid(Integer uid,Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<OrderRecord> list = orderRecordMapper.getOrderByUid(uid);
		list = readyList(list);
		return new PageInfo<>(list);
	}

	@Override
	public boolean insertOrder(OrderRecord orderRecord,Integer[] rid) {
		// TODO Auto-generated method stub
		Dress dress = dressMapper.getDressByDid(orderRecord.getDid());
		if(dress.getNumber() > 0 ) {
			StringBuffer place = new StringBuffer();
			for(int i = 0 ; i < rid.length ; i++) {
				if(i != (rid.length - 1)) {
					place.append(regionMapper.getRegionByRid(rid[i]).getName()+",");
				} else {
					place.append(regionMapper.getRegionByRid(rid[i]).getName());
				}
			}
			orderRecord.setPlace(place.toString());
			System.out.println(rid.length);
			orderRecord.setNumber(rid.length);		
			Integer result = orderRecordMapper.insertOrder(orderRecord);
			if(result == 1) {
				dress.setNumber(dress.getNumber()-1);
				dressMapper.updateNum(dress);
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	@Override
	public boolean insertOrder(OrderRecord orderRecord) {
		Dress dress = dressMapper.getDressByDid(orderRecord.getDid());
		if(dress.getNumber() > 0 ) {
			orderRecord.setPlace(null);
			orderRecord.setNumber(0);		
			Integer result = orderRecordMapper.insertOrder(orderRecord);
			if(result == 1) {
				dress.setNumber(dress.getNumber()-1);
				dressMapper.updateNum(dress);
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
	
	public List<OrderRecord> readyList(List<OrderRecord> list) {
		for(OrderRecord orderRecord : list) {
			orderRecord.setDress(dressMapper.getDressByDid(orderRecord.getDid()));
			if(orderRecord.getAid() != null) {
				orderRecord.setAdmin(adminMapper.getAdminByAid(orderRecord.getAid()));
			}
			orderRecord.setUser(userMapper.getUserByUid(orderRecord.getUid()));
		}
		return list;
	}

	@Override
	public boolean preOrder(OrderRecord orderRecord) {
		Integer result = orderRecordMapper.updateOrder(orderRecord);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	
	@Override
	public boolean finishOrder(OrderRecord orderRecord) {
		orderRecord.setEndTime(Util.formatDateNow(new Date()));
		Integer result = orderRecordMapper.finishOrder(orderRecord);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}
}
