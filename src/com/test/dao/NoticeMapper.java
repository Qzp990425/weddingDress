package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.Notice;

@Repository
public interface NoticeMapper {
	
	List<Notice> getMyNotice(Integer uid);
	
	List<Notice> getAllNotice();
	
	Integer addNotice(Notice notice);
	
	Integer deleteNotice(Integer nid);
}
