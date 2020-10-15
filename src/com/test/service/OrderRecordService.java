package com.test.service;


import com.github.pagehelper.PageInfo;
import com.test.entity.OrderRecord;

public interface OrderRecordService {
	
	PageInfo<OrderRecord> getAllOrderByStatus(Integer status,Integer pageNum);
	
	PageInfo<OrderRecord> getOrderByUid(Integer uid,Integer pageNum);
	
	boolean insertOrder(OrderRecord orderRecord,Integer[] rid);
	
	boolean insertOrder(OrderRecord orderRecord);
	
	boolean preOrder(OrderRecord orderRecord);
	
	boolean finishOrder(OrderRecord orderRecord);
}
