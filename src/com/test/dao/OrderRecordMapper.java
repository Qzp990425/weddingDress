package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.OrderRecord;

@Repository
public interface OrderRecordMapper {
	
	List<OrderRecord> getAllOrderByStatus(Integer status);
	
	List<OrderRecord> getOrderByUid(Integer uid);
	
	Integer insertOrder(OrderRecord orderRecord);
	
	Integer updateOrder(OrderRecord orderRecord);
	
	Integer finishOrder(OrderRecord orderRecord);
}
