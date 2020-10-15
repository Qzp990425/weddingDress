package com.test.service;

import com.github.pagehelper.PageInfo;
import com.test.entity.Notice;

public interface NoticeService {
	
	PageInfo<Notice> getMyNotice(Integer uid,Integer pageNum);
	
	PageInfo<Notice> getAllNotice(Integer pageNum);
	
	boolean addNotice(Notice notice);
	
	boolean deleteNotice(Integer nid);
}
